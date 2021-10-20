open Assert
open X86
open Simulator
open Asm

(* You can use this file for additional test cases to help your *)
(* implementation.                                              *)
let program_test (p:prog) : int64 =
  assemble p |> load |> run

let factorial_iter n = 
[ text "main"
	[ Movq,  [~$1; ~%Rax]
	; Movq,  [~$n; ~%Rdi]
	]
; text "loop"
	[ Cmpq,  [~$0; ~%Rdi]
	; J Eq,  [~$$"exit"]
	; Imulq, [~%Rdi; ~%Rax]
	; Decq,  [~%Rdi]
	; Jmp,   [~$$"loop"]
	]
; text "exit"
	[ Retq,  [] 
	]
]

let gcd a b =
[ text "gcd"
	[ Movq,  [~%R08; ~%Rax]
	; Movq,  [~%R09; ~%Rdi]
	]
; text "loop" 
	[ Cmpq, [~%Rax; ~%Rdi]
	; J Eq, [~$$"return"]
	; J Gt, [~$$"then"]
	; Subq, [~%Rdi; ~%Rax]
	; Jmp,  [~$$"loop"]
	]
; text "then"
	[ Subq, [~%Rax; ~%Rdi]
	; Jmp,  [~$$"loop"]
	]
; text "return"
	[ Retq, []
	]
; gtext "main"
	[ Movq,  [~$a; ~%R08]
	; Movq,  [~$b; ~%R09]
	; Callq, [~$$"gcd"]
	; Retq,  []
	]
]

let myOwn = 
[ text "main" 
	[ Retq, []
	]
]

let myOwn2 = 
[ text "main" 
	[ Set Eq, [Ind1 (Lit (Int64.sub 0x410000L 9L))]
	; Retq, []
	]
]

let fib n =
[ text "fib"
	[ Cmpq, [~$1; ~%Rdi]
	; J Le, [~$$"base"]

	; Subq, [~$16; ~%Rsp]

	; Decq, [~%Rdi]
	; Movq, [~%Rdi; Ind2 Rsp]
	; Callq, [~$$"fib"]
	; Movq, [~%Rax; Ind3 (Lit 8L, Rsp)]
	; Movq, [Ind2 Rsp; ~%Rdi]

	; Decq, [~%Rdi]
	; Callq, [~$$"fib"]
	; Addq, [Ind3 (Lit 8L, Rsp); ~%Rax]

	; Addq, [~$16; ~%Rsp]
	; Retq, []
	]
; text "base"
	[ Movq, [~%Rdi; ~%Rax]
	; Retq, []
	]
; text "main"
	[ Movq, [~$n; ~%Rdi]
	; Callq, [~$$"fib"]
	; Retq, []
	]
]

let stack =
[ text "main"
	[ Subq, [~$16; ~%Rsp]

	; Movq, [~$42; ~%Rax]
	; Movq, [~%Rax; Ind2 Rsp]
	; Decq, [~%Rax]

	; Movq, [~$69; Ind3 (Lit 8L, Rsp)]
	; Movq, [Ind2 Rsp; ~%Rax]

	; Addq, [Ind3 (Lit 8L, Rsp); ~%Rax]

	; Addq, [~$16; ~%Rsp]
	; Retq, []
	]
]

let ind2_test =
[ text "main"
	[ Movq, [~$4194328; ~%Rdi]
	; Movq, [Ind2 Rdi; ~%Rax]
	; Retq, []
	]
; data "num"
	[ Quad (Lit 99L)
	]
]

let provided_tests : suite = [
  Test ("Debug", [
    ("Retq", assert_eqf (fun () -> program_test myOwn) 0L);
    ("Mem_top", assert_eqf (fun () -> program_test myOwn2) 0L );
    ("Fact", assert_eqf (fun () -> program_test (factorial_iter 6)) 720L );
    ("Gcd",  assert_eqf (fun () -> program_test (gcd  25493 21463)) 13L );
    ("Rec Test: fibonacci", assert_eqf (fun () -> program_test  (fib 3)) 2L);
    ("Stack Test", assert_eqf (fun () -> program_test  stack) 111L);
    ("Ind2 Test", assert_eqf (fun () -> program_test  ind2_test) 99L);
  ]);

] 
