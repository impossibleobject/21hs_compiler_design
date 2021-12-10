open Datastructures

(* dataflow analysis graph signature ---------------------------------------- *)
(* Interface for dataflow graphs structured in a way to facilitate 
   the general iterative dataflow analysis algorithm.                         

   The AsGraph functor in cfg.ml provides an implementation of this
   DFA_GRAPH signature that converts an LL IR control-flow graph to 
   this representation.

   NOTE: The direction of the analysis is goverened by how preds and
   succs are instantiated and how the corresponding flow function
   is defined.  This module pretends that all information is flowing
   "forward", but e.g. liveness instantiates the graph so that "forward"
   here is "backward" in the control-flow graph.

   This means that for a node n, the output information is explicitly
   represented by the "find_fact" function:
     out[n] = find_fact g n
   The input information for [n] is implicitly represented by:
     in[n] = combine preds[n] (out[n])

*)
module type DFA_GRAPH =
  sig
    module NodeS : SetS
    type node = NodeS.elt

    (* dataflow facts associated with the out-edges of the nodes in 
       this graph *)
    type fact

    (* the abstract type of dataflow graphs *)
    type t
    val preds : t -> node -> NodeS.t
    val succs : t -> node -> NodeS.t
    val nodes : t -> NodeS.t

    (* the flow function:
       given a graph node and input fact, compute the resulting fact on the 
       output edge of the node                                                
    *)
    val flow : t -> node -> fact -> fact

    (* lookup / modify the dataflow annotations associated with a node *)    
    val out : t -> node -> fact
    val add_fact : node -> fact -> t -> t

    (* printing *)
    val to_string : t -> string
    val printer : Format.formatter -> t -> unit
  end

(* abstract dataflow lattice signature -------------------------------------- *)
(* The general algorithm works over a generic lattice of abstract "facts".
    - facts can be combined (this is the 'join' operation)
    - facts can be compared                                                   *)
module type FACT =
  sig
    type t
    val combine : t list -> t
    val compare : t -> t -> int
    val to_string : t -> string
  end


(* generic iterative dataflow solver ---------------------------------------- *)
(* This functor takes two modules:
      Fact  - the implementation of the lattice                                
      Graph - the dataflow anlaysis graph

   It produces a module that has a single function 'solve', which 
   implements the iterative dataflow analysis described in lecture.
      - using a worklist (or workset) nodes 
        [initialized with the set of all nodes]

      - process the worklist until empty:
          . choose a node from the worklist
          . find the node's predecessors and combine their flow facts
          . apply the flow function to the combined input to find the new
            output
          . if the output has changed, update the graph and add the node's
            successors to the worklist                                        

   TASK: complete the [solve] function, which implements the above algorithm.
*)
module Make (Fact : FACT) (Graph : DFA_GRAPH with type fact := Fact.t) =
  struct
    let set_to_list = Graph.NodeS.elements

    let rec process_node_list (g:Graph.t) (ns:Graph.node list) : Graph.t = 
      begin match ns with
        | [] -> g
        | n::tl ->
          let old_out = Graph.out g n in
          let comb_facts = 
            let preds = Graph.preds g n in
            let pred_facts = List.map (Graph.out g) (set_to_list preds) in
            Fact.combine pred_facts in
          let new_out = Graph.flow g n comb_facts in
          let out_change = (Fact.compare old_out new_out) <> 0 in
          if(out_change) then
            let new_g = Graph.add_fact n new_out g in
            let succs = Graph.succs g n in
            let succ_ls = set_to_list succs in
            process_node_list new_g (succ_ls @ tl)
          else process_node_list g tl
      end
      

    let solve (g:Graph.t) : Graph.t =
      let workset = set_to_list (Graph.nodes g) in
      process_node_list g workset
  end

