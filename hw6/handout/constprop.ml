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
  let binop_aux i1 i2 bop : int64 =
    begin match bop with
    | Add  -> Int64.add i1 i2
    | Sub  -> Int64.sub i1 i2
    | Mul  -> Int64.mul i1 i2
    | Shl  -> Int64.shift_left i1 (Int64.to_int i2)
    | Lshr -> Int64.shift_right_logical i1 (Int64.to_int i2)
    | Ashr -> Int64.shift_right i1 (Int64.to_int i2)
    | And  -> Int64.logand i1 i2
    | Or   -> Int64.logor  i1 i2
    | Xor  -> Int64.logxor i1 i2
    end in 
  let icmp_aux i1 i2 cnd : bool =
    let int_cmp = Int64.compare i1 i2 in
    begin match cnd with
    | Eq -> (int_cmp = 0)
    | Ne -> (int_cmp <> 0)
    | Slt -> (int_cmp = -1)
    | Sle -> (int_cmp = -1 || int_cmp = 0)
    | Sgt -> (int_cmp = 1)
    | Sge -> (int_cmp = 1 || int_cmp = 0)
    end
  in
  let get_symconst i = 
    let op1, op2, bop_opt, cnd_opt =
      begin match i with
      | Binop (bop, ty, o1, o2) -> o1, o2, Some bop, None  
      | Icmp (cnd, ty, o1, o2)  -> o1, o2, None, Some cnd
      | _ -> failwith "impossible"
      end in
    begin match (is_const op1), (is_const op2) with
    | SymConst.Const i1, SymConst.Const i2 -> 
      begin match bop_opt, cnd_opt with
      | Some bop, None -> SymConst.Const (binop_aux i1 i2 bop)
      | None, Some cnd -> 
        if(icmp_aux i1 i2 cnd) then SymConst.Const 1L
        else SymConst.Const 0L
      | _, _ -> failwith "impossible"
      end
    | SymConst.UndefConst, _ -> SymConst.UndefConst
    | _, SymConst.UndefConst -> SymConst.UndefConst
    | SymConst.NonConst, _ -> SymConst.NonConst
    | _, SymConst.NonConst -> SymConst.NonConst 
    end
  in
  let symconst = 
    begin match i with
    | Binop _ | Icmp _ -> get_symconst i
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
              | SymConst.Const c, SymConst.Const d -> 
                (*F: need to set as nonconst if the vals don't match -> path specific execution; see book*)
                if (c=d) then a
                else Some SymConst.NonConst
                (* a L: c and d should be same *)
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

    let repl (uid_new:Ll.uid) (const_op:Ll.operand) (op_old:Ll.operand) : Ll.operand =
      begin match op_old with
      | Id uid_old -> if(uid_old = uid_new) then const_op else op_old
      | _ -> op_old
      end in
    
    let find_op curr_op uid_ins =
      begin match curr_op with
      | Id id -> 
        let f = cb uid_ins in
        let symconst = UidM.find_or SymConst.UndefConst f id in
        begin match symconst with
        | SymConst.Const i -> id, Ll.Const i
        | _ -> id, curr_op
        end
      | _ -> "", curr_op
      end in
    
    let process_insn ((uid_ins, insn):(Ll.uid * Ll.insn)) : (Ll.uid * Ll.insn) =
      let new_ins =
        begin match insn with
          | Binop (bop, ty, op1, op2) -> 
            let id_op1, new_op1 = find_op op1 uid_ins in
            let id_op2, new_op2 = find_op op2 uid_ins in
            Binop(bop, ty, (repl id_op1 new_op1 op1), (repl id_op2 new_op2 op2))
          | Store (ty, src, dst) -> 
            let id_src, new_src = find_op src uid_ins in
            Store (ty, (repl id_src new_src src), dst)
          | Icmp (cnd, ty, op1, op2) -> 
            let id_op1, new_op1 = find_op op1 uid_ins in
            let id_op2, new_op2 = find_op op2 uid_ins in
            Icmp (cnd, ty, (repl id_op1 new_op1 op1), (repl id_op2 new_op2 op2))
          | Call (ty, op, args) -> 
            let map_fun = ( fun (idi, opi) -> 
              let id_op, new_op = find_op opi uid_ins in
              idi, repl id_op new_op opi ) in
            Call (ty, op, List.map map_fun args)
          | Gep (ty, op, ops) -> 
            let map_fun_gep = ( fun opi ->
              let id_op, new_op = find_op opi uid_ins in
              repl id_op new_op opi ) in
            Gep (ty, op, List.map map_fun_gep ops)
          | _ -> insn
        end in
      uid_ins, new_ins
    in

    let processed_term = 
      let termuid, term = b.term in 
      begin match term with
      | Ret (_, None) | Br _ -> b.term
      | Ret (ty, Some op)     -> 
        let new_uid, new_op = find_op op termuid in
        termuid, Ret (ty, Some (repl new_uid new_op op))
      | Cbr (op, lbl1, lbl2)  -> 
        let new_uid, new_op = find_op op termuid in
        termuid, Cbr (repl new_uid new_op op, lbl1, lbl2)
      end in
    let processed_insns = List.map process_insn b.insns in
    let new_b = {insns=processed_insns; term=processed_term} in
    Cfg.add_block l new_b cfg

  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg
