(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

(*L: aliases for easier usage of modules*)
module Ovf = Int64_overflow

(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address *)
let mem_top = 0x410000L          (* one past the last byte in memory *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up eight bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next sevent bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)
type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 8th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15


(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag;
   InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. Our implementation uses this mutable flag to turn on/off
   printing.  For instance, you might write something like:

     [if !debug_simulator then print_endline @@ string_of_ins u; ...]

*)
let debug_simulator = ref true

(*L: stolen from graded tests*)
let sbyte_list (a: sbyte array) (start: int) : sbyte list =
  Array.to_list (Array.sub a start 8)

(*L: helper to print int64*)
let print_int64 (i:int64) : unit = print_int(Int64.to_int i);
                                   print_endline("")

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd {fo; fs; fz} : cnd -> bool = fun x -> 
  begin match x with
    | Eq -> fz
    | Neq -> not fz
    | Gt -> not ((fs <> fo) || fz)
    | Ge -> not ((fs <> fo) || ((fs && not fo) || ((not fs) && fo)))
    | Lt -> (fs <> fo) || ((fs && not fo) || ((not fs) && fo))
    | Le -> (fs <> fo) || fz
  end

(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option = 
  if ((addr < mem_top) && (addr >= mem_bot)) then
    (Some (Int64.to_int (Int64.sub addr mem_bot))) 
  else None

(*F: unpack immediate to quad*)
let imm_to_quad (i:imm) : quad = 
  begin match i with 
    | Lit q -> q
    | _ -> failwith "label in Imm"
  end

(*F: wrap quad in immediate*)
let quad_to_imm (q:quad) : operand = Imm (Lit q)

(*F: unpack sbyte to char*)
let sbyte_to_char (s:sbyte) : char = 
  begin match s with
    | Byte c -> c
    | _ -> failwith "sbyte is not char"
  end

(*F: unpack int option from map_addr*)
let map_addr_safe (q:quad) : int =
  let i = map_addr q in
  begin match i with
    | None -> (* print_endline("map addr called with: ");
              print_int(Int64.to_int q); *)
              raise X86lite_segfault
    | Some i -> i
  end

(*L: Assignment 2 info -> no lbls for Instruction operands*)
let interp_op (op:operand) (r:regs) (m:mem) : quad = 
  begin match op with
    | Imm i  -> imm_to_quad i
    | Reg x  -> r.(rind x)
    | Ind1 i -> int64_of_sbytes (sbyte_list m (map_addr_safe (imm_to_quad i)))
    | Ind2 reg -> int64_of_sbytes (sbyte_list m (map_addr_safe (r.(rind reg))))
    | Ind3 (i, reg) -> int64_of_sbytes (sbyte_list m (map_addr_safe 
                       (Int64.add r.(rind reg) (imm_to_quad i))))
  end

(*helper to get mem addr*)
let get_addr (o:operand) (r:regs) : int64 =
  (* print_endline("\n get_addr called with op: ");
  print_endline(string_of_operand o); *)
  begin match o with
    | Ind1 imm -> (imm_to_quad imm)
    | Ind2 reg -> (r.(rind reg))
    | Ind3 (i, reg) -> (Int64.add r.(rind reg) (imm_to_quad i))
    | _ -> failwith "get_addr should not be called with reg or imm"
  end
(*L: F: Helper function to index into mem array*)
let get_idx (o:operand) (r:regs) : int =
  map_addr_safe (get_addr o r)

(*F: put byte list into mem*)
let quad_sbyte_list_into_mem (bls:sbyte list) (mem:mem) (addr:int) : unit =
  for i = 0 to 7 do
    mem.(addr + i) <- List.nth bls i
  done

(*F: put quad into regs*)
let quad_into_reg (q:quad) (regs:regs) (r:reg) : unit =
  (* print_endline("\n quad_into_reg, register we are setting: " ^ string_of_reg r);
  print_endline("\n content before: ");
  print_int(Int64.to_int regs.(rind r));
  print_endline("\n content after: "); *)
  Array.set regs (rind r) q
  (* print_int(Int64.to_int regs.(rind r))
   *)

(*F: pattern matching for movq*)
let set_mem (src:operand) (des:operand) (r:regs) (m:mem) : unit =
  (* print_endline ("set_mem src:  " ^ (Int64.to_string (interp_op src r m))); *)
  begin match des with
    | Imm i   -> failwith "set_mem can't write to imm"
    | Reg reg -> quad_into_reg (interp_op src r m) r reg
    | _       -> quad_sbyte_list_into_mem
                 (sbytes_of_int64 (interp_op src r m)) m (get_idx des r)
  end

(*F: helper function for pushq*)
let pushq_helper (op:operand) (r:regs) (m:mem) : unit =
  let rsp_new_val = Int64.sub r.(rind Rsp) 8L in
  r.(rind Rsp) <- rsp_new_val;
  set_mem op (Ind2 Rsp) r m

(*F: helper function for popq*)
let popq_helper (op:operand) (r:regs) (m:mem) : unit =
  let rsp_old_val = r.(rind Rsp) in
  let rsp_new_val = Int64.add rsp_old_val 8L in
  (* print_endline ("Rsp original " ^ (Int64.to_string r.(rind Rsp))); *)
  set_mem (Ind2 Rsp) op r m;
  (* print_endline ("Rax  " ^ (Int64.to_string r.(rind Rax))); *)
  r.(rind Rsp) <- rsp_new_val
  (* print_endline ("Rsp new " ^ (Int64.to_string r.(rind Rsp))) *)

(*F: helper function for leaq*)
let leaq_helper (ind:operand) (op2:operand) (r:regs) (m:mem) : unit =
  begin match ind with
    | Imm i -> failwith "leaq called with non-indirect operand type!"
    | Reg i -> failwith "leaq called with non-indirect operand type!"
    | _ -> let effective_addr = get_addr ind r in
        set_mem (quad_to_imm effective_addr) op2 r m
  end

(*F: helper function for jmp*)
let jmp_helper (op:operand) (r:regs) (m:mem) : unit = 
  set_mem op (Reg Rip) r m

(*F: helper function for callq*)
let callq_helper (op:operand) (r:regs) (m:mem) : unit =
  pushq_helper (Reg Rip) r m;
  set_mem op (Reg Rip) r m 

(*F: helper function for retq*)
let retq_helper (r:regs) (m:mem) : unit =
  popq_helper (Reg Rip) r m

(*F: helper function for jcc*)
let jcc_helper (cc:cnd) (op:operand) (r:regs) (m:mem) (f:flags) : unit =
  (* let fallthru_rip = quad_to_imm (Int64.add r.(rind Rip) 8L) in *)
  if interp_cnd f cc 
    then set_mem op (Reg Rip) r m 
    (* else set_mem fallthru_rip (Reg Rip) r m  *)

(*F: helper function for setb 
  -> assumes 'lower byte of dest' means the byte with the smallest addr in mem (out of the 8), 
  so the byte the op is pointing to already*)
let setb_helper (cc:cnd) (op:operand) (r:regs) (m:mem) (f:flags) : unit =
  begin match op with
    | Reg reg -> if (interp_cnd f cc) then r.(rind reg) <- 1L
                else r.(rind reg) <- 0L
    | _ -> let addr = get_idx op r in
           let char0 = Char.chr 0 in
           let char1 = Char.chr 1 in
           if interp_cnd f cc 
             then m.(addr) <- (Byte char1)
             else m.(addr) <- (Byte char0)
  end

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)
let step (m:mach) : unit =
  let flags = m.flags in
  let regs = m.regs in
  let mem = m.mem in
  let get_ins rarray marray =
    let memcontent = marray.(map_addr_safe regs.(rind Rip)) in
    begin match memcontent with
      | InsB0 instr -> (* print_endline("\n instr given to step: ");
                       print_endline(string_of_ins instr); *)
                       instr
      | _ -> failwith "not an InsB0"
    end in
  let (opcode, ls) = get_ins regs mem in
  (* print_endline("\n current instr step: ");
  print_endline (string_of_ins (opcode, ls));
  print_endline("step instr pointer: ");
  print_string("contents of %rip before: ");
  print_int64(regs.(rind Rip)); *)
(*   set_mem (Ind3 (Lit 8L,Rip)) (Reg Rip) regs mem;
 *)  
  regs.(rind Rip) <- Int64.add regs.(rind Rip) 8L;
  (* print_string("contents of %rip after: ");
  print_int64(regs.(rind Rip)); *)
  let get_mem_from_idx (idx:int) : int64 = 
      int64_of_sbytes (Array.to_list (Array.sub mem idx 8)) in
  let get_mem (op:operand) : int64 = 
    begin match op with
      | Imm i       -> imm_to_quad i
      | Reg r       -> regs.(rind r)
      | _ -> get_mem_from_idx (get_idx op regs)
    end
  in
  let set_sz_flags (res:int64) : unit = 
    if(res = 0L) then (flags.fz <- true;) else (flags.fz <- false);
    if(res < 0L) then (flags.fs <- true;) else (flags.fs <- false) in
  let bin_arithm_shift (src:operand) (dst:operand) (func: int64 -> int -> int64) (variant:int): unit =
    let shift = Int64.to_int (get_mem src) in
    let original = get_mem dst in
    let res = func original shift in
    set_mem (quad_to_imm res) dst regs mem;
    let first_two_bits_diff : bool = 
      let first_two_bits : int64 = Int64.shift_right_logical res 62 in
      (first_two_bits = 1L) || (first_two_bits = 2L) in
    if(shift <> 0) then 
      set_sz_flags res;
      if(shift = 1) then 
        begin match variant with
          | 1 -> if (first_two_bits_diff) then (flags.fo <- true;)
                 else (flags.fo <- false;)
          | 2 -> (flags.fo <- false;)
          | 3 -> if (original < 0L) then (flags.fo <- true;) 
                 else (flags.fo <- false;)
          | _ -> failwith "not a correct shift call"
        end
     in
  let bin_arithm_ofv (op1:operand) (op2:operand) (func: int64 -> int64 -> Ovf.t) (written_to_mem:bool) : unit =
    let res = func (get_mem op2) (get_mem op1) in
   (*  print_endline("\n bin_arithm_ofv: ");
    print_endline("op1: ");
    print_endline(string_of_operand op1);
    print_endline("op2: ");
    print_endline(string_of_operand op2); *)
    (*test if func is imul instr => fz fs ignored in that case*)
    if(((func 1L 1L).value) <> 1L) then set_sz_flags res.value;
    flags.fo <- res.overflow;
    if(written_to_mem) then set_mem (quad_to_imm res.value) op2 regs mem
  in
  let un_arithm_ovf (op:operand) (func: int64 -> Ovf.t) : unit = 
    let res = func (get_mem op) in
    set_sz_flags res.value;
    flags.fo <- res.overflow;
    set_mem (quad_to_imm res.value) op regs mem in
  let bin_log (src:operand) (dst:operand) (func: int64 -> int64 -> int64) : unit =
    flags.fo <- false;
    let resq = func (get_mem src) (get_mem dst) in
    set_sz_flags resq;
    set_mem (quad_to_imm resq) dst regs mem in
  begin match (opcode, ls) with
    | (Movq, [op1; op2])  -> set_mem op1 op2 regs mem
    | (Pushq, [op])       -> pushq_helper op regs mem
    | (Popq, [op])        -> popq_helper op regs mem
    | (Leaq, [ind; op2])  -> leaq_helper ind op2 regs mem
    | (Incq, [op])        -> un_arithm_ovf op Ovf.succ
    | (Decq, [op])        -> un_arithm_ovf op Ovf.pred
    | (Negq, [op])        -> un_arithm_ovf op Ovf.neg
    | (Notq, [op])        -> flags.fo <- false;
                             set_mem op (quad_to_imm (Int64.lognot (get_mem op))) regs mem 
    | (Addq, [op1; op2])  -> bin_arithm_ofv op1 op2 Ovf.add true;
                             (* print_endline("\n add");
                             print_endline("\n contents of %rip: ");
                             print_int64(regs.(rind Rip));
                             print_endline("\n contents of %rax: ");
                             print_int64(regs.(rind Rax));
                             print_endline("\n contents of %rbx: ");
                             print_int64(regs.(rind Rbx)) *)
    | (Subq, [op1; op2])  -> bin_arithm_ofv op1 op2 Ovf.sub true
    | (Imulq, [op1; op2]) -> bin_arithm_ofv op1 op2 Ovf.mul true
    | (Xorq, [op1; op2])  -> bin_log op1 op2 Int64.logxor
    | (Orq, [op1; op2])   -> bin_log op1 op2 Int64.logor
    | (Andq, [op1; op2])  -> bin_log op1 op2 Int64.logand
    | (Shlq, [op1; op2])  -> bin_arithm_shift op1 op2 Int64.shift_left 1
    | (Sarq, [op1; op2])  -> bin_arithm_shift op1 op2 Int64.shift_right 2
    | (Shrq, [op1; op2])  -> bin_arithm_shift op1 op2 Int64.shift_right_logical 3
    | (Jmp, [op])         -> jmp_helper op regs mem
    | (J cc, [op])        -> jcc_helper cc op regs mem m.flags
    | (Cmpq, [op1;op2])   -> bin_arithm_ofv op1 op2 Ovf.sub false
    | (Set cc, [op])      -> setb_helper cc op regs mem m.flags
    | (Callq, [op])       -> callq_helper op regs mem
    | (Retq, [])          -> retq_helper regs mem
    | _ -> failwith "not a proper opcode"
  end


  


(* Runs the machine until the rip register reaches a designated
   memory address. Returns the contents of %rax when the 
   machine halts. *)
let run (m:mach) : int64 = 
  while m.regs.(rind Rip) <> exit_addr do step m done;
  m.regs.(rind Rax)

(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad              (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad              (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl

(* Convert an X86 program into an object file:
   - separate the text and data segments
   - compute the size of each segment
      Note: the size of an Asciz string section is (1 + the string length)
            due to the null terminator

   - resolve the labels to concrete addresses and 'patch' the instructions to 
     replace Lbl values with the corresponding Imm values.

   - the text segment starts at the lowest address
   - the data segment starts after the text segment

  HINT: List.fold_left and List.fold_right are your friends.
 *)

type lbl_offsets = {
  lbl:lbl;
  start:int;
  finish:int;
}


let offset_addition (tupls: lbl_offsets list) (init_offset:int) : (lbl_offsets list * int) = 
  let rec offset_add_aux (tupls: lbl_offsets list) (offset:int) : (lbl_offsets list * int) =
    begin match tupls with
      | []    ->  [], offset
      | h::ls ->  let h_new = 
                  {
                    lbl = h.lbl; 
                    start = offset; 
                    finish = h.finish + offset
                  } in
                  (*if(!debug_simulator) then
                    print_endline("\n old label: ");
                    print_endline(h.lbl);
                    print_endline("\n size of old block: ");
                    print_int(h.finish);
                    print_endline("\n new offset: ");
                    print_int(h_new.finish);*)
                  let res = offset_add_aux ls h_new.finish in
                  (h_new :: fst res), snd res
    end in
    offset_add_aux tupls init_offset

let offset_addition_old (tupls: lbl_offsets list) : lbl_offsets list =
  let tupls_len = List.length tupls in
  if (tupls_len == 0 || tupls_len == 1) 
    then tupls 
  else 
    let new_tupls = ref ((List.hd tupls)::[]) in
    for i=1 to (tupls_len-1) do
      let curr = List.nth tupls i in
      let pred = List.nth tupls (i-1) in
      new_tupls := (!new_tupls) @ [{lbl = curr.lbl; start = curr.start + pred.finish; finish = curr.finish + pred.finish}]
    done;
    !new_tupls

let length_asm (asm:asm) : int = 
  begin match asm with
    | Text ls -> 8 * List.length ls
    | Data ls -> List.length ls
  end

let get_lbl_and_offsets (e:elem) : lbl_offsets = 
  {lbl = e.lbl; start = 0; finish = length_asm e.asm}

let filter_text_seg (e:elem) : bool =
  let list = e.asm in
  begin match list with
    | Text instr -> true
    | _ -> false
  end

let symbol_table_constr (tupls:lbl_offsets list) : (lbl * int64) list =
  let symbol_table = ref [] in
  for i=0 to ((List.length tupls)-1) do
    let curr = List.nth tupls i in
    if(List.exists (fun (x, _) -> (x = curr.lbl)) !symbol_table) then raise (Redefined_sym curr.lbl)
    else symbol_table := !symbol_table @ [(curr.lbl, Int64.add (Int64.of_int curr.start) mem_bot)]
  done;
  !symbol_table
    



let get_asm_text (asm:asm) : (ins list) =
  begin match asm with
    | Text il -> il
    | _ -> failwith "wanted instr list got data list"
  end

let get_asm_data (asm:asm) : (data list) =
  begin match asm with
    | Data dl -> dl
    | _ -> failwith "wanted data list got instr list"
  end


let map_symbol (symtab:(lbl*int64)list) (lbl:lbl) : int64 =
  try
    let (a,addr) = List.find (fun (x,_) -> x=lbl) symtab in
    addr
  with
    | Not_found -> raise (Undefined_sym lbl)

let transl_imm (i:imm) (st:(lbl * int64) list): imm  =
  begin match i with
    | Lit q -> i
    | Lbl l -> (Lit (map_symbol st l))
  end

let clean_instr (st:(lbl * int64) list) (ins:ins) : ins = 
  let clean_op (op:operand) : operand =
    begin match op with
      | Imm i -> Imm (transl_imm i st)
      | Ind1 i -> Ind1 (transl_imm i st)
      | Ind3 (i,r) -> Ind3 ((transl_imm i st), r)
      | _ -> op
    end
  in
  let opcode, operand_ls = ins in
  begin match operand_ls with
    | [] -> opcode, operand_ls
    | ls -> opcode, (List.map clean_op ls) 
  end

let unpack_insl_from_elem (p:prog) (st:(lbl * int64) list): ins list = 
  let tmp = List.map (fun e -> e.asm) p in 
  let unclean = List.concat (List.map get_asm_text tmp) in
  List.map (clean_instr st) unclean

let clean_data (st:(lbl * int64) list) (d:data) : data = 
  begin match d with
    | Quad i -> Quad (transl_imm i st)
    | Asciz s -> d
  end

let unpack_datal_from_elem (p:prog) (st:(lbl * int64) list): data list = 
  let tmp = List.map (fun e -> e.asm) p in 
  let unclean = List.concat (List.map get_asm_data tmp) in
  List.map (clean_data st) unclean



let assemble (p:prog) : exec =
  let (prog_only_text, prog_only_data) = List.partition filter_text_seg p in
  let text_lbl_offset_ls, offset_data =
    (offset_addition (List.map get_lbl_and_offsets prog_only_text) 0) in
  let data_lbl_offset_ls, _      = 
    (offset_addition (List.map get_lbl_and_offsets prog_only_data) offset_data) in
  let lbl_offset_ls = (List.append text_lbl_offset_ls data_lbl_offset_ls) in
  let symbol_table = symbol_table_constr lbl_offset_ls in
  let text_seg_size = Int64.of_int ((List.hd (List.rev text_lbl_offset_ls)).finish * 8) in
  let text_seg = List.concat (List.map sbytes_of_ins (unpack_insl_from_elem prog_only_text symbol_table)) in
  let data_seg = List.concat (List.map sbytes_of_data (unpack_datal_from_elem prog_only_data symbol_table)) in
  let entry = map_symbol symbol_table "main" in
  (* print_endline("\n entry is: ");
  print_int64(entry); *)
  (*if(!debug_simulator) then
    print_endline((String.concat "\n" (List.map string_of_ins (unpack_insl_from_elem prog_only_text symbol_table))));
    print_endline("\n new program starts here \n");
    print_endline("\n Length of text segment: ");
    print_int(List.length text_seg);
    print_endline("\n Length data offset: ");
    print_int(offset_data);*)
  {
    entry = entry;
    text_pos = mem_bot;
    data_pos = Int64.add mem_bot (Int64.of_int offset_data);
    text_seg = text_seg;
    data_seg = data_seg;
  }


(* Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
let load {entry; text_pos; data_pos; text_seg; data_seg} : mach = 
  let flags = {
    fo = false;
    fs = false;
    fz = false;
  } in
  let regs = Array.make nregs 0L in
  let mem = Array.make mem_size (Byte '\x00') in
  let text_arr = Array.of_list text_seg in
  let data_arr = Array.of_list data_seg in
  Array.blit text_arr 0 mem (map_addr_safe text_pos) (Array.length text_arr);
  Array.blit data_arr 0 mem (map_addr_safe data_pos) (Array.length data_arr);
  set_mem (Imm (Lit entry)) (Reg Rip) regs mem;
  set_mem (Imm (Lit (Int64.sub mem_top 8L))) (Reg Rsp) regs mem;
  set_mem (Imm (Lit exit_addr)) (Ind2 Rsp) regs mem;
  (* print_endline("\n location of exit_addr: ");
  print_int(Int64.to_int ( regs. (rind Rsp)));
  print_endline("\n content of above_location: ");
  print_int(Int64.to_int (int64_of_sbytes (Array.to_list (Array.sub mem (get_addr (Ind2 Rsp) regs) 8)))); *)
  (* print_endline("\n content of %rax = ");
  print_int(Int64.to_int regs.(rind Rax)); *)
  {flags = flags; regs = regs; mem = mem;}
