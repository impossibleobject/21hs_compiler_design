open Ll
open Llutil
open Ast

(* instruction streams ------------------------------------------------------ *)

(* As in the last project, we'll be working with a flattened representation
   of LLVMlite programs to make emitting code easier. This version
   additionally makes it possible to emit elements will be gathered up and
   "hoisted" to specific parts of the constructed CFG
   - G of gid * Ll.gdecl: allows you to output global definitions in the middle
     of the instruction stream. You will find this useful for compiling string
     literals
   - E of uid * insn: allows you to emit an instruction that will be moved up
     to the entry block of the current function. This will be useful for 
     compiling local variable declarations
*)

type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      (* hoisted entry block instructions *)

type stream = elt list
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let lift : (uid * insn) list -> stream = List.rev_map (fun (x,i) -> I (x,i))

(* Build a CFG and collection of global variable definitions from a stream *)
let cfg_of_stream (code:stream) : Ll.cfg * (Ll.gid * Ll.gdecl) list  =
    let gs, einsns, insns, term_opt, blks = List.fold_left
      (fun (gs, einsns, insns, term_opt, blks) e ->
        match e with
        | L l ->
           begin match term_opt with
           | None -> 
              if (List.length insns) = 0 then (gs, einsns, [], None, blks)
              else failwith @@ Printf.sprintf "build_cfg: block labeled %s has\
                                               no terminator" l
           | Some term ->
              (gs, einsns, [], None, (l, {insns; term})::blks)
           end
        | T t  -> (gs, einsns, [], Some (Llutil.Parsing.gensym "tmn", t), blks)
        | I (uid,insn)  -> (gs, einsns, (uid,insn)::insns, term_opt, blks)
        | G (gid,gdecl) ->  ((gid,gdecl)::gs, einsns, insns, term_opt, blks)
        | E (uid,i) -> (gs, (uid, i)::einsns, insns, term_opt, blks)
      ) ([], [], [], None, []) code
    in
    match term_opt with
    | None -> failwith "build_cfg: entry block has no terminator" 
    | Some term -> 
       let insns = einsns @ insns in
       ({insns; term}, blks), gs


(* compilation contexts ----------------------------------------------------- *)

(* To compile OAT variables, we maintain a mapping of source identifiers to the
   corresponding LLVMlite operands. Bindings are added for global OAT variables
   and local variables that are in scope. *)

module Ctxt = struct

  type t = (Ast.id * (Ll.ty * Ll.operand)) list
  let empty = []

  (* Add a binding to the context *)
  let add (c:t) (id:id) (bnd:Ll.ty * Ll.operand) : t = (id,bnd)::c

  (* Lookup a binding in the context *)
  let lookup (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    List.assoc id c

  (* Lookup a function, fail otherwise *)
  let lookup_function (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    match List.assoc id c with
    | Ptr (Fun (args, ret)), g -> Ptr (Fun (args, ret)), g
    | _ -> failwith @@ id ^ " not bound to a function"

  let lookup_function_option (id:Ast.id) (c:t) : (Ll.ty * Ll.operand) option =
    try Some (lookup_function id c) with _ -> None
  
end

(* compiling OAT types ------------------------------------------------------ *)

(* The mapping of source types onto LLVMlite is straightforward. Booleans and ints
   are represented as the corresponding integer types. OAT strings are
   pointers to bytes (I8). Arrays are the most interesting type: they are
   represented as pointers to structs where the first component is the number
   of elements in the following array.

   The trickiest part of this project will be satisfying LLVM's rudimentary type
   system. Recall that global arrays in LLVMlite need to be declared with their
   length in the type to statically allocate the right amount of memory. The 
   global strings and arrays you emit will therefore have a more specific type
   annotation than the output of cmp_rty. You will have to carefully bitcast
   gids to satisfy the LLVM type checker.
*)

let rec cmp_ty : Ast.ty -> Ll.ty = function
  | Ast.TBool  -> I1
  | Ast.TInt   -> I64
  | Ast.TRef r -> Ptr (cmp_rty r)

and cmp_rty : Ast.rty -> Ll.ty = function
  | Ast.RString  -> I8
  | Ast.RArray u -> Struct [I64; Array(0, cmp_ty u)]
  | Ast.RFun (ts, t) -> 
      let args, ret = cmp_fty (ts, t) in
      Fun (args, ret)

and cmp_ret_ty : Ast.ret_ty -> Ll.ty = function
  | Ast.RetVoid  -> Void
  | Ast.RetVal t -> cmp_ty t

and cmp_fty (ts, r) : Ll.fty =
  List.map cmp_ty ts, cmp_ret_ty r


let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Eq | Neq | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)

let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)




let mk_elt_l (l:string) : elt list = [L l]

let unpack_id (id_ll : Ll.operand) : Ll.uid =
  begin match id_ll with
    | Id id -> id
    | _     -> failwith "unpack_id did not get an id"
  end


(* Compiler Invariants

   The LLVM IR type of a variable (whether global or local) that stores an Oat
   array value (or any other reference type, like "string") will always be a
   double pointer.  In general, any Oat variable of Oat-type t will be
   represented by an LLVM IR value of type Ptr (cmp_ty t).  So the Oat variable
   x : int will be represented by an LLVM IR value of type i64*, y : string will
   be represented by a value of type i8**, and arr : int[] will be represented
   by a value of type {i64, [0 x i64]}**.  Whether the LLVM IR type is a
   "single" or "double" pointer depends on whether t is a reference type.

   We can think of the compiler as paying careful attention to whether a piece
   of Oat syntax denotes the "value" of an expression or a pointer to the
   "storage space associated with it".  This is the distinction between an
   "expression" and the "left-hand-side" of an assignment statement.  Compiling
   an Oat variable identifier as an expression ("value") does the load, so
   cmp_exp called on an Oat variable of type t returns (code that) generates a
   LLVM IR value of type cmp_ty t.  Compiling an identifier as a left-hand-side
   does not do the load, so cmp_lhs called on an Oat variable of type t returns
   and operand of type (cmp_ty t)*.  Extending these invariants to account for
   array accesses: the assignment e1[e2] = e3; treats e1[e2] as a
   left-hand-side, so we compile it as follows: compile e1 as an expression to
   obtain an array value (which is of pointer of type {i64, [0 x s]}* ).
   compile e2 as an expression to obtain an operand of type i64, generate code
   that uses getelementptr to compute the offset from the array value, which is
   a pointer to the "storage space associated with e1[e2]".

   On the other hand, compiling e1[e2] as an expression (to obtain the value of
   the array), we can simply compile e1[e2] as a left-hand-side and then do the
   load.  So cmp_exp and cmp_lhs are mutually recursive.  [[Actually, as I am
   writing this, I think it could make sense to factor the Oat grammar in this
   way, which would make things clearer, I may do that for next time around.]]

 
   Consider globals7.oat

   /--------------- globals7.oat ------------------ 
   global arr = int[] null;

   int foo() { 
     var x = new int[3]; 
     arr = x; 
     x[2] = 3; 
     return arr[2]; 
   }
   /------------------------------------------------

   The translation (given by cmp_ty) of the type int[] is {i64, [0 x i64}* so
   the corresponding LLVM IR declaration will look like:

   @arr = global { i64, [0 x i64] }* null

   This means that the type of the LLVM IR identifier @arr is {i64, [0 x i64]}**
   which is consistent with the type of a locally-declared array variable.

   The local variable x would be allocated and initialized by (something like)
   the following code snippet.  Here %_x7 is the LLVM IR uid containing the
   pointer to the "storage space" for the Oat variable x.

   %_x7 = alloca { i64, [0 x i64] }*                              ;; (1)
   %_raw_array5 = call i64*  @oat_alloc_array(i64 3)              ;; (2)
   %_array6 = bitcast i64* %_raw_array5 to { i64, [0 x i64] }*    ;; (3)
   store { i64, [0 x i64]}* %_array6, { i64, [0 x i64] }** %_x7   ;; (4)

   (1) note that alloca uses cmp_ty (int[]) to find the type, so %_x7 has 
       the same type as @arr 

   (2) @oat_alloc_array allocates len+1 i64's 

   (3) we have to bitcast the result of @oat_alloc_array so we can store it
        in %_x7 

   (4) stores the resulting array value (itself a pointer) into %_x7 

  The assignment arr = x; gets compiled to (something like):

  %_x8 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7     ;; (5)
  store {i64, [0 x i64] }* %_x8, { i64, [0 x i64] }** @arr       ;; (6)

  (5) load the array value (a pointer) that is stored in the address pointed 
      to by %_x7 

  (6) store the array value (a pointer) into @arr 

  The assignment x[2] = 3; gets compiled to (something like):

  %_x9 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7      ;; (7)
  %_index_ptr11 = getelementptr { i64, [0 x  i64] }, 
                  { i64, [0 x i64] }* %_x9, i32 0, i32 1, i32 2   ;; (8)
  store i64 3, i64* %_index_ptr11                                 ;; (9)

  (7) as above, load the array value that is stored %_x7 

  (8) calculate the offset from the array using GEP

  (9) store 3 into the array

  Finally, return arr[2]; gets compiled to (something like) the following.
  Note that the way arr is treated is identical to x.  (Once we set up the
  translation, there is no difference between Oat globals and locals, except
  how their storage space is initially allocated.)

  %_arr12 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr    ;; (10)
  %_index_ptr14 = getelementptr { i64, [0 x i64] },                
                 { i64, [0 x i64] }* %_arr12, i32 0, i32 1, i32 2  ;; (11)
  %_index15 = load i64, i64* %_index_ptr14                         ;; (12)
  ret i64 %_index15

  (10) just like for %_x9, load the array value that is stored in @arr 

  (11) calculate the array index offset

  (12) load the array value at the index 

*)

(* Global initialized arrays:

  There is another wrinkle: To compile global initialized arrays like in the
  globals4.oat, it is helpful to do a bitcast once at the global scope to
  convert the "precise type" required by the LLVM initializer to the actual
  translation type (which sets the array length to 0).  So for globals4.oat,
  the arr global would compile to (something like):

  @arr = global { i64, [0 x i64] }* bitcast 
           ({ i64, [4 x i64] }* @_global_arr5 to { i64, [0 x i64] }* ) 
  @_global_arr5 = global { i64, [4 x i64] } 
                  { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

*) 



(* Some useful helper functions *)

(* Generate a fresh temporary identifier. Since OAT identifiers cannot begin
   with an underscore, these should not clash with any source variables *)
let gensym : string -> string =
  let c = ref 0 in
  fun (s:string) -> incr c; Printf.sprintf "_%s%d" s (!c)

(* Amount of space an Oat type takes when stored in the satck, in bytes.  
   Note that since structured values are manipulated by reference, all
   Oat values take 8 bytes on the stack.
*)
let size_oat_ty (t : Ast.ty) = 8L

(* Generate code to allocate a zero-initialized array of source type TRef (RArray t) of the
   given size. Note "size" is an operand whose value can be computed at
   runtime *)
let oat_alloc_array (t:Ast.ty) (size:Ll.operand) : Ll.ty * operand * stream =
  let ans_id, arr_id = gensym "array", gensym "raw_array" in
  let ans_ty = cmp_ty @@ TRef (RArray t) in
  let arr_ty = Ptr I64 in
  ans_ty, Id ans_id, lift
    [ arr_id, Call(arr_ty, Gid "oat_alloc_array", [I64, size])
    ; ans_id, Bitcast(arr_ty, Id arr_id, ans_ty) ]

(*L: helper to determine if current operand is idx and has to be dereferenced*)
let unpack_op_if_idx (en:Ast.exp node) (ty: Ll.ty) (op: Ll.operand) : Ll.operand * stream =
  begin match en.elt with
    | Index _ -> let uid = gensym "idx_tmp" in
                  Id uid, [I (uid, Load (Ptr ty, op))]
    | _ -> op, [] 
  end
  

(* Compiles an expression exp in context c, outputting the Ll operand that will
   recieve the value of the expression, and the stream of instructions
   implementing the expression. 

   Tips:
   - use the provided cmp_ty function!

   - string literals (CStr s) should be hoisted. You'll need to make sure
     either that the resulting gid has type (Ptr I8), or, if the gid has type
     [n x i8] (where n is the length of the string), convert the gid to a 
     (Ptr I8), e.g., by using getelementptr.

   - use the provided "oat_alloc_array" function to implement literal arrays
     (CArr) and the (NewArr) expressions

*)

let rec cmp_exp (c:Ctxt.t) (exp:Ast.exp node) : Ll.ty * Ll.operand * stream =
  let map_bop (ast_bop:Ast.binop) : Ll.bop =
    begin match ast_bop with
      | Add -> Add
      | Sub -> Sub
      | Mul -> Mul
      | And | IAnd -> And
      | Or | IOr   -> Or
      | Shl -> Shl
      | Shr -> Lshr
      | Sar -> Ashr
      | _ -> failwith "cmp_exp: ast binop not bop"
    end in
  let map_cnd (ast_bop:Ast.binop) : Ll.cnd =
    begin match ast_bop with
      | Eq  -> Eq
      | Neq -> Ne
      | Lt  -> Slt
      | Lte -> Sle
      | Gt  -> Sgt
      | Gte -> Sge
      | _ -> failwith "cmp_exp: ast binop not cnd"
    end in
  
  begin match exp.elt with
    | CNull rty -> (cmp_rty rty, Null, [])
    | CBool b -> begin match b with
                  | true  -> (I1, Const 1L, [])
                  | false -> (I1, Const 0L, [])
                 end
    | CInt i -> (I64, Const i, [])
    | CStr s -> 
      let uid = gensym "cstr_loc" in
      let ty = Array (String.length s + 1, I8) in 
      let string_uid = gensym "cstr_glb" in
      let gdecl = (ty, GString s) in
      let stream = [G (string_uid, gdecl)] >@ [I (uid, Gep (Ptr ty, Gid string_uid, [Const 0L; Const 0L]))] in
      (Ptr I8, Id uid, stream)
    | CArr (ty, ens) ->
      let size = Const (Int64.of_int(List.length ens)) in
      let ret_ty, ret_op, ret_str = oat_alloc_array ty size in
      let stream =
        let trip_ls = 
          let make_triplets (en:Ast.exp node) : (Ll.ty * Ll.operand * stream) =
            let ty, raw_op, s_op = cmp_exp c en in
            let op, s_idx = unpack_op_if_idx en ty raw_op in
            (ty, op, s_op >@ s_idx) in
          List.map make_triplets ens in
        
        let elem_into_arr (i:int) ((ty, op, s):(Ll.ty * Ll.operand * stream)) : stream = 
          let uid = gensym ("CArr_elem_" ^ string_of_int i) in
          let idx = Const (Int64.of_int i) in
          s >@ [I (uid, Gep (ret_ty, ret_op, [Const 0L; Const 1L; idx]))] >@ 
          [I ("", Store (ty, op, Id uid))] in
        ret_str >@ List.concat (List.mapi elem_into_arr trip_ls) in
      (ret_ty, ret_op, stream)
    | NewArr (ty, en) ->
      let ty_int, op_raw, s_op = cmp_exp c en in
      let op, s_idx = unpack_op_if_idx en ty_int op_raw in
      let s = s_op >@ s_idx in
      let ret_ty, ret_op, ret_str = oat_alloc_array ty op in
      (ret_ty, ret_op, s >@ ret_str)
    | Id id -> let uid = gensym "id" in
               let ty, op = Ctxt.lookup id c in
               begin match ty, op with
                | Ptr (Struct ts), Gid id -> (ty, Id uid, [I (uid, Load (Ptr ty, op))])
                | Ptr t, Gid id -> (t,  Id uid, [I (uid, Load (ty, op))])
                | _             -> (ty, Id uid, [I (uid, Load (Ptr ty, op))])
               end
    | Index (en1, en2) -> 
      let ty1, op1_raw, s1_op = cmp_exp c en1 in 
      let op1, s1_idx = unpack_op_if_idx en1 ty1 op1_raw in
      let s1 = s1_op >@ s1_idx in
      let ty2, op2, s2 = cmp_exp c en2 in
      let uid = gensym "index_ptr" in

      let rec get_elem_ty (ty:Ll.ty) (acc:Ll.operand list) : (Ll.ty * Ll.operand list) =
        
        begin match ty with
          | Ptr t -> get_elem_ty t (acc @ [Const 0L])
          | Struct [I64 ; t] -> get_elem_ty t (acc @ [Const 1L])
          | Array (_, t) -> (t, acc)
          | _ -> failwith ("cmp_exp index, not well formed type" ^ string_of_ty ty)
        end in
      let elem_ty, idx_list = get_elem_ty ty1 [] in
      (elem_ty, Id uid, s1 >@ s2 >@ [I (uid, Gep (ty1, op1, idx_list @ [op2]))])
    | Call (en, ens) ->
      let id = 
        begin match en.elt with
          | Id id -> id
          | _     -> failwith "cmp_exp: call with wrong symbol"
        end in
      let fty, rop = Ctxt.lookup id c in
      let rty =
        begin match fty with
          | Ptr (Fun (arg_ts, rt)) -> rt
          | _ -> failwith ("cmp_exp: Call case " ^ id ^ " is not a proper function" ^ "\n its' type is: ")
        end in
      
      let arg_tuples = 
        let make_triplets (en:Ast.exp node) : (Ll.ty * Ll.operand * stream) =
          let ty, raw_op, s_op = cmp_exp c en in
          let op, s_idx = unpack_op_if_idx en ty raw_op in
          (ty, op, s_op >@ s_idx) in
        List.map make_triplets ens in
      let arg_tyops = List.map (fun (a, b, _) -> (a,b)) arg_tuples in
      let stream_ls = List.map (fun (_, _, c) -> c) arg_tuples in
      let retval_uid = gensym "Call_retval" in
      let stream = (List.concat stream_ls) >@ 
      [I (retval_uid, Call (rty, rop, arg_tyops))] in
      (rty, Id retval_uid, stream)
    | Bop (binop,en1,en2) -> 
      let uid = gensym "bop" in
      let a, b, ret = typ_of_binop binop in
      let ty1, raw_op1, s1_op = cmp_exp c en1 in
      let ty2, raw_op2, s2_op = cmp_exp c en2 in
      let op1, s1_idx = unpack_op_if_idx en1 ty1 raw_op1 in
      let op2, s2_idx = unpack_op_if_idx en2 ty2 raw_op2 in
      let insn = begin match binop with
                  | Eq | Neq | Lt | Lte | Gt | Gte -> 
                    Icmp (map_cnd binop, cmp_ty a, op1, op2)
                  | _ -> 
                    Binop (map_bop binop, cmp_ty a, op1, op2)
                 end in
      (cmp_ty ret, Id uid , (s1_op >@ s1_idx) >@ (s2_op >@ s2_idx) >@ [I (uid, insn)])                        
    | Uop (unop,en) -> 
      let uid = gensym "uop" in
      let ty, raw_op, s_op = cmp_exp c en in
      let op, s_idx = unpack_op_if_idx en ty raw_op in
      let s = s_op >@ s_idx in
      begin match unop with 
        | Neg    -> (ty, Id uid, s >@ [I (uid, Binop (Sub, ty, Const 0L, op))])
        | Lognot -> (ty, Id uid, s >@ [I (uid, Icmp (Eq, ty, Const 0L, op))])
        | Bitnot -> (ty, Id uid, s >@ [I (uid, Binop (Xor, ty, op, Const (-1L)))])
      end
    end

(* Compile a statement in context c with return typ rt. Return a new context, 
   possibly extended with new local bindings, and the instruction stream
   implementing the statement.

   Left-hand-sides of assignment statements must either be OAT identifiers,
   or an index into some arbitrary expression of array type. Otherwise, the
   program is not well-formed and your compiler may throw an error.

   Tips:
   - for local variable declarations, you will need to emit Allocas in the
     entry block of the current function using the E() constructor.

   - don't forget to add a bindings to the context for local variable 
     declarations
   
   - you can avoid some work by translating For loops to the corresponding
     While loop, building the AST and recursively calling cmp_stmt

   - you might find it helpful to reuse the code you wrote for the Call
     expression to implement the SCall statement

   - compiling the left-hand-side of an assignment is almost exactly like
     compiling the Id or Index expression. Instead of loading the resulting
     pointer, you just need to store to it!

 *)

let rec cmp_stmt (c:Ctxt.t) (rt:Ll.ty) (stmt:Ast.stmt node) : Ctxt.t * stream =
  begin match stmt.elt with
    | Decl (id, en)   -> let uid = gensym id in
                         let ty, raw_op, s_op = cmp_exp c en in
                         let op, s_idx = unpack_op_if_idx en ty raw_op in
                         let s = s_op >@ s_idx in
                         let c_new = Ctxt.add c id (ty, Id uid) in
                         (c_new, s >@ [E (uid, Alloca ty)] >@ [I ("", Store (ty, op, Id uid))])
    | Assn (lhs, rhs) -> 
                         let ty2, op2_raw, s2_op = cmp_exp c rhs in
                         let op2, s2_idx = unpack_op_if_idx rhs ty2 op2_raw in
                         let s = s2_op >@ s2_idx in
                         let lhs_uid, lhs_op, s_lhs =
                          begin match lhs.elt with
                            | Index _ ->
                              let ty_op_s = cmp_exp c lhs in
                              
                              let ty1, idx_id_ll, s1_op = 
                                begin match ty_op_s with
                                  | _, Ll.Id idx_id, s1_op -> ty_op_s
                                  | _ -> failwith ""
                                end in
                               unpack_id idx_id_ll, idx_id_ll, s1_op
                            | Id id ->
                              let ty1, op1 = Ctxt.lookup id c in
                              begin match ty1, op1 with
                                | (Ptr ty, Gid g) -> g, Gid g, []
                                | (ty, Ll.Id i) -> i, Ll.Id i, []
                                | _ -> id, Ll.Id id, []
                              end
                            | _ -> failwith "cmp_stmt -> assn, got wrong lhs"
                          end in
                          c, s >@ s_lhs >@ [I (lhs_uid, Store (ty2, op2, lhs_op))]

    | Ret None    -> (c, [T (Ret (rt, None))])
    | Ret Some en -> let ty, op_raw, s_op = cmp_exp c en in
                     let op, s_idx = unpack_op_if_idx en ty op_raw in
                     let s = s_op >@ s_idx in
                     (c, s >@ [T (Ret (rt, Some op))])
    | If (ec, s_then, s_else) ->
      let ty, op_raw, s_op = cmp_exp c ec in
      let op, s_idx = unpack_op_if_idx ec ty op_raw in
      let s = s_op >@ s_idx in
      let then_lbl = gensym "then" in
      let else_lbl = gensym "else" in
      let done_lbl = gensym "end" in
      let then_blk =
        let _, then_blk_t = cmp_block c rt s_then in 
        then_blk_t >@ [T (Br (done_lbl))] in
      let else_blk = 
        let _, else_blk_t = cmp_block c rt s_else in
        else_blk_t >@ [T (Br (done_lbl))] in
      (c, s >@ [T (Cbr (op, then_lbl, else_lbl))] 
      >@ (mk_elt_l then_lbl)          
      >@ then_blk 
      >@ mk_elt_l else_lbl
      >@ else_blk 
      >@ mk_elt_l done_lbl)
    | While (ec, s_body) -> 
      let ty, op_raw, s_op = cmp_exp c ec in
      let op, s_idx = unpack_op_if_idx ec ty op_raw in
      let s = s_op >@ s_idx in
      let cnd = gensym "start" in
      let bdy = gensym "body" in
      let fin = gensym "end" in
      let _, body_s = cmp_block c rt s_body in 
      (c, [T (Br cnd)] >@ mk_elt_l cnd >@ s >@ [T (Cbr (op, bdy, fin))] >@ 
      mk_elt_l bdy >@ body_s >@ [T (Br cnd)] >@ mk_elt_l fin)
    | For (vdecls, check_o, update_o, bdy) ->
      let true_en = no_loc (CBool true) in
      let wc, wb =
        begin match check_o, update_o with
          | None, None     -> true_en, bdy
          | None, Some u   -> true_en, bdy @ [u]
          | Some c, None   -> c, bdy
          | Some c, Some u -> c, bdy @ [u]
        end in
      let decls = List.map (fun x -> no_loc (Decl x)) vdecls in
      let ctxt_w_vdecls, decl_s = cmp_block c rt decls in
      let _, s = cmp_stmt ctxt_w_vdecls rt (no_loc (While (wc, wb))) in
      c, s @ decl_s 
    | SCall (en, ens) ->
      let _, _, s = cmp_exp c (no_loc (Call (en, ens))) in
      (c, s)
  end

(* Compile a series of statements *)
and cmp_block (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code >@ stmt_code
    ) (c,[]) stmts



(* Adds each function identifer to the context at an
   appropriately translated type.  

   NOTE: The Gid of a function is just its source name
*)
let cmp_function_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gfdecl { elt={ frtyp; fname; args } } ->
         let ft = TRef (RFun (List.map fst args, frtyp)) in
         Ctxt.add c fname (cmp_ty ft, Gid fname)
      | _ -> c
    ) c p 

(* Populate a context with bindings for global variables 
   mapping OAT identifiers to LLVMlite gids and their types.

   Only a small subset of OAT expressions can be used as global initializers
   in well-formed programs. (The constructors starting with C). 
*)
let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
  let ty_from_expr (e: Ast.exp) : Ll.ty =
    begin match e with
      | CNull rty -> cmp_rty rty
      | CBool b -> cmp_ty TBool
      | CInt i  -> cmp_ty TInt
      | CStr s -> cmp_ty (TRef RString)
      | CArr (ty, ens) -> cmp_ty (TRef (RArray ty))
      | _ -> failwith "cmp_global_ctxt -> not ginit"
    end in

    let elem_into_ctxt (c:Ctxt.t) (d:Ast.decl) : Ctxt.t =
      begin match d with
        | Ast.Gvdecl {elt = {name; init}} ->
          Ctxt.add c name (Ptr (ty_from_expr init.elt), Gid name)
        | _ -> c
      end in
    List.fold_left elem_into_ctxt c p


(* Compile a function declaration in global context c. Return the LLVMlite cfg
   and a list of global declarations containing the string literals appearing
   in the function.

   You will need to
   1. Allocate stack space for the function parameters using Alloca
   2. Store the function arguments in their corresponding alloca'd stack slot
   3. Extend the context with bindings for function variables
   4. Compile the body of the function using cmp_block
   5. Use cfg_of_stream to produce a LLVMlite cfg from 
 *)

let cmp_fdecl (c:Ctxt.t) (f:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  let ast_fdecl = f.elt in
  
  let args = 
    let map_args ((ty, id):(Ast.ty * Ast.id)) : (Ll.uid * Ll.ty * Ast.id) =
      (gensym id , cmp_ty ty, id) in
    List.map map_args ast_fdecl.args in
  let new_ctxt =
    let fold (c:Ctxt.t) ((lluid, llty, astid):(Ll.uid * Ll.ty * Ast.id)) : Ctxt.t = 
      Ctxt.add c astid (llty, Ll.Id lluid) in
    List.fold_left fold c args in
  let stream = 
    let fold (s:stream) ((lluid, llty, astid):(Ll.uid * Ll.ty * Ast.id)) : stream = 
      s >@ lift ([(lluid, Alloca llty); ("", Store (llty,(Id astid),(Id lluid)))]) in
    List.fold_left fold [] args in
  let rty = cmp_ret_ty ast_fdecl.frtyp in
  let ty_ls = List.map (fun x -> cmp_ty (fst x)) ast_fdecl.args in
  let id_ls = List.map snd ast_fdecl.args in 
  let new_ctxt, blk_str = cmp_block new_ctxt rty ast_fdecl.body in
  let cfg, gdecls = cfg_of_stream (stream >@ blk_str) in
  let fdecl = {f_ty = (ty_ls, rty); f_param = id_ls; f_cfg = cfg } in
  (fdecl, gdecls)


(* Compile a global initializer, returning the resulting LLVMlite global
   declaration, and a list of additional global declarations.

   Tips:
   - Only CNull, CBool, CInt, CStr, and CArr can appear as global initializers
     in well-formed OAT programs. Your compiler may throw an error for the other
     cases

   - OAT arrays are always handled via pointers. A global array of arrays will
     be an array of pointers to arrays emitted as additional global declarations.
*)

let rec cmp_gexp c (e:Ast.exp node) : Ll.gdecl * (Ll.gid * Ll.gdecl) list =
  
  begin match e.elt with
    | CNull rty -> (Ptr (cmp_rty rty), GNull), []
    | CBool b -> begin match b with
                  | true  -> (I1, GInt 1L), []
                  | false -> (I1, GInt 0L), []
                  end
    | CInt i -> (I64, GInt i), []
    | CStr s -> 
      let ty_old = (Array (String.length s + 1, I8)) in
      let gdecl = (ty_old, GString s) in
      let gid_str = gensym "gstr" in
      let gdecl_new = (Ptr I8 ,GBitcast (Ptr ty_old, GGid gid_str, Ptr I8)) in
      (gdecl_new, [(gid_str, gdecl)])


    | CArr (ty, ens) -> 
      let subelems = List.map fst (List.map (cmp_gexp c) ens) in
      let elem_cnt = List.length ens in
      let array_ty = Array (elem_cnt, cmp_ty ty) in
      let struct_ty = Struct [I64; array_ty] in
      let gdecl = (struct_ty, GStruct [(I64, GInt (Int64.of_int elem_cnt)); (array_ty, GArray subelems)]) in
      let gid_garr = gensym "garr" in
      let final_ty = Struct [I64; Array (0, cmp_ty ty)] in
      let bitcast = (Ptr final_ty, GBitcast (Ptr struct_ty, GGid gid_garr, Ptr final_ty)) in
      (bitcast, [gid_garr, gdecl])
    | _      -> failwith "cmp_gexp not well formed OAT program, wrong init type"
  end


  


(* Oat internals function context ------------------------------------------- *)
let internals = [
    "oat_alloc_array",         Ll.Fun ([I64], Ptr I64)
  ]

(* Oat builtin function context --------------------------------------------- *)
let builtins =
  [ "array_of_string",  cmp_rty @@ RFun ([TRef RString], RetVal (TRef(RArray TInt)))
  ; "string_of_array",  cmp_rty @@ RFun ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", cmp_rty @@ RFun ([TRef RString],  RetVal TInt)
  ; "string_of_int",    cmp_rty @@ RFun ([TInt],  RetVal (TRef RString))
  ; "string_cat",       cmp_rty @@ RFun ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     cmp_rty @@ RFun ([TRef RString],  RetVoid)
  ; "print_int",        cmp_rty @@ RFun ([TInt],  RetVoid)
  ; "print_bool",       cmp_rty @@ RFun ([TBool], RetVoid)
  ]

(* Compile a OAT program to LLVMlite *)
let cmp_prog (p:Ast.prog) : Ll.prog =
  (* add built-in functions to context *)
  let init_ctxt = 
    List.fold_left (fun c (i, t) -> Ctxt.add c i (Ll.Ptr t, Gid i))
      Ctxt.empty builtins
  in
  let fc = cmp_function_ctxt init_ctxt p in

  (* build global variable context *)
  let c = cmp_global_ctxt fc p in

  (* compile functions and global variables *)
  let fdecls, gdecls = 
    List.fold_right (fun d (fs, gs) ->
        match d with
        | Ast.Gvdecl { elt=gd } -> 
           let ll_gd, gs' = cmp_gexp c gd.init in
           (fs, (gd.name, ll_gd)::gs' @ gs)
        | Ast.Gfdecl fd ->
           let fdecl, gs' = cmp_fdecl c fd in
           (fd.elt.fname,fdecl)::fs, gs' @ gs
      ) p ([], [])
  in

  (* gather external declarations *)
  let edecls = internals @ builtins in
  { tdecls = []; gdecls; fdecls; edecls }
