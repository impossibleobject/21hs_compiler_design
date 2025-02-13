open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))


(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(*L: helpers*)
let rec zip (l1:'a list) (l2:'b list) : (('a * 'b) list) =
  begin match l1, l2 with
    | (h1::tl1), (h2::tl2) -> (h1, h2) :: (zip tl1 tl2)
    | _, [] -> []
    | [], _ -> []
  end

let all (p: ('a -> bool)) (ls: 'a list) : bool =
  let fold (acc:bool) (x:'a) : bool =
    (p x) && acc
  in
  List.fold_left fold true ls


(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce addition (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)
let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  let srtc = subtype_ref c in
  if(t1 = t2) then true
  else(
    begin match t1, t2 with
      | TRef rt1, TRef rt2 ->         srtc rt1 rt2
      | TRef rt1, TNullRef rt2 ->     srtc rt1 rt2
      | TNullRef rt1, TNullRef rt2 -> srtc rt1 rt2
      | _, _ -> false
    end
  )

(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
  if(t1 = t2) then true
  else
    begin match t1, t2 with
      | RStruct id1, RStruct id2 -> subtype_struct c id1 id2
      | RFun (tyl1, rt1), RFun (tyl2, rt2) -> subtype_fun c (tyl1, rt1) (tyl2, rt2)
      | _, _ -> false
    end 

and subtype_struct (c : Tctxt.t) (id1 : Ast.id) (id2 : Ast.id) : bool =
  (*F: doing width subtyping from lecture, so structs are subtypes if first n elements of struct 1
    are in the same order and have the same name and type as the n elements of struct 2 (see forum)*)
  let struct1 = Tctxt.lookup_struct id1 c in
  let struct2 = Tctxt.lookup_struct id2 c in 
  if(List.length struct2 > List.length struct1) then false
  else
    let tupl_ls = zip struct1 struct2 in
    all (fun (n1, n2) -> (n1.fieldName = n2.fieldName) && (n1.ftyp = n2.ftyp)) tupl_ls

and subtype_fun (c : Tctxt.t) ((tyl1, rt1) : ((Ast.ty list) * Ast.ret_ty)) ((tyl2, rt2) : 
((Ast.ty list) * Ast.ret_ty)) : bool =
    let lengths_match = ((List.length tyl1) = (List.length tyl2)) in
    if(lengths_match) then 
      let subtype_retty (rty1 : Ast.ret_ty) (rty2 : Ast.ret_ty) : bool =
        if(rty1 = rty2) then true
        else
          begin match rty1, rty2 with
            (*F: return types have to be in order*)
            | RetVal ty1, RetVal ty2 -> subtype c ty1 ty2
            | _, _ -> false
          end
      in
      let zipped_tylists = zip tyl2 tyl1 in (*L: arg types have to be flipped*)
      let fold_arg_types = all (fun (t1,t2) -> subtype c t1 t2) zipped_tylists in
      fold_arg_types && (subtype_retty rt1 rt2)
    else false
      
  

(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is 

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  begin match t with 
    | TInt -> ()
    | TBool -> ()
    | TRef rt -> typecheck_rty l tc rt
    | TNullRef rt -> typecheck_rty l tc rt
  end

and typecheck_rty (l : 'a Ast.node) (tc : Tctxt.t) (rt : Ast.rty) : unit =
  begin match rt with 
    | RString -> ()
    | RArray t -> typecheck_ty l tc t
    | RFun (tyl, retty) -> 
      let rec tycheck_list (ls:Ast.ty list) : unit =
        begin match ls with
        | [] -> ()
        | h::tl -> typecheck_ty l tc h; 
                   tycheck_list tl
        end
      in
      tycheck_list tyl;
      typecheck_ret_ty l tc retty
    | RStruct id -> 
      try ignore (lookup_struct id tc)
      with 
        | _ -> type_error l ("type: " ^ (Astlib.string_of_ty (TRef rt)) ^ " not well formed")
  end

and typecheck_ret_ty (l : 'a Ast.node) (tc : Tctxt.t) (rt : Ast.ret_ty) : unit =
  begin match rt with
    | RetVoid -> ()
    | RetVal ty -> typecheck_ty l tc ty 
  end

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oat.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)
let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  begin match e.elt with
  | CNull rty -> typecheck_ty e c (TRef rty);
                  (TNullRef rty)
  | CBool _ -> TBool
  | CInt _ -> TInt
  | CStr _ -> TRef RString
  | Id id -> 
    let lookup_id = Tctxt.lookup_option id c in
    begin match lookup_id with 
    | Some x -> x
    | None ->   type_error e ("typecheck_exp id: iden not found in ctxt")
    end
  | CArr (ty, ens) -> typecheck_ty e c ty;
    let type_ls = List.map (typecheck_exp c) ens in
    let find_nullref t : bool =
      begin match t with
      | TNullRef _ -> true
      | _ ->          false
      end in
    if (List.exists find_nullref type_ls) then 
      type_error e ("typecheck_exp carr: array is being init with null values, not allowed");
    let subtype_check = all (fun x -> (subtype c ty x)) type_ls in
    if (subtype_check) then TRef (RArray ty) 
    else type_error e ("typecheck_exp array: array elements not subtype of elem type")
  | NewArr (ty, en1, id, en2) -> typecheck_ty e c ty;
    let exp1_ty = typecheck_exp c en1 in
    if(exp1_ty <> TInt) then type_error e ("typecheck_exp newarray: length is not int");
    let ty_opt = lookup_option id c in
    begin match ty_opt with
    | Some x -> type_error e ("typecheck_exp newarray: aux variable already in scope")
    | None -> 
        let newc = Tctxt.add_local c id TInt in
        let exp2_ty = typecheck_exp newc en2 in
        if(subtype newc exp2_ty ty) then TRef (RArray ty)
        else type_error e ("typecheck_exp newarray: init value type is not subtype of elem type")
    end
  | Index (en1, en2) -> 
    let arr_ty = typecheck_exp c en1 in
    let ind_ty = typecheck_exp c en2 in
    if (ind_ty <> TInt) then type_error e ("typecheck_exp index: index value is not an int")
    else
      begin match arr_ty with
      | TRef (RArray t) -> t
      | _ -> type_error e ("typecheck_exp index: trying to index into non-array")
      end
  | Length en -> let arr_ty = typecheck_exp c en in
      begin match arr_ty with
      | TRef (RArray t) -> TInt
      | _ -> type_error e ("typecheck_exp length: trying to get length of non-array")
      end
  | CStruct (id, ls) -> typecheck_ty e c (TRef (RStruct id));
    let id_ls, en_ls = List.split ls in
    let type_ls = List.map (typecheck_exp c) en_ls in
    let id_ty_ls = zip id_ls type_ls in
    let field_ls = List.map (fun (str, ty) -> {fieldName=str; ftyp=ty}) id_ty_ls in
    let field_cmp (f1:Ast.field) (f2:Ast.field) : int =
      let name1 = f1.fieldName in
      let name2 = f2.fieldName in
      String.compare name1 name2 in
    let struct1 = List.sort field_cmp field_ls in (*list of fields*)
    let struct2 =
      let lookup_str = 
        begin match (Tctxt.lookup_struct_option id c) with
        | Some x -> x 
        | None -> type_error e ("typecheck_exp cstruct: struct iden not found in ctxt")
        end in
      List.sort field_cmp lookup_str in (*list of fields*)
    if(List.length struct1 <> List.length struct2) then 
      type_error e ("typecheck_exp cstruct: length of field list doesn't match definition in context");
    let subtype_check = all (fun (f1,f2) -> (f1.fieldName = f2.fieldName) && (subtype c f1.ftyp f2.ftyp)) (zip struct1 struct2) in
    if(subtype_check) then TRef (RStruct id)
    else type_error e ("typecheck_exp cstruct: field subtype check failed")
  | Proj (en, fld) -> 
    let str_ty = typecheck_exp c en in
    begin match str_ty with
    | TRef (RStruct id) -> 
      typecheck_ty en c str_ty; 
      let id_field =
        let field_ls = 
          begin match (Tctxt.lookup_struct_option id c) with
          | Some x -> x 
          | None -> type_error e ("typecheck_exp cstruct: struct iden not found in ctxt")
          end in
        List.find_opt (fun f -> f.fieldName = fld) field_ls in 
      begin match id_field with 
      | Some x -> x.ftyp (*field was found in the list, give back the type from the record*)
      | None -> type_error e ("typecheck_exp proj: field not found in struct definition")
      end
    | _ -> type_error e ("typecheck_exp proj: trying to access field of non-struct")
    end
  | Call (func, ens) -> 
    let exp_ty_fun = typecheck_exp c func in
    let fun_tys, ret_ty = 
      begin match exp_ty_fun with
      | TRef (RFun (ty_ls, retty)) -> ty_ls,retty 
      | _ -> type_error e ("typecheck_exp call: func exp is not of type fun")
      end
    in
    let type_ls = List.map (typecheck_exp c) ens in
    if (List.length fun_tys <> List.length type_ls) then
      type_error e ("typecheck_exp call: num of args passed not same as args expected");
    let subtype_check = 
      let ty_fun_ls = zip type_ls fun_tys in
      all (fun (f,s) -> subtype c f s) ty_fun_ls in
    if(subtype_check) then 
      begin match ret_ty with 
      | RetVal t -> t 
      | RetVoid -> type_error e ("typecheck_exp call: void function should not return a type")
      end 
    else type_error e ("typecheck_exp call: arg list subtype check failed")
  | Bop (bop, en1, en2) -> 
    
    begin match bop with
    | (Eq | Neq) -> 
      let polymorphic_binop ((e1,e2):(exp node * exp node)) : Ast.ty =
        let t1 = typecheck_exp c e1 in
        let t2 = typecheck_exp c e2 in
        let subty_1 = subtype c t1 t2 in
        let subty_2 = subtype c t2 t1 in
        if (subty_1 && subty_2) then TBool 
        else type_error e ("typecheck_exp bop: polymorphic binop: types of args not comparable")
      in
      polymorphic_binop (en1,en2)
    | _ -> 
      let ty1, ty2, ret_ty = typ_of_binop bop in
      let en1_ty = typecheck_exp c en1 in
      let en2_ty = typecheck_exp c en2 in
      if(en1_ty=ty1 && en2_ty=ty2) then ret_ty
      else 
        type_error e ("typecheck_exp bop: types of binop args wrong")
    end
  | Uop (uop, en) -> 
    let ty1, ret_ty = typ_of_unop uop in
    let en_ty = typecheck_exp c en in
    if(en_ty = ty1) then ret_ty 
    else type_error e ("typecheck_exp uop: type of uop arg wrong")
  end
(* statements --------------------------------------------------------------- *)

(* Typecheck a statement 
   This function should implement the statement typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement)
     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, both branches must definitely return

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entire conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)
let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  begin match s.elt with
  | Assn (lhs, rhs) -> 
    let is_func_id =
      begin match lhs.elt with
      | Id id -> 
          let lookup_opt = Tctxt.lookup_global_option id tc in (*can overwrite global but not local with func*)
          let lookup_shadow_opt = Tctxt.lookup_local_option id tc in
          begin match lookup_opt with
          | None -> false
          | Some x -> 
            begin match x with
              | TRef (RFun (argtys, retty)) -> lookup_shadow_opt = None
              | _ ->                           false
            end
          end
      | _ -> false
      end in
    if(is_func_id) then type_error s ("typecheck_stmt: assn: lhs: is global func id");
    let lhs_ty = typecheck_exp tc lhs in
    let rhs_ty = typecheck_exp tc rhs in
    let subty_check = subtype tc rhs_ty lhs_ty in 
    if (subty_check) then (tc, false)
    else type_error s ("typecheck_stmt: assn: rhs type not subtype of lhs type")
  | Decl (id, en) -> 
    let id_in_ctxt = 
      let lookup_opt = Tctxt.lookup_local_option id tc in
      begin match lookup_opt with
      | None -> false
      | _ -> true
      end in
    if (id_in_ctxt) then
      type_error s ("typecheck_stmt: decl: var name already in use in scope");
    
    let new_ctxt = 
      let en_ty = typecheck_exp tc en in
      Tctxt.add_local tc id en_ty in
    (new_ctxt, false)
  | Ret en_opt -> 
    begin match en_opt with
    | None -> (tc, true)
    | Some x -> 
      let subty_check =
        let x_ty = typecheck_exp tc x in
        let unpacked_retty = 
          begin match to_ret with
          | RetVal t -> t 
          | _ -> type_error s ("typecheck_stmt: ret: return types mismatch, return val expected")
          end in
        subtype tc x_ty unpacked_retty in
      if(subty_check) then (tc, true)
      else type_error s ("typecheck_stmt: ret: subtype check of return exp failed")
    end
  | SCall (en, enls) -> 
    let arg_ty_ls, retty =
      let fun_ty = typecheck_exp tc en in
      begin match fun_ty with
      | TRef (RFun (ls, ry)) -> ls, ry (*F: ry here should by void*)
      | _ -> type_error s ("typecheck_stmt: scall: function id exp not of type func")
      end in
    if (retty<>RetVoid) then 
      type_error s ("typechecl_stmt: scall: function should be returning void"); 
    let en_ty_ls = List.map (typecheck_exp tc) enls in
    if (List.length arg_ty_ls <> List.length en_ty_ls) then 
      type_error s ("typecheck_stmt scall: num of args passed not same as args expected");
    let entys_subty_argtys = all (fun (f,s) -> subtype tc f s) (zip en_ty_ls arg_ty_ls) in
    if (entys_subty_argtys) then (tc, false)
    else type_error s ("typecheck_stmt: scall: subtype check of call arg exp types failed")
  | If (cond, if_stmts, else_stmts) -> 
    let cond_ty = typecheck_exp tc cond in
    if (cond_ty <> TBool) then type_error s ("typecheck_stmt: if: cond exp type is not bool");
    let _, if_ret = typecheck_block tc if_stmts to_ret in
    let _, else_ret = typecheck_block tc else_stmts to_ret in
    (tc, if_ret && else_ret)
  | For (vdecls, en_opt, stmt_opt, body) -> 
    let new_ctxt = List.fold_left (fun acc (id,en) -> Tctxt.add_local acc id (typecheck_exp acc en)) tc vdecls in
    let en_ty =
      begin match en_opt with
      | Some x -> typecheck_exp new_ctxt x
      | _ -> failwith "incomplete for-loop variant is not supported"
      end in
    if (en_ty <> TBool) then type_error s ("typecheck_stmt: for: loop cond not of type bool");
    let _, _ = 
      begin match stmt_opt with
      | Some x -> typecheck_stmt new_ctxt x to_ret
      | _ -> failwith "incomplete for-loop variant is not supported"
      end in
    let _, _ = typecheck_block new_ctxt body to_ret in 
    (tc, false)
  | While (en, body) -> 
    let en_ty = typecheck_exp tc en in 
    if (en_ty <> TBool) then type_error s ("typecheck_stmt: while: loop cond not of type bool");
    let _, _ = typecheck_block tc body to_ret in 
    (tc, false)
  | Cast (rty, id, en, if_stmts, else_stmts) -> (*F: assuming this is IfQ rule *)
    
    
    let subty_check =
      let unpacked_cond_ty = 
        let cond_ty = typecheck_exp tc en in
        begin match cond_ty with
        | TNullRef t -> TRef t 
        | TRef t -> cond_ty
        | _ -> type_error s ("typecheck_stmt: cast: ifq cond exp not ref type")
        end in
      subtype tc unpacked_cond_ty (TRef rty) in
    if(not subty_check) then 
      type_error s ("typecheck_stmt: cast: subtype check of ref type of exp failed");
    let if_ctxt = Tctxt.add_local tc id (TRef rty) in
    let _, if_ret = typecheck_block if_ctxt if_stmts to_ret in
    let _, else_ret = typecheck_block tc else_stmts to_ret in
    (tc, if_ret && else_ret)
  end

and typecheck_block (tc : Tctxt.t) (block : Ast.block) (to_ret:ret_ty) : Tctxt.t * bool =
  let fold_func ((ctxt, retb):(Tctxt.t * bool list)) (stmt:Ast.stmt node) : Tctxt.t * bool list=
    let new_ctxt,stmt_retb = typecheck_stmt ctxt stmt to_ret in
    let new_retb = stmt_retb::retb in (*F: not sure if should be OR or AND*)
    (new_ctxt, new_retb)
  in
  let res_ctxt, res_bool_ls = List.fold_left fold_func (tc,[]) block in
  begin match res_bool_ls with
  | [] -> (res_ctxt, false)
  | _ -> (res_ctxt, List.hd res_bool_ls && all not (List.tl res_bool_ls))
  end 

(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("typecheck_tdecl: Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type)
    - checks that the function actually returns
*)
let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  let rec has_dup_args ls =
    begin match ls with
    | [] -> false
    | (h_ty, h_id) :: tl -> (List.exists (fun (t, id) -> id = h_id) tl) || has_dup_args tl
    end in
  if (has_dup_args f.args) then 
    type_error l ("typecheck_fdecl: func arg list of " ^ f.fname ^ " has duplicates");
  let arg_ctxt = 
    let args_to_ctxt (acc: Tctxt.t) ((ty,id) : (Ast.ty * Ast.id)) : Tctxt.t =
      Tctxt.add_local acc id ty 
    in
    List.fold_left args_to_ctxt tc f.args in
  let func_ctxt, returns = typecheck_block arg_ctxt f.body f.frtyp in (*F: if body does not return correct type, then error must be thrown in typecheck_block or _stmt*)
  if(returns) then () (*F: func definitely returns*)
  else
    type_error l ("typecheck_fdecl: func body of " ^ f.fname ^ " does not definitely return") 

(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'S'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'F' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can't mention other global values *)

  (*L: helpers for creating the different contexts*)
  let in_ctxt (ctxt:Tctxt.t) (decl:Ast.decl) : bool =
    let lookup_opt =
      begin match decl with
        | Gvdecl gdn ->
          let id = gdn.elt.name in
          Tctxt.lookup_option id ctxt
        | Gfdecl fdn ->
          let id = fdn.elt.fname in
          Tctxt.lookup_option id ctxt
        | Gtdecl tdn ->
          let id = fst tdn.elt in
          let field_list = Tctxt.lookup_struct_option id ctxt in
          if(field_list = None) then None 
          else Some TBool (*L: placeholder for type compat*)
      end in
    begin match lookup_opt with
      | None -> false
      | _ -> true
    end
  
  let typecheck_decl (ctxt:Tctxt.t) (decl:Ast.decl) : unit =
    begin match decl with
      | Gvdecl gdn -> failwith "not impl yet"
      | Gfdecl fdn -> let fd = fdn.elt in 
                      typecheck_fdecl ctxt fd fdn
      | Gtdecl tdn -> let (i, f) = tdn.elt in
                      typecheck_tdecl ctxt i f tdn
    end



let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
  let struct_ctxt =
    let struct_ls = 
      let is_tdecl (td:Ast.decl) : bool =
        begin match td with
        | Gtdecl t -> true
        | _ -> false
        end in
      (List.filter is_tdecl p) in (*F: list should contain only Gtdecls*)
    let add_struct old_ctxt gtd : Tctxt.t = 
      let tdn =
        begin match gtd with
        | Gtdecl t -> t 
        | _ -> failwith "create_struct_ctxt: element not gtdecl"
        end in
      let (i,f) = tdn.elt in 
      if (in_ctxt old_ctxt gtd) then type_error tdn ("struct is defined twice") 
      else Tctxt.add_struct old_ctxt i f
    in
    List.fold_left add_struct Tctxt.empty struct_ls in 
  struct_ctxt


let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let builtin_ctxt = 
    let builtin_to_ctxt (ctxt:Tctxt.t) ((id,fty):(Ast.id * Tctxt.fty)) : Tctxt.t =
      Tctxt.add_global ctxt id (TRef (RFun (fst fty, snd fty))) in (*L: no idea why this doesn't just accept fty*)
    List.fold_left builtin_to_ctxt tc builtins in
  
  let fdecl_ctxt = 
    let func_ls = 
      let is_fdecl (td:Ast.decl) : bool =
        begin match td with
        | Gfdecl t -> true
        | _ -> false
        end in
      (List.filter is_fdecl p) in (*F: should only contain Gfdecls*)
    let add_fdecl old_ctxt gfd : Tctxt.t =
      let fdn =
        begin match gfd with
        | Gfdecl t -> t 
        | _ -> failwith "create_struct_ctxt: element not gfdecl"
        end in
      let fd = fdn.elt in 
      let id, args, retty = fd.fname, fd.args, fd.frtyp in
      if (in_ctxt old_ctxt gfd) then
        type_error fdn ("func is defined twice")
      else
        let arg_tys, _ = List.split args in
        Tctxt.add_global old_ctxt id (TRef (RFun (arg_tys, retty)))
    in
    List.fold_left add_fdecl builtin_ctxt func_ls in
  fdecl_ctxt

let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let glob_ls =
    let is_gdecl (td:Ast.decl) : bool =
      begin match td with
      | Gvdecl t -> true
      | _ -> false
      end in
    (List.filter is_gdecl p) in (*F: should only contain Gfdecls*)

  let add_gdecl old_ctxt ggd : Tctxt.t = 
    let gdn =
      begin match ggd with
      | Gvdecl t -> t 
      | _ -> failwith "create_struct_ctxt: element not gfdecl"
      end in
    let gd = gdn.elt in 
    let id, init = gd.name, gd.init in
    if (in_ctxt old_ctxt ggd) then type_error gdn ("global is defined twice")
    else 
      (let init_ty = typecheck_exp tc init in (*F: tc is used instead of accumulator to limit other globals being ref in global declarations*)
      Tctxt.add_global old_ctxt id init_ty )
  in
  let ctxt = List.fold_left add_gdecl tc glob_ls in 
  ctxt

(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p
