open Assert
open Hellocaml

(* These tests are provided by you -- they will NOT be graded *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)
(**)
let provided_tests : suite = [
  Test ("Student-Provided Tests For Problem 1-3", [
    ("case1", assert_eqf (fun () -> 42) prob3_ans );
    ("case2", assert_eqf (fun () -> (42 - 17)) (prob3_case2 17) );
    ("case3", assert_eqf (fun () -> prob3_case3) 64);
  ]);

  Test ("Student-Provided Tests For Problem 4-4", 
    let e5 : exp = Mult(Neg(Var "b"), Neg(Var "l")) in
    let e6 : exp = Mult((Var "x"), (Var "y")) in
    let c1 : ctxt = [("b", 2L); ("l", 7L)] in [
    ("interpret1", assert_eqf (fun () -> interpret ctxt1 e1) 6L);
    ("interpret2", assert_eqf (fun () -> interpret ctxt1 e2) 4L);
    ("interpret3", (fun () -> try ignore (interpret ctxt1 e3); failwith "bad interpret" with Not_found -> ()));
    ("interpret4", assert_eqf (fun () -> interpret c1 e5) (interpret ctxt2 e6));
  ]);


  Test ("Student-Provided Tests For Problem 4-5", 
    let e7 : exp = Add(Var "x", Neg(Add(Var "x", Neg(Const 1L)))) in [
    ("optimize1", assert_eqf (fun () -> optimize (Add(Var "x", Var "y"))) (Add(Var "x", Var "y")));
    ("optimize2", assert_eqf (fun () -> optimize (Mult(Const 1L, Var "x"))) (Var "x"));
    ("optimize3", assert_eqf (fun () -> optimize (Add(Const 3L, Mult(Const 0L, Var "x")))) (Const 3L));
    ("optimize4", assert_eqf (fun () -> optimize (Neg(Neg(Var "x")))) (Var "x"));
    ("optimize5", assert_eqf (fun () -> optimize (Neg(Const 4L))) (Const (Int64.neg 4L)));
    ("optimize6", assert_eqf (fun () -> optimize (Neg(Const 0L))) (Const 0L));
    ("optimize7", assert_eqf (fun () -> optimize (e7)) e7);
  ]);
  
  (*("compile1", assert_eqf (fun () -> (run c (compile (e)))) (interpret c e));*)
  
  Test ("Student-Provided Tests For Problem 5", 
    let e4 : exp = Add(Var "b", Neg(e2)) in
    let e5 : exp = Mult(Neg(Var "b"), Neg(Var "l")) in
    let e6 : exp = Mult((Var "x"), (Var "y")) in
    let c1 : ctxt = [("b", 2L); ("l", 7L); ("x", 2L); ("y", 7L)] in
    let e7 : exp = Add(Var "x", Neg(Add(Var "x", Neg(Const 1L)))) in 
    let e8 : exp = Neg(Add(Add(Add(e1, e2), e7), Mult(e3, e4))) in [
    ("compile1", assert_eqf (fun () -> (run ctxt2 (compile (e1)))) (interpret ctxt2 e1));
    ("compile2", assert_eqf (fun () -> (run ctxt2 (compile (e2)))) (interpret ctxt2 e2));
    ("compile3", assert_eqf (fun () -> (run ctxt2 (compile (e3)))) (interpret ctxt2 e3));
    ("compile4", assert_eqf (fun () -> (run c1 (compile (e4)))) (interpret c1 e4));
    ("compile5", assert_eqf (fun () -> (run c1 (compile (e5)))) (interpret c1 e5));
    ("compile6", assert_eqf (fun () -> (run ctxt2 (compile (e6)))) (interpret ctxt2 e6));
    ("compile7", assert_eqf (fun () -> (run ctxt2 (compile (e7)))) (interpret ctxt2 e7));
    ("compile8", assert_eqf (fun () -> (run c1 (compile (e8)))) (interpret c1 e8));
  ]);
  
] 
 