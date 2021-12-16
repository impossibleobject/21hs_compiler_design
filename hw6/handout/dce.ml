(** Dead Code Elimination  *)
open Ll
open Datastructures


(* expose a top-level analysis operation ------------------------------------ *)
(* TASK: This function should optimize a block by removing dead instructions
   - lb: a function from uids to the live-OUT set at the 
     corresponding program point
   - ab: the alias map flowing IN to each program point in the block
   - b: the current ll block

   Note: 
     Call instructions are never considered to be dead (they might produce
     side effects)

     Store instructions are not dead if the pointer written to is live _or_
     the pointer written to may be aliased.

     Other instructions are dead if the value they compute is not live.

   Hint: Consider using List.filter
 *)
let dce_block (lb:uid -> Liveness.Fact.t) 
              (ab:uid -> Alias.fact)
              (b:Ll.block) : Ll.block =
  let dce_ins ((ins_uid, ins): Ll.uid * Ll.insn) : (uid * insn) option =
    let is_live u =
      let live_set = lb ins_uid in
      UidS.mem u live_set
    in
    begin match ins with
    | Call _ -> Some (ins_uid,ins)
    | Store (ty, op1, op2) -> 
      let get_uid (op:Ll.operand) : Ll.uid * bool = 
        begin match op with
          | Id  l -> l, false
          | Gid g -> (* if(is_live g) then print_endline("Gid: " ^ g ^ " is live")
                     else print_endline("Gid: " ^ g ^ " is not live"); *)
                     g, true
          | _ -> 
            print_endline("operand is: " ^ Llutil.string_of_operand op);
            failwith "get_uid, operand is not pointer"
        end in
      let op2_uid, op2_isgbl = get_uid op2 in
      let is_alias = 
        let alias = UidM.find_or Alias.SymPtr.UndefAlias (ab ins_uid) (op2_uid) in
        begin match alias with
        | Alias.SymPtr.MayAlias -> true
        | _ -> false
        end in
      if (op2_isgbl || is_alias || is_live (op2_uid)) then Some (ins_uid,ins)
      else None
    (*L: testing if ins_uid in its' own liveset seems to be correct here*)
    | _ -> if(is_live ins_uid) then Some (ins_uid,ins) else None 
           
           
    end
  in
  let opt_ins = List.map dce_ins b.insns in
  let filtered_ins = List.filter (fun x -> x <> None) opt_ins in
  let deopt_ins = 
    let deopt (x : (uid * insn) option) : uid * insn = 
      begin match x with
      | Some a -> a
      | _ -> failwith "filter did not work"
    end in
    List.map deopt filtered_ins in
  {insns=deopt_ins; term=b.term}
  
    

let run (lg:Liveness.Graph.t) (ag:Alias.Graph.t) (cfg:Cfg.t) : Cfg.t =

  LblS.fold (fun l cfg ->
    let b = Cfg.block cfg l in

    (* compute liveness at each program point for the block *)
    let lb = Liveness.Graph.uid_out lg l in

    (* compute aliases at each program point for the block *)
    let ab = Alias.Graph.uid_in ag l in 

    (* compute optimized block *)
    let b' = dce_block lb ab b in
    Cfg.add_block l b' cfg
  ) (Cfg.nodes cfg) cfg

