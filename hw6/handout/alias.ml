(** Alias Analysis *)

open Ll
open Datastructures

(* The lattice of abstract pointers ----------------------------------------- *)
module SymPtr =
  struct
    type t = MayAlias           (* uid names a pointer that may be aliased *)
           | Unique             (* uid is the unique name for a pointer *)
           | UndefAlias         (* uid is not in scope or not a pointer *)

    let compare : t -> t -> int = Pervasives.compare

    let to_string = function
      | MayAlias -> "MayAlias"
      | Unique -> "Unique"
      | UndefAlias -> "UndefAlias"

  end

(* The analysis computes, at each program point, which UIDs in scope are a unique name
   for a stack slot and which may have aliases *)
type fact = SymPtr.t UidM.t

(* flow function across Ll instructions ------------------------------------- *)
(* TASK: complete the flow function for alias analysis. 

   - After an alloca, the defined UID is the unique name for a stack slot
   - A pointer returned by a load, call, bitcast, or GEP may be aliased
   - A pointer passed as an argument to a call, bitcast, GEP, or store
     may be aliased
   - Other instructions do not define pointers

 *)
let insn_flow ((u,i):uid * insn) (d:fact) : fact =
  let is_ptr (ty:Ll.ty) : bool =
    begin match ty with
      | Ptr _ -> true
      | _ -> false
    end in
  
  let add_alias (curr_d:fact) (op:Ll.operand) : fact =
    let get_uid (op:Ll.operand) : Ll.uid * bool = 
      begin match op with
        | Id uid -> uid, false
        | Gid g -> g, true
        | _ -> failwith "get_uid, operand is not pointer"
      end in
    let uid, is_gbl = get_uid op in
    if (is_gbl) then curr_d (*L: should not add globals here*)
    else UidM.add uid SymPtr.MayAlias curr_d in

  begin match i with 
    | Alloca _ -> UidM.add u SymPtr.Unique d 
    | Store (ty, op_src, op_dst) -> 
      if(is_ptr ty) then add_alias d op_src
      else d
    | Load (Ptr ty, op) -> 
      if(is_ptr ty) then add_alias d (Id u)
      else d
    | Bitcast (ty1, op, ty2) -> 
      let d1 = add_alias d op in
      add_alias d1 (Id u)
    | Gep (ty, op, ops) -> 
      let d1 = add_alias d op in
      add_alias d1 (Id u)
    | Call (retty, retop, args) ->
      let arg_ptrs = List.filter (fun x -> is_ptr (fst x)) args in
      let arg_d = List.fold_left (fun dc tyop -> add_alias dc (snd tyop)) d arg_ptrs in
      let retd = add_alias arg_d retop in
      add_alias retd (Id u)
    | _ -> d
  end
  


(* The flow function across terminators is trivial: they never change alias info *)
let terminator_flow t (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    (* UndefAlias is logically the same as not having a mapping in the fact. To
       compare dataflow facts, we first remove all of these *)
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymPtr.UndefAlias)

    let compare (d:fact) (e:fact) : int = 
      UidM.compare SymPtr.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymPtr.to_string v)

    (* TASK: complete the "combine" operation for alias analysis.

       The alias analysis should take the join over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful.

       It may be useful to define a helper function that knows how to take the
       join of two SymPtr.t facts.
    *)
    

    let combine (ds:fact list) : fact =
      let join (d1:fact) (d2:fact) : fact =
        let f k a b =
          begin match a,b with
          | Some x, Some y -> 
              begin match x,y with
              | SymPtr.UndefAlias, _ -> b
              | _, SymPtr.UndefAlias -> a
              | SymPtr.Unique, SymPtr.Unique -> a
              | _ -> Some SymPtr.MayAlias
              end
          | Some x, None -> a
          | None, Some y -> b
          | _ -> None
          end in
        UidM.merge f d1 d2
      in
      List.fold_left join UidM.empty ds
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefAlias *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any pointer parameter 
     to the function may be aliased *)
  let alias_in = 
    List.fold_right 
      (fun (u,t) -> match t with
                    | Ptr _ -> UidM.add u SymPtr.MayAlias
                    | _ -> fun m -> m) 
      g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init alias_in g in
  Solver.solve fg

