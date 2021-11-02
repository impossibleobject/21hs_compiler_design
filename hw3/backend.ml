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

let compile_cnd_opp = function
| Ll.Eq  -> X86.Neq
| Ll.Ne  -> X86.Eq
| Ll.Slt -> X86.Ge
| Ll.Sle -> X86.Gt
| Ll.Sgt -> X86.Le
| Ll.Sge -> X86.Lt


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
let compile_operand (ctxt:ctxt) (dest:X86.operand) : Ll.operand -> ins =
  fun op ->
    begin match op with
      | Null    -> (Movq, [(Imm (Lit 0L)); dest])
      | Const c -> (Movq, [(Imm (Lit c)); dest])
      | Gid g   -> (Leaq, [Ind3(Lbl (Platform.mangle g), Rip); dest])
      | Id l    -> (Movq, [(lookup ctxt.layout l); dest] )
    end

(*L: did not get point of helper above, transformed it for our purposes*)
let transl_operand (ctxt:ctxt) : Ll.operand -> X86.operand =
  fun op ->
    begin match op with
      | Null    -> Imm (Lit 0L)
      | Const c -> Imm (Lit c)
      | Gid g   -> Ind3(Lbl (Platform.mangle g), Rip)
      | Id l    -> lookup ctxt.layout l
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

let arg_stack_setup (n : int) : operand =
  begin match n with
    | 0 -> Reg Rdi
    | 1 -> Reg Rsi
    | 2 -> Reg Rdx
    | 3 -> Reg Rcx
    | 4 -> Reg R08
    | 5 -> Reg R09
    | _ -> if(n<0) then failwith "can't locate negative arg"
           else let offset = Lit (Int64.of_int (((n-7)+2)*8)) in 
           Ind3 (offset, Rsp)
  end

(*F: do opposite of fdecl for args*)
let compile_call (ctxt:ctxt) ((rty, fn, args):(ty * Ll.operand * (ty * Ll.operand) list)) (uid:uid) : ins list =
  let num_args = List.length args in
  let top = transl_operand ctxt in
  let int_to_Imm i = Imm (Lit (Int64.of_int i)) in
  let num_ovfw = num_args - 6 in
  let use_stack = num_ovfw > 0 in
  let stack_setup = 
    let rec push_args (args: (ty * Ll.operand) list) : ins list = 
      begin match args with
        | [] -> []
        | h::tl -> (Pushq, [top (snd h)]) :: (push_args tl)
      end
    in
    let stack_args = 
      let rec drop a (h::tl) = 
        begin match a with
          | 0 -> h::tl
          | _ -> drop (a-1) tl
        end in
      if(not use_stack) then []
      (*L: have to reverse args on stack*)
      else List.rev (drop 6 args)
    in
    push_args stack_args in 

  let reg_setup = ref [] in
  let min (a:int) (b:int) : int = if(a<b) then a else b in
  for i=0 to ((min num_args 6)-1) do
    reg_setup := !reg_setup @ [(Movq, [top (snd (List.nth args i)); arg_stack_setup i])]
  done;
  let cleanup_stack = 
    if(use_stack) then [(Addq, [int_to_Imm (8*num_ovfw); Reg Rsp])]
    else []
  in
  let call_ins = 
    let unpack_Gid (Gid g) = Platform.mangle g in
    [(Callq, [Imm (Lbl (unpack_Gid fn))])] in
  (* let call_ins = [(Callq, [top fn])] in *)
  let write_return_val =
    begin match uid with
      | "" -> []
      | loc -> [(Movq, [Reg Rax; lookup ctxt.layout loc])]
    end
  in
  !reg_setup @ stack_setup @ call_ins @ cleanup_stack @ write_return_val


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
failwith "size_ty not implemented"




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
failwith "compile_gep not implemented"



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
  
  let binop (bop:bop) ((op1, op2):(Ll.operand * Ll.operand)) : X86.ins list =
    let dest = lookup ctxt.layout uid in 
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
     (Movq, [Reg Rax; dest])]
  in 
  begin match i with
    | Binop (bop, ty, op1, op2) -> binop bop (op1, op2)
    | Icmp  (cnd, ty, op1, op2) -> ((compile_operand ctxt (Reg R10)) op1) :: 
                                   (Movq, [Imm (Lit 0L); top (Id uid)]) ::
                                   (Cmpq, [top op2; Reg R10]) ::
                                   [(Set (compile_cnd cnd), [top (Id uid)])]
    | Call (ty, op, ls)         -> compile_call ctxt (ty, op, ls) uid
    | Alloca ty                 -> []
    | Store (ty, op1, op2)      -> ((compile_operand ctxt (Reg R10)) op1)::
                                   [(Movq, [Reg R10; top op2])]
    | Load (ty, op)             -> let dest = lookup ctxt.layout uid in
                                   ((compile_operand ctxt (Reg R10)) op)::
                                   [(Movq, [Reg R10; dest])]
    | Bitcast (ty1, op, ty2)    -> []
    | _ -> failwith "not implemented GEP "
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
  let fn_space = Imm (Lit (Int64.of_int (8 * (List.length ctxt.layout)))) in
  let stack_cleanup = [(Addq, [fn_space; Reg Rsp]);
                       (* (Movq, [Reg Rbp; Reg Rsp]); *)
                       (Popq, [Reg Rbp])] in
  begin match t with
    | Ret (Void, None)  -> stack_cleanup @ [(Retq, [])]
    | Ret (ty, Some op) -> ((compile_operand ctxt (Reg Rax)) op)::
                            (stack_cleanup @ [(Retq, [])])
    | Br lb             -> [(Jmp, [Imm (Lbl (mk_lbl fn lb))])]
    | Cbr (op, l1, l2)  -> ((compile_operand ctxt (Reg Rax)) op) ::
                           (Cmpq, [Imm (Lit 1L); Reg Rax]) ::
                           (J X86.Eq, [Imm (Lbl (mk_lbl fn l1))]) ::
                           [(Jmp, [Imm (Lbl (mk_lbl fn l2))])]
    | _ -> failwith "compile_terminator or vscode gets mad"
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
    List.append insls (compile_terminator fn ctxt term) in
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
    | 0 -> Reg Rdi
    | 1 -> Reg Rsi
    | 2 -> Reg Rdx
    | 3 -> Reg Rcx
    | 4 -> Reg R08
    | 5 -> Reg R09
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
  let length = List.length args in
  let rec get_params (layout : layout) (acc: int) : layout = 
    if(acc = length) then layout
    else get_params ((List.nth args acc,arg_put acc)::layout) (acc+1)
  in
  let rec get_locals ((cnt, acc): (int * layout)) (blk:block) : (int * layout) =
    let ils = blk.insns in
    begin match ils with
      | []      -> (cnt, acc) (*F: terminator uid left out, should not be problematic*)
      | (uid, i)::tl  -> 
        begin match i with
          | (Call (Void, _, _) | Store _) -> get_locals (cnt, acc) {insns = tl; term = blk.term}
          | _ ->  get_locals (cnt+1, acc @ [(uid, arg_put cnt)]) {insns = tl; term = blk.term}
        end
    end 
  in
  let entry_layout = get_locals (length, []) block in
  let fold_block = fun (c, a) (_, blk) -> get_locals (c, a) blk in 
  let local_vars = List.fold_left fold_block entry_layout lbled_blocks in
  (get_params [] 0) @ (snd local_vars)

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
  let nr_args = List.length f_param in
  let arg_space = Imm (Lit (Int64.of_int (8 * List.length layout))) in
  let rec args_from_layout (l:layout) (acc:int) : (ins list) =
    begin match l with
      | []    -> []
      | h::tl -> 
        if(acc = (nr_args)) then []
        else 
          if((nr_args-acc-1) >= 0 && (nr_args-acc-1) <= 5) then 
            (Movq, [arg_loc (nr_args-acc-1); lookup layout (fst h)])::
            (args_from_layout tl (acc+1))
          else 
            (Movq, [arg_loc (nr_args-acc-1); Reg R10])::
            (Movq, [Reg R10; lookup layout (fst h)]) :: 
            (args_from_layout tl (acc+1))  
    end
  in
  let args_on_stack = args_from_layout layout 0 in
  let stack_alloc = [(Pushq, [Reg Rbp]); (Movq, [Reg Rsp; Reg Rbp]); (Subq, [arg_space; Reg Rsp])] in
  let asm_entry = Text (stack_alloc @ args_on_stack @ (compile_block name ctxt entry)) in
  let elem_entry = [{lbl = name; global = true; asm = asm_entry}] in
  let compile_cfg_elem ((lbl, blk):(lbl * block)) : elem = 
    compile_lbl_block name lbl ctxt blk in
  let elem_cfg = List.map compile_cfg_elem body in 
  List.append elem_entry elem_cfg



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
