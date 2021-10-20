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
let debug_simulator = ref false

(*L: stolen from graded tests*)
let sbyte_list (a: sbyte array) (start: int) : sbyte list =
  Array.to_list (Array.sub a start 8)

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd {fo; fs; fz} : cnd -> bool = fun x -> 
  begin match x with
    | Eq  -> fz
    | Neq -> not fz
    | Gt  -> not ((fs <> fo) || fz)
    | Ge  -> not ((fs <> fo) || ((fs && not fo) || ((not fs) && fo)))
    | Lt  -> (fs <> fo) || ((fs && not fo) || ((not fs) && fo))
    | Le  -> (fs <> fo) || fz
  end

(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)


(*F: unpack immediate to quad*)
let imm_to_quad (i:imm) : quad = 
  begin match i with 
    | Lit q -> q
    | _     -> failwith "label in Imm"
  end

(*F: wrap quad in immediate*)
let quad_to_imm (q:quad) : operand = Imm (Lit q)

(*F: unpack sbyte to char*)
let sbyte_to_char (s:sbyte) : char = 
  begin match s with
    | Byte c -> c
    | _ -> failwith "sbyte is not char"
  end

let map_addr (addr:quad) : int option = 
  if ((addr < mem_top) && (addr >= mem_bot)) then
    (Some (Int64.to_int (Int64.sub addr mem_bot))) 
  else None

(*F: unpack int option from map_addr*)
let addr_to_idx (q:quad) : int =
  let i = map_addr q in
  begin match i with
    | None   -> raise X86lite_segfault
    | Some i -> i
  end

(*helper to get mem addr*)
let get_addr (r:regs) (o:operand) : int64 =
  begin match o with
    | Ind1 imm      -> imm_to_quad imm
    | Ind2 reg      -> r.(rind reg)
    | Ind3 (i, reg) -> Int64.add r.(rind reg) (imm_to_quad i)
    | _             -> failwith "get_addr should not be called with reg or imm"
  end
(*L: F: Helper function to index into mem array*)
let get_idx (r:regs) (o:operand) : int =
  addr_to_idx (get_addr r o)

let get_mem (regs:regs) (mem:mem) (op:operand) : int64 = 
  let get_mem_from_idx (idx:int) : int64 = 
    int64_of_sbytes (Array.to_list (Array.sub mem idx 8)) in
  begin match op with
    | Imm i -> imm_to_quad i
    | Reg r -> regs.(rind r)
    | _     -> get_mem_from_idx (get_idx regs op)
  end

(*L: Assignment 2 info -> no lbls for Instruction operands*)
let interp_op (op:operand) (r:regs) (m:mem) : quad = 
  begin match op with
    | Imm i -> imm_to_quad i
    | Reg x -> r.(rind x)
    | _     -> get_mem r m op
  end

(*F: put byte list into mem*)
let quad_sbyte_list_into_mem (bls:sbyte list) (mem:mem) (addr:int) : unit =
  for i = 0 to 7 do
    mem.(addr + i) <- List.nth bls i
  done

(*F: put quad into regs*)
let quad_into_reg (q:quad) (regs:regs) (r:reg) : unit =
  Array.set regs (rind r) q

(*F: pattern matching for movq*)
let set_mem (r:regs) (m:mem) (src:operand) (des:operand) : unit =
  begin match des with
    | Imm i   -> failwith "set_mem can't write to imm"
    | Reg reg -> quad_into_reg (interp_op src r m) r reg
    | _       -> quad_sbyte_list_into_mem
                 (sbytes_of_int64 (interp_op src r m)) m (get_idx r des)
  end



(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)
let step (m:mach) : unit =
  (*L: shorthands*)
  let flags = m.flags in
  let regs = m.regs in
  let mem = m.mem in
  let get_mem = get_mem regs mem in
  let set_mem = set_mem regs mem in
  let set_sz_flags (res:int64) : unit = 
    if(res = 0L) then (flags.fz <- true;) else (flags.fz <- false);
    if(res < 0L) then (flags.fs <- true;) else (flags.fs <- false) in
  (*L: get the current instr and move %rip*)
  let get_curr_ins : ins =
    let memcontent = mem.(addr_to_idx regs.(rind Rip)) in
    begin match memcontent with
      | InsB0 instr -> instr
      | _ -> failwith "not an InsB0"
    end in
  let (opcode, ls) = get_curr_ins in
  regs.(rind Rip) <- Int64.add regs.(rind Rip) 8L;
  (*L: helpers for arithmetic instr*)
  let bin_arithm_shift (src:operand) (dst:operand) (shift: int64 -> int -> int64) (variant:int): unit =
    let amt = Int64.to_int (get_mem src) in
    let original = get_mem dst in
    let res = shift original amt in
    set_mem (quad_to_imm res) dst;
    let first_two_bits_diff : bool = 
      let first_two_bits : int64 = Int64.shift_right_logical original 62 in
      (first_two_bits = 1L) || (first_two_bits = 2L) in
    if(amt <> 0) then 
      set_sz_flags res;
      if(amt = 1) then 
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
    if(((func 1L 1L).value) <> 1L) then set_sz_flags res.value;
    flags.fo <- res.overflow;
    if(written_to_mem) then set_mem (quad_to_imm res.value) op2
  in
  let un_arithm_ovf (op:operand) (func: int64 -> Ovf.t) : unit = 
    let res = func (get_mem op) in
    set_sz_flags res.value;
    flags.fo <- res.overflow;
    set_mem (quad_to_imm res.value) op in
  let bin_log (src:operand) (dst:operand) (func: int64 -> int64 -> int64) : unit =
    flags.fo <- false;
    let resq = func (get_mem src) (get_mem dst) in
    set_sz_flags resq;
    set_mem (quad_to_imm resq) dst in
  (*F: helpers for data moving instr*)
  let pushq (op:operand) : unit =
    let rsp_old_val = regs.(rind Rsp) in
    let rsp_new_val = Int64.sub rsp_old_val 8L in
    regs.(rind Rsp) <- rsp_new_val;
    set_mem op (Ind2 Rsp) in
  let popq (op:operand) : unit =
    let rsp_old_val = regs.(rind Rsp) in
    let rsp_new_val = Int64.add rsp_old_val 8L in
    set_mem (Ind2 Rsp) op;
    regs.(rind Rsp) <- rsp_new_val in
  let leaq (ind:operand) (op2:operand) : unit =
    begin match ind with
      | Imm i -> failwith "leaq called with non-indirect operand type imm!"
      | Reg i -> failwith "leaq called with non-indirect operand type reg!"
      | _     -> let effective_addr = get_addr regs ind in
                set_mem (quad_to_imm effective_addr) op2
    end in
  let setb (cc:cnd) (op:operand) : unit =
    let set_lower_byte (orig:int64) (lower:int64) : int64 = 
      let orig_lower_0 = Int64.shift_left (Int64.shift_right orig 8) 8 in
      Int64.logor orig_lower_0 lower in
    begin match op with
      | Reg reg -> let curr_reg = regs.(rind reg) in
                   if (interp_cnd flags cc) then 
                     regs.(rind reg) <- set_lower_byte curr_reg 1L
                   else regs.(rind reg) <- set_lower_byte curr_reg 0L
      | _       -> let addr = get_idx regs op in
                   if interp_cnd flags cc then mem.(addr) <- Byte '\x01'
                   else mem.(addr) <- Byte '\x00'
    end in
  begin match (opcode, ls) with
    | (Movq, [op1; op2])  -> set_mem op1 op2 
    | (Pushq, [op])       -> pushq op
    | (Popq, [op])        -> popq op
    | (Leaq, [ind; op2])  -> leaq ind op2
    | (Incq, [op])        -> un_arithm_ovf op Ovf.succ
    | (Decq, [op])        -> un_arithm_ovf op Ovf.pred
    | (Negq, [op])        -> un_arithm_ovf op Ovf.neg
    | (Notq, [op])        -> set_mem (quad_to_imm (Int64.lognot (get_mem op))) op
    | (Addq, [op1; op2])  -> bin_arithm_ofv op1 op2 Ovf.add true
    | (Subq, [op1; op2])  -> bin_arithm_ofv op1 op2 Ovf.sub true
    | (Imulq, [op1; op2]) -> bin_arithm_ofv op1 op2 Ovf.mul true
    | (Xorq, [op1; op2])  -> bin_log op1 op2 Int64.logxor
    | (Orq, [op1; op2])   -> bin_log op1 op2 Int64.logor
    | (Andq, [op1; op2])  -> bin_log op1 op2 Int64.logand
    | (Shlq, [op1; op2])  -> bin_arithm_shift op1 op2 Int64.shift_left 1
    | (Sarq, [op1; op2])  -> bin_arithm_shift op1 op2 Int64.shift_right 2
    | (Shrq, [op1; op2])  -> bin_arithm_shift op1 op2 Int64.shift_right_logical 3
    | (Jmp, [op])         -> set_mem op (Reg Rip)
    | (J cc, [op])        -> if (interp_cnd flags cc) then set_mem op (Reg Rip)
    | (Cmpq, [op1;op2])   -> bin_arithm_ofv op1 op2 Ovf.sub false
    | (Set cc, [op])      -> setb cc op 
    | (Callq, [op])       -> pushq (Reg Rip);
                             set_mem op (Reg Rip) 
    | (Retq, [])          -> popq (Reg Rip) 
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

(*L: helpers for labels*)
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
                  let res = offset_add_aux ls h_new.finish in
                  (h_new :: fst res), snd res
    end in
  offset_add_aux tupls init_offset

let get_lbl_and_offsets (e:elem) : lbl_offsets = 
  let length_asm (asm:asm) : int = 
    begin match asm with
      | Text ls -> 8 * List.length ls
      | Data ls -> List.length ls
    end in
  {lbl = e.lbl; start = 0; finish = length_asm e.asm}


(*L: helpers for symbol table*)
let symbol_table_constr (tupls:lbl_offsets list) : (lbl * int64) list =
  let symbol_table = ref [] in
  for i=0 to ((List.length tupls)-1) do
    let curr = List.nth tupls i in
    if(List.exists (fun (x, _) -> (x = curr.lbl)) !symbol_table) then raise (Redefined_sym curr.lbl)
    else symbol_table := !symbol_table @ [(curr.lbl, Int64.add (Int64.of_int curr.start) mem_bot)]
  done;
  !symbol_table

let map_symbol (symtab:(lbl*int64)list) (lbl:lbl) : int64 =
  try
    let (a,addr) = List.find (fun (x,_) -> x=lbl) symtab in
    addr
  with
    | Not_found -> raise (Undefined_sym lbl)


(*L: general helpers*)
let transl_imm (i:imm) (st:(lbl * int64) list): imm  =
  begin match i with
    | Lit q -> i
    | Lbl l -> (Lit (map_symbol st l))
  end

let unpack_insl_from_elem (p:prog) (st:(lbl * int64) list): ins list = 
  let get_asm_text (asm:asm) : (ins list) =
    begin match asm with
      | Text il -> il
      | _ -> failwith "wanted instr list got data list"
    end in
  let clean_instr (ins:ins) : ins = 
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
  in
  let tmp = List.map (fun e -> e.asm) p in 
  let unclean = List.concat (List.map get_asm_text tmp) in
  List.map clean_instr unclean

let unpack_datal_from_elem (p:prog) (st:(lbl * int64) list): data list = 
  let get_asm_data (asm:asm) : (data list) =
    begin match asm with
      | Data dl -> dl
      | _ -> failwith "wanted data list got instr list"
    end in
  let clean_data (d:data) : data = 
    begin match d with
      | Quad i -> Quad (transl_imm i st)
      | Asciz s -> d
    end in
  let tmp = List.map (fun e -> e.asm) p in 
  let unclean = List.concat (List.map get_asm_data tmp) in
  List.map clean_data unclean



let assemble (p:prog) : exec =
  let filter_text_seg (e:elem) : bool =
    begin match e.asm with
      | Text instr -> true
      | _ -> false
    end in
  let (prog_only_text, prog_only_data) = List.partition filter_text_seg p in
  let text_lbl_offset_ls, offset_data =
    (offset_addition (List.map get_lbl_and_offsets prog_only_text) 0) in
  let data_lbl_offset_ls, _      = 
    (offset_addition (List.map get_lbl_and_offsets prog_only_data) offset_data) in
  let lbl_offset_ls = (List.append text_lbl_offset_ls data_lbl_offset_ls) in
  let symbol_table = symbol_table_constr lbl_offset_ls in
  let text_seg = List.concat (List.map sbytes_of_ins (unpack_insl_from_elem prog_only_text symbol_table)) in
  let data_seg = List.concat (List.map sbytes_of_data (unpack_datal_from_elem prog_only_data symbol_table)) in
  let entry = map_symbol symbol_table "main" in
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
  Array.blit text_arr 0 mem (addr_to_idx text_pos) (Array.length text_arr);
  Array.blit data_arr 0 mem (addr_to_idx data_pos) (Array.length data_arr);
  set_mem regs mem (Imm (Lit entry)) (Reg Rip);
  set_mem regs mem (Imm (Lit (Int64.sub mem_top 8L))) (Reg Rsp);
  set_mem regs mem (Imm (Lit exit_addr)) (Ind2 Rsp);
  {flags = flags; regs = regs; mem = mem;}