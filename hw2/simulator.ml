(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

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
    | None -> failwith "not a valid address"
    | Some i -> i
  end


(*L: Assignment 2 info -> no lbls for Instruction operands*)
let interp_op (op:operand) (r:regs) (m:mem) : quad = 
  begin match op with
    | Imm i -> imm_to_quad i
    | Reg x -> r.(rind x)
    | Ind1 i -> imm_to_quad i
    | Ind2 i -> Int64.of_int (Char.code (sbyte_to_char m.(map_addr_safe (r.(rind i)))))
    | Ind3 (i1, i2) -> Int64.of_int (Char.code (sbyte_to_char m.(map_addr_safe (Int64.add r.(rind i2) (imm_to_quad i1)))))
  end

(*F: Helper function to index into mem array*)
let get_addr (o:operand) (r:regs) : int =
  begin match o with
    | Imm imm -> map_addr_safe (imm_to_quad imm)
    | Ind1 imm -> map_addr_safe (imm_to_quad imm)
    | Ind2 reg -> map_addr_safe (r.(rind reg))
    | Ind3 (i1, i2) -> map_addr_safe (Int64.add r.(rind i2) (imm_to_quad i1))
    | _ -> failwith "get_addr should not be called with reg"
  end

(*F: put byte list into mem*)
let quad_sbyte_list_into_mem (bls:sbyte list) (mem:mem) (addr:int) : unit =
  for i = 0 to 7 do
    mem.(addr) <- List.nth bls i
  done

let quad_into_reg (q:quad) (regs:regs) (r:reg) : unit =
  Array.set regs (rind r) q

(*F: pattern matching for movq*)
let movq_helper (op1:operand) (op2:operand) (r:regs) (m:mem) : unit =
  begin match op2 with
    | Reg reg -> quad_into_reg (interp_op op1 r m) r reg
    | (Imm x | Ind1 x) -> quad_sbyte_list_into_mem (sbytes_of_int64 (interp_op op1 r m)) m (get_addr (Imm x) r)
    | Ind2 x -> quad_sbyte_list_into_mem (sbytes_of_int64 (interp_op op1 r m)) m (get_addr (Ind2 x) r)
    | Ind3 x -> quad_sbyte_list_into_mem (sbytes_of_int64 (interp_op op1 r m)) m (get_addr (Ind3 x) r)
  end

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)
let step (m:mach) : unit =
  let get_ins rip rarray marray =
    let memcontent = marray.(Int64.to_int (rarray.(rind rip))) in
    begin match memcontent with
      | InsB0 instr -> instr
      | _ -> failwith "not an InsB0"
    end 
  in
  let opcode,ls = get_ins Rip m.regs m.mem in
  let op1 = List.hd ls in
  let op2 = List.nth ls 1 in
  begin match opcode with
    | Movq -> movq_helper op1 op2 m.regs m.mem
    | _ -> failwith "not yet implemented"
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
let assemble (p:prog) : exec =
failwith "assemble unimplemented"

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
failwith "load unimplemented"
