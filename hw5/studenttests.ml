open Assert
open X86
open Driver
open Ll
open Backend

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let unit_tests = [
    "subtype_string_stringQ",
    (fun () ->
        if Typechecker.subtype Tctxt.empty (TRef RString) (TNullRef RString) then ()
        else failwith "should not fail")                                                                                     
  ; ("no_subtype_bool_int",
    (fun () ->
        if Typechecker.subtype Tctxt.empty (TBool) (TInt) then
          failwith "should not succeed" else ())
    )
  ; ("no_subtype_string_bool",
  (fun () ->
      if Typechecker.subtype Tctxt.empty (TRef RString) (TBool) then
        failwith "should not succeed" else ())
  )
  ]

let provided_tests : suite = [
  GradedTest("STUDENT subtype unit tests", 3, unit_tests);
] 


