(* ll ir compilation -------------------------------------------------------- *)

open Ll
open X86

(* Overview ----------------------------------------------------------------- *)

(* We suggest that you spend some time understanding this entire file and
   how it fits with the compiler pipeline before making changes.  The suggested
   plan for implementing the compiler is provided on the project web page.
*)


(* helpers ------------------------------------------------------------------ *)

(* Map LL comparison operations to X86 condition codes *)
let compile_cnd = function
  | Ll.Eq  -> X86.Eq
  | Ll.Ne  -> X86.Neq
  | Ll.Slt -> X86.Lt
  | Ll.Sle -> X86.Le
  | Ll.Sgt -> X86.Gt
  | Ll.Sge -> X86.Ge


(* locals and layout -------------------------------------------------------- *)

(* One key problem in compiling the LLVM IR is how to map its local
   identifiers to X86 abstractions.  For the best performance, one
   would want to use an X86 register for each LLVM %uid.  However,
   since there are an unlimited number of %uids and only 16 registers,
   doing so effectively is quite difficult.  We will see later in the
   course how _register allocation_ algorithms can do a good job at
   this.

   A simpler, but less performant, implementation is to map each %uid
   in the LLVM source to a _stack slot_ (i.e. a region of memory in
   the stack).  Since LLVMlite, unlike real LLVM, permits %uid locals
   to store only 64-bit data, each stack slot is an 8-byte value.

   [ NOTE: For compiling LLVMlite, even i1 data values should be
   represented as a 8-byte quad. This greatly simplifies code
   generation. ]

   We call the datastructure that maps each %uid to its stack slot a
   'stack layout'.  A stack layout maps a uid to an X86 operand for
   accessing its contents.  For this compilation strategy, the operand
   is always an offset from %rbp (in bytes) that represents a storage slot in
   the stack.
*)

type layout = (uid * X86.operand) list

(* A context contains the global type declarations (needed for getelementptr
   calculations) and a stack layout. *)
type ctxt = { tdecls : (tid * ty) list
            ; layout : layout
            }

(* useful for looking up items in tdecls or layouts *)
let lookup m x = List.assoc x m


(*L: helper take, stupid it's not in list library*)
let rec take (i:int) (ls: 'a list) : 'a list = 
  begin match i with
    | 0 -> []
    | i -> begin match ls with
            | [] -> []
            | h::tl -> h :: take (i-1) tl
           end
  end

(*L: helper to drop from list if list empty just returns empty*)
let rec drop (i:int) (ls:'a list) : 'a list = 
begin match i with
  | 0 -> ls
  | _ -> 
    begin match ls with
      | []    -> []
      | h::tl -> drop (i-1) tl
    end
end

let reg_move (src:X86.operand) (dest:X86.operand) : ins list = 
  [(Movq, [src; Reg R09]); (Movq, [Reg R09; dest])]

let int_to_imm (i:int) : X86.operand = Imm (Lit (Int64.of_int i))

let min (a:int) (b:int) : int = if(a<=b) then a else b

let sum (ls:'a list) : int = List.fold_left (+) 0 ls

(* compiling operands  ------------------------------------------------------ *)


(* LLVM IR instructions support several kinds of operands.

   LL local %uids live in stack slots, whereas global ids live at
   global addresses that must be computed from a label.  Constants are
   immediately available, and the operand Null is the 64-bit 0 value.

     NOTE: two important facts about global identifiers:

     (1) You should use (Platform.mangle gid) to obtain a string
     suitable for naming a global label on your platform (OS X expects
     "_main" while linux expects "main").

     (2) 64-bit assembly labels are not allowed as immediate operands.
     That is, the X86 code: movq _gid %rax which looks like it should
     put the address denoted by _gid into %rax is not allowed.
     Instead, you need to compute an %rip-relative address using the
     leaq instruction:   leaq _gid(%rip).

   One strategy for compiling instruction operands is to use a
   designated register (or registers) for holding the values being
   manipulated by the LLVM IR instruction. You might find it useful to
   implement the following helper function, whose job is to generate
   the X86 instruction that moves an LLVM operand into a designated
   destination (usually a register).
*)
let transl_operand (ctxt:ctxt) : Ll.operand -> X86.operand =
  fun op ->
    begin match op with
      | Null    -> Imm (Lit 0L)
      | Const c -> Imm (Lit c)
      | Gid g   -> Ind3(Lbl (Platform.mangle g), Rip)
      | Id l    -> lookup ctxt.layout l
    end
  
let compile_operand (ctxt:ctxt) (dst:X86.operand) : Ll.operand -> ins =
  fun op ->
    let src = transl_operand ctxt op in
    begin match op with
      | Gid g -> (Leaq, [src;dst])
      | _     -> (Movq, [src;dst])
    end




(* compiling call  ---------------------------------------------------------- *)

(* You will probably find it helpful to implement a helper function that
   generates code for the LLVM IR call instruction.

   The code you generate should follow the x64 System V AMD64 ABI
   calling conventions, which places the first six 64-bit (or smaller)
   values in registers and pushes the rest onto the stack.  Note that,
   since all LLVM IR operands are 64-bit values, the first six
   operands will always be placed in registers.  (See the notes about
   compiling fdecl below.)

   [ NOTE: It is the caller's responsibility to clean up arguments
   pushed onto the stack, so you must free the stack space after the
   call returns. ]

   [ NOTE: Don't forget to preserve caller-save registers (only if
   needed). ]
*)

let reg_arg_cc (n : int) : operand =
  begin match n with
    | 0 -> Reg Rdi
    | 1 -> Reg Rsi
    | 2 -> Reg Rdx
    | 3 -> Reg Rcx
    | 4 -> Reg R08
    | 5 -> Reg R09
    | _ -> failwith "arg is not a reg"
  end

(*F: do opposite of fdecl for args*)
let compile_call (ctxt:ctxt) ((rty, fn, args):(ty * Ll.operand * (ty * Ll.operand) list)) (uid:uid option) : ins list =
  let top = transl_operand ctxt in
  let reg_setup =
    let arg_into_reg (i:int) (arg:(ty * Ll.operand)) : X86.ins =
      compile_operand ctxt (reg_arg_cc i) (snd arg) in
    List.mapi arg_into_reg (take 6 args)
  in
  let stack_setup = 
    let push_stack_arg = fun arg -> (Pushq, [top (snd arg)]) in
    let stack_args = (drop 6 args) in
    List.map push_stack_arg stack_args
  in
  let call_ins = [compile_operand ctxt (Reg R10) fn; Callq, [Reg R10]] in
  let write_return_val =
    begin match uid with
      | None     -> []
      | Some loc -> [(Movq, [Reg Rax; lookup ctxt.layout loc])]
    end
  in
  reg_setup @ stack_setup @ call_ins @ write_return_val


(* compiling getelementptr (gep)  ------------------------------------------- *)

(* The getelementptr instruction computes an address by indexing into
   a datastructure, following a path of offsets.  It computes the
   address based on the size of the data, which is dictated by the
   data's type.

   To compile getelementptr, you must generate x86 code that performs
   the appropriate arithmetic calculations.
*)

(* [size_ty] maps an LLVMlite type to a size in bytes.
    (needed for getelementptr)

   - the size of a struct is the sum of the sizes of each component
   - the size of an array of t's with n elements is n * the size of t
   - all pointers, I1, and I64 are 8 bytes
   - the size of a named type is the size of its definition

   - Void, i8, and functions have undefined sizes according to LLVMlite.
     Your function should simply return 0 in those cases
*)
let rec size_ty (tdecls:(tid * ty) list) (t:Ll.ty) : int =
  let rec_call = size_ty tdecls in
  begin match t with
    | (Void | I8 | Fun _) -> 0
    | (I1 | I64 | Ptr _)  -> 8
    | Array (i, t)        -> i * (rec_call t)
    | Namedt tid          -> rec_call (lookup tdecls tid)
    | Struct ls           -> sum (List.map rec_call ls)
  end




(* Generates code that computes a pointer value.

   1. op must be of pointer type: t*

   2. the value of op is the base address of the calculation

   3. the first index in the path is treated as the index into an array
     of elements of type t located at the base address

   4. subsequent indices are interpreted according to the type t:

     - if t is a struct, the index must be a constant n and it
       picks out the n'th element of the struct. [ NOTE: the offset
       within the struct of the n'th element is determined by the
       sizes of the types of the previous elements ]

     - if t is an array, the index can be any operand, and its
       value determines the offset within the array.

     - if t is any other type, the path is invalid

   5. if the index is valid, the remainder of the path is computed as
      in (4), but relative to the type f the sub-element picked out
      by the path so far
*)
let compile_gep (ctxt:ctxt) (op : Ll.ty * Ll.operand) (path: Ll.operand list) : ins list =
  let unpack_cnst (op:Ll.operand) : int = 
    begin match op with
      | Const n -> Int64.to_int n
      | _ -> failwith "compile_gep: tried to unpack non-const"
    end in
  
  let in_ty = begin match fst op with 
                | Ptr ty -> ty
                | _ -> failwith "not a pointer"
              end in
  let base_addr = compile_operand ctxt (Reg R11) (snd op) in
  let first_idx = 
    let idx_op = List.nth path 0 in
    unpack_cnst idx_op in 
  
  (*L: helpers that go through subtypes*)
  let trav_arr (op_curr:Ll.operand) (elem_ty:ty) : ins list =
    (compile_operand ctxt (Reg R10) op_curr) ::
    (Imulq, [int_to_imm (size_ty ctxt.tdecls elem_ty); Reg R10])::
    [(Addq, [Reg R10; Reg R11])]
  in
  let trav_struct (op_offset:Ll.operand) (types: ty list) : ins list =
    let offset =
      let offset_nr = unpack_cnst op_offset in
      let types_till_offset = take offset_nr types in 
      sum (List.map (size_ty ctxt.tdecls) types_till_offset) in
    [(Addq, [int_to_imm offset; Reg R11])]
  in
  
  let rec trav_path (rem_path: Ll.operand list) (curr_ty: ty) : ins list =
    begin match rem_path with
      | [] -> []
      | h::tl -> 
        begin match curr_ty with
          | (I1 | I8 | I64) -> 
            if(List.length tl > 0) then failwith "trav_path: Invalid path"
            else []
          | Namedt tid -> (* print_endline("trav_path, name tid: " ^ tid); *)
                          trav_path rem_path (lookup ctxt.tdecls tid)
          | Array (l, elem_type) -> trav_arr h elem_type @ trav_path tl elem_type
          | Struct tyls -> trav_struct h tyls @ trav_path tl (List.nth tyls (unpack_cnst h))
          | Ptr ty -> trav_path rem_path ty 
          | _ -> failwith "can't call gep on function or void"
        end
    end in 
  
  let idx_into_basetype : bool = (List.length path > 1) || (first_idx <> 0) in 
  begin match in_ty with 
    | (I1 | I8 | I64) -> if(idx_into_basetype) 
                           then failwith "Invalid path"
                         else [base_addr]
    | _               -> base_addr :: 
                         if(first_idx = 0) 
                          then (trav_path (drop 1 path) in_ty)
                         else trav_path path in_ty
    end
   
  
    
  



(* compiling instructions  -------------------------------------------------- *)

(* The result of compiling a single LLVM instruction might be many x86
   instructions.  We have not determined the structure of this code
   for you. Some of the instructions require only a couple of assembly
   instructions, while others require more.  We have suggested that
   you need at least compile_operand, compile_call, and compile_gep
   helpers; you may introduce more as you see fit.

   Here are a few notes:

   - Icmp:  the Setb instruction may be of use.  Depending on how you
     compile Cbr, you may want to ensure that the value produced by
     Icmp is exactly 0 or 1.

   - Load & Store: these need to dereference the pointers. Const and
     Null operands aren't valid pointers.  Don't forget to
     Platform.mangle the global identifier.

   - Alloca: needs to return a pointer into the stack

   - Bitcast: does nothing interesting at the assembly level
*)
let compile_insn (ctxt:ctxt) ((uid:uid), (i:Ll.insn)) : X86.ins list =
  let top = transl_operand ctxt in
  let dst = 
    begin match i with
      | (Icmp _ | Call _ | Store _) -> Imm (Lit 0L) (*L:placeholder*)
      | _                           -> lookup ctxt.layout uid
    end in
  let binop (bop:bop) ((op1, op2):(Ll.operand * Ll.operand)) : X86.ins list =
    let ins = 
      begin match bop with 
        | Add  -> Addq
        | Sub  -> Subq
        | Mul  -> Imulq
        | Shl  -> Shlq
        | Lshr -> Shrq
        | Ashr -> Sarq
        | And  -> Andq
        | Or   -> Orq
        | Xor  -> Xorq
      end in
    [compile_operand ctxt (Reg Rax) op1;
     (ins, [top op2; (Reg Rax)]);
     (Movq, [Reg Rax; dst])]
  in
  begin match i with
    | Binop (bop, ty, op1, op2) -> binop bop (op1, op2)
    | Icmp  (cnd, ty, op1, op2) -> ((compile_operand ctxt (Reg R10)) op1) :: 
                                   (Movq, [Imm (Lit 0L); top (Id uid)]) ::
                                   (Cmpq, [top op2; Reg R10]) ::
                                   [(Set (compile_cnd cnd), [top (Id uid)])]
    | Call (ty, op, ls)         -> begin match ty with
                                    | Void -> compile_call ctxt (ty, op, ls) None
                                    | _    -> compile_call ctxt (ty, op, ls) (Some uid)
                                   end
    | Alloca ty                 -> (Subq, [int_to_imm (size_ty ctxt.tdecls ty); Reg Rsp]) ::
                                   [(Movq, [Reg Rsp; dst])]
    | Store (ty, src, dst)      -> ((compile_operand ctxt (Reg R10)) src)::
                                   ((compile_operand ctxt (Reg R11)) dst)::
                                   [(Movq, [Reg R10; Ind2 R11])] 
    | Load (ty, op)             -> ((compile_operand ctxt (Reg R10)) op)::
                                   reg_move (Ind2 R10) dst
    | Bitcast (ty1, op, ty2)    -> ((compile_operand ctxt (Reg R10)) op)::
                                   [(Movq, [Reg R10; dst])]
    | Gep (ty, op, ls)          -> (compile_gep ctxt (ty, op) ls) @
                                   reg_move (Reg R11) dst
  end




(* compiling terminators  --------------------------------------------------- *)

(* prefix the function name [fn] to a label to ensure that the X86 labels are 
   globally unique . *)
let mk_lbl (fn:string) (l:string) = fn ^ "." ^ l

(* Compile block terminators is not too difficult:

   - Ret should properly exit the function: freeing stack space,
     restoring the value of %rbp, and putting the return value (if
     any) in %rax.

   - Br should jump

   - Cbr branch should treat its operand as a boolean conditional

   [fn] - the name of the function containing this terminator
*)
let compile_terminator (fn:string) (ctxt:ctxt) (t:Ll.terminator) : ins list =
  let stack_cleanup = (Movq, [Reg Rbp; Reg Rsp]) ::
                      [(Popq, [Reg Rbp])] in
  begin match t with
    | Ret (Void, None)  -> stack_cleanup @ [(Retq, [])]
    | Ret (ty, Some op) -> (compile_operand ctxt (Reg Rax) op)::
                           stack_cleanup @ [(Retq, [])]
    | Br lb             -> [(Jmp, [Imm (Lbl (mk_lbl fn lb))])]
    | Cbr (op, l1, l2)  -> (compile_operand ctxt (Reg Rax) op) ::
                           (Cmpq, [Imm (Lit 1L); Reg Rax]) ::
                           (J X86.Eq, [Imm (Lbl (mk_lbl fn l1))]) ::
                           [(Jmp, [Imm (Lbl (mk_lbl fn l2))])]
    | _ -> failwith "compile_terminator got wrong input"
  end
  
  


(* compiling blocks --------------------------------------------------------- *)

(* We have left this helper function here for you to complete. 
   [fn] - the name of the function containing this block
   [ctxt] - the current context
   [blk]  - LLVM IR code for the block
*)
let compile_block (fn:string) (ctxt:ctxt) (blk:Ll.block) : ins list =
  let instr_list ((insns, term):((uid * insn) list * terminator)) : X86.ins list = 
    let insls = List.concat (List.map (compile_insn ctxt) insns) in
    insls @ (compile_terminator fn ctxt term) in
  instr_list (blk.insns, snd blk.term)

let compile_lbl_block fn lbl ctxt blk : elem =
  let res = Asm.text (mk_lbl fn lbl) (compile_block fn ctxt blk) in
  res




(* compile_fdecl ------------------------------------------------------------ *)


(* This helper function computes the location of the nth incoming
   function argument: either in a register or relative to %rbp,
   according to the calling conventions.  You might find it useful for
   compile_fdecl.

   [ NOTE: the first six arguments are numbered 0 .. 5 ]
*)
let arg_loc (n : int) : operand =
  begin match n with
    | (0|1|2|3|4|5) -> reg_arg_cc n
    | _ -> if(n<0) then failwith "can't locate negative arg"
           (*L: official formula didn't account for return addr loc => 2 -> 3*)
           else let offset = Lit (Int64.of_int (((n-7)+3)*8)) in 
           Ind3 (offset, Rbp)
  end


(* We suggest that you create a helper function that computes the
   stack layout for a given function declaration.

   - each function argument should be copied into a stack slot
   - in this (inefficient) compilation strategy, each local id
     is also stored as a stack slot.
   - see the discussion about locals

*)

(*L: helper to find dest of args within callee stack frame*)
let arg_put (n:int) : X86.operand = 
  let imm = Lit (Int64.of_int ((n+1)*(-8))) in
  Ind3(imm, Rbp)

let stack_layout (args : uid list) ((block, lbled_blocks):cfg) : layout =
  let uids_from_block (blk:block) : uid list = 
    fst (List.split blk.insns) @ [fst blk.term] in
  let get_blocks (lbl_blks:(lbl * block) list) : block list = 
    snd (List.split lbl_blks) in
  let local_uids = List.concat (List.map uids_from_block (get_blocks lbled_blocks)) in 
  let uid_list = args @ uids_from_block block @ local_uids in
  let map_uids (i:int) (uid:uid) : (uid * X86.operand) =
    (uid, arg_put i) in
  List.mapi map_uids uid_list

(* The code for the entry-point of a function must do several things:

   - since our simple compiler maps local %uids to stack slots,
     compiling the control-flow-graph body of an fdecl requires us to
     compute the layout (see the discussion of locals and layout)

   - the function code should also comply with the calling
     conventions, typically by moving arguments out of the parameter
     registers (or stack slots) into local storage space.  For our
     simple compilation strategy, that local storage space should be
     in the stack. (So the function parameters can also be accounted
     for in the layout.)

   - the function entry code should allocate the stack storage needed
     to hold all of the local stack slots.
*)
let compile_fdecl (tdecls:(tid * ty) list) (name:string) ({f_ty; f_param; f_cfg }:fdecl) : prog =
  let layout = stack_layout f_param f_cfg in
  let ctxt = {tdecls = tdecls; layout = layout} in
  let entry, body = f_cfg in
  
  let elem_entry = 
    let stack_alloc = 
      let layout_space = int_to_imm (8 * List.length layout) in
      [(Pushq, [Reg Rbp]); (Movq, [Reg Rsp; Reg Rbp])
      ; (Subq, [layout_space; Reg Rsp])] in
    let args_on_stack = 
      let layout_args = take (List.length f_param) layout in
      let arg_on_stack (i:int) (arg:(uid * X86.operand)) : ins list =
        reg_move (arg_loc i) (lookup layout (fst arg)) in
      List.concat (List.mapi arg_on_stack layout_args) in
    let asm_entry = 
      Text (stack_alloc @ args_on_stack @ (compile_block name ctxt entry)) in
      {lbl = name; global = true; asm = asm_entry} in
  
  let elems_cfg =
    let compile_cfg_elem ((lbl, blk):(lbl * block)) : elem = 
      compile_lbl_block name lbl ctxt blk in
    List.map compile_cfg_elem body in 

  elem_entry :: elems_cfg



(* compile_gdecl ------------------------------------------------------------ *)
(* Compile a global value into an X86 global data declaration and map
   a global uid to its associated X86 label.
*)
let rec compile_ginit : ginit -> X86.data list = function
  | GNull     -> [Quad (Lit 0L)]
  | GGid gid  -> [Quad (Lbl (Platform.mangle gid))]
  | GInt c    -> [Quad (Lit c)]
  | GString s -> [Asciz s]
  | GArray gs | GStruct gs -> List.map compile_gdecl gs |> List.flatten
  | GBitcast (t1,g,t2) -> compile_ginit g

and compile_gdecl (_, g) = compile_ginit g


(* compile_prog ------------------------------------------------------------- *)
let compile_prog {tdecls; gdecls; fdecls} : X86.prog =
  let g = fun (lbl, gdecl) -> Asm.data (Platform.mangle lbl) (compile_gdecl gdecl) in
  let f = fun (name, fdecl) -> compile_fdecl tdecls name fdecl in
  (List.map g gdecls) @ (List.map f fdecls |> List.flatten)
