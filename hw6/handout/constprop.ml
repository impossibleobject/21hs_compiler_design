open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare s t =
      match (s, t) with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t



(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)
let insn_flow (u,i:uid * insn) (d:fact) : fact =
  let is_const (op:Ll.operand) : SymConst.t =
    begin match op with
    | Const i1 -> SymConst.Const i1
    | Id id -> 
      let value = UidM.find_or SymConst.UndefConst d id in
      begin match value with
      | Const c -> SymConst.Const c
      | _ -> value
      end
    | _ -> failwith "Gid or Null gotten"
    end 
  in
  let get_symconst op1 op2 = 
    begin match (is_const op1), (is_const op2) with
    | SymConst.Const i1, SymConst.Const i2 -> SymConst.Const (Int64.add i1 i2)
    | SymConst.UndefConst, _ -> SymConst.UndefConst
    | _, SymConst.UndefConst -> SymConst.UndefConst
    | SymConst.NonConst, _ -> SymConst.NonConst
    | _, SymConst.NonConst -> SymConst.NonConst 
    end
  in
  let symconst = 
    begin match i with
    | Binop (_, _, op1, op2) -> get_symconst op1 op2
    | Icmp (_, _, op1, op2) -> get_symconst op1 op2
    | Store _ | Call (Void, _, _) -> SymConst.UndefConst
    | _ -> SymConst.NonConst
    end 
  in
  UidM.add u symconst d

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful *)
    let combine (ds:fact list) : fact = 
      let meet (d1:fact) (d2:fact) : fact =
        let f k a b =
          begin match a,b with
          | Some x, Some y -> 
              begin match x,y with
              | SymConst.Const c, SymConst.Const d -> a (*L: c and d should be same*)
              | SymConst.UndefConst, SymConst.Const c -> b
              | SymConst.Const c, SymConst.UndefConst -> a
              | SymConst.UndefConst, SymConst.UndefConst -> a
              | SymConst.NonConst, _ -> a
              | _, SymConst.NonConst -> b
              end
          | Some x, None -> a
          | None, Some y -> b
          | _ -> None
          end in
        UidM.merge f d1 d2
      in
      List.fold_left meet UidM.empty ds
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.                                                                 *)
type acc = (uid -> Fact.t) * (Ll.uid * Ll.insn) list
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  
  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b : Ll.block = Cfg.block cfg l in 
    let cb : uid -> Fact.t = Graph.uid_out cg l in

    let rec process_insns (uid_insns:(Ll.uid * Ll.insn) list) : (Ll.uid * Ll.insn) list =
      let uid_is_cnst (uid:Ll.uid) : bool * Ll.operand =
        let fact = cb uid in
        let symconst = UidM.find_or SymConst.UndefConst fact uid in
        begin match symconst with
        | SymConst.Const i -> true, Const i
        | _                -> false, Null
        end in
        
      let repl_uid (uid:Ll.uid) (const_op:Ll.operand) (uid_ins, insn:(Ll.uid * Ll.insn)) : (Ll.uid * Ll.insn) =
        let repl (op_old:Ll.operand) : Ll.operand =
          begin match op_old with
          | Id uid_old -> if(uid_old = uid) then const_op else op_old
          | _ -> op_old
          end in
        let new_ins =
          begin match insn with
          | Binop (bop, ty, op1, op2) -> Binop(bop, ty, repl op1, repl op2)
          | Store (ty, src, dst) -> Store (ty, repl src, dst)
          | Icmp (cnd, ty, op1, op2) -> Icmp (cnd, ty, repl op1, repl op2)
          | Call (ty, op, args) -> Call (ty, op, List.map (fun x -> fst x, repl (snd x)) args)
          | Gep (ty, op, ops) -> Gep (ty, op, List.map repl ops)
          | _ -> insn
          end in
        uid_ins, new_ins in
        
      begin match uid_insns with
      | [] -> []
      | h::tl ->
        let uid = fst h in
        let is_cnst, repl_op = uid_is_cnst uid in
        if(is_cnst) then 
          h::process_insns (List.map (repl_uid uid repl_op) tl)
        else
          h::process_insns tl 
      end in
    
      
    let processed_insns = process_insns b.insns in
    let new_b = {insns=processed_insns; term=b.term} in
    Cfg.add_block l new_b cfg

  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg
