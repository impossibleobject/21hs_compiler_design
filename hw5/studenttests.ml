open Assert
open X86
open Driver
open Ll
open Backend
open Ast
open Tctxt

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let custom_ctxt1 = 
  let custom_field_ls1 = [
    {fieldName = "x"; ftyp = TInt};
    {fieldName = "y"; ftyp = TBool};
    {fieldName = "arr"; ftyp = TRef (RArray TInt)}
  ] in
  let custom_field_ls2 = [
    {fieldName = "x"; ftyp = TInt};
    {fieldName = "y"; ftyp = TBool};
    {fieldName = "arr"; ftyp = TRef (RArray TInt)}
  ] in
  let custom_field_ls3 = [
    {fieldName = "x"; ftyp = TInt};
    {fieldName = "y"; ftyp = TBool};
  ] in
  let add1 = Tctxt.add_struct Tctxt.empty "custom1" custom_field_ls1 in
  let add2 = Tctxt.add_struct add1 "custom2" custom_field_ls2 in
  let add3 = Tctxt.add_struct add2 "supercustom1" custom_field_ls3 in
  add3

let custom_ctxt2 = 
  let custom_field_ls1 = [
    {fieldName = "x"; ftyp = TInt};
    {fieldName = "y"; ftyp = TBool};
    {fieldName = "arr"; ftyp = TRef (RArray TInt)}
    ] in
  let custom_field_ls2 = [
    {fieldName = "y"; ftyp = TInt};
    {fieldName = "arr"; ftyp = TRef (RString)}
  ] in
  let add1 = Tctxt.add_struct Tctxt.empty "custom1" custom_field_ls1 in
  let add2 = Tctxt.add_struct add1 "custom2" custom_field_ls2 in
  add2

let custom_ctxt3 = 
  let custom_field_ls1 = [
    {fieldName = "x"; ftyp = TInt};
    {fieldName = "y"; ftyp = TBool};
    {fieldName = "arr"; ftyp = TRef (RArray TInt)}
  ] in
  let custom_field_ls2 = [
    {fieldName = "x"; ftyp = TBool};
    {fieldName = "y"; ftyp = TInt};
    {fieldName = "arr"; ftyp = TRef (RArray TInt)}
  ] in
  let add1 = Tctxt.add_struct Tctxt.empty "custom1" custom_field_ls1 in
  let add2 = Tctxt.add_struct add1 "custom2" custom_field_ls2 in
  add2

let subtype_unit_tests = [
    (*#1*)("subtype_string_stringQ",
    (fun () ->
        if Typechecker.subtype Tctxt.empty (TRef RString) (TNullRef RString) then ()
        else failwith "should not fail")  
  )                                                                                   
  ; (*#2*)("no_subtype_bool_int",
    (fun () ->
        if Typechecker.subtype Tctxt.empty (TBool) (TInt) then
          failwith "should not succeed" else ())
  )
  ; (*#3*)("no_subtype_string_bool",
  (fun () ->
      if Typechecker.subtype Tctxt.empty (TRef RString) (TBool) then
        failwith "should not succeed" else ())
  )
  ; (*#4*)("subtype_fun_fun",
  (fun () ->
      if Typechecker.subtype Tctxt.empty (TRef (RFun ([TInt; TBool], RetVoid))) 
        (TRef (RFun ([TInt; TBool], RetVoid))) then
        () else failwith "should not fail")
  )
  ; (*#5*)("no_subtype_fun_fun",
  (fun () ->
      if Typechecker.subtype Tctxt.empty (TRef (RFun ([TInt; TBool], (RetVal TInt)))) 
        (TRef (RFun ([TInt; TBool], RetVoid))) then
        failwith "should not succeed" else ())
  )
  ; (*#6*)("subtype_fun_fun_2",
  (fun () ->
      if Typechecker.subtype custom_ctxt1 (TRef (RFun ([TRef (RStruct "custom1"); TBool], RetVoid))) 
        (TRef (RFun ([TRef (RStruct "supercustom1"); TBool], RetVoid))) then
        () else failwith "should not fail")
  )
  ; (*#7*)("subtype_str_str",
  (fun () ->
      if Typechecker.subtype custom_ctxt1 (TRef (RStruct "custom1")) (TRef (RStruct "custom2")) then
        () else failwith "should not fail")
  )
  ; (*#8*)("no_subtype_str_str",
  (fun () ->
      if Typechecker.subtype custom_ctxt2 (TRef (RStruct "custom1")) (TRef (RStruct "custom2")) then
        failwith "should not succeed" else ())
  )
  ; (*#9*)("no_subtype_str_str_2",
  (fun () ->
      if Typechecker.subtype custom_ctxt3 (TRef (RStruct "custom1")) (TRef (RStruct "custom2")) then
        failwith "should not succeed" else ())
  )
  ; (*#10*)("subtype_str_str_2",
  (fun () ->
      if Typechecker.subtype custom_ctxt1 (TRef (RStruct "custom1")) (TRef (RStruct "supercustom1")) then
        () else failwith "should not fail")
  )
  ; (*#11*)("no_subtype_str_str_3",
  (fun () ->
      if Typechecker.subtype custom_ctxt1 (TRef (RStruct "supercustom1")) (TRef (RStruct "custom1")) then
        failwith "should not succeed" else ())
  )
  ]

let dummy_node = no_loc TInt  

let typecheck_unit_tests = [
  (*#1*)("typecheck_int",
  (fun () ->
    try Typechecker.typecheck_ty dummy_node custom_ctxt1 TInt
    with _ -> failwith "should not fail")
  )
  ; (*#2*)("typecheck_bool",
  (fun () ->
    try Typechecker.typecheck_ty dummy_node custom_ctxt1 TBool
    with _ -> (failwith "should not fail"))
  )
  ; (*#3*)("typecheck_arr",
  (fun () ->
    try Typechecker.typecheck_ty dummy_node custom_ctxt1 (TRef (RArray TInt))
    with _ -> (failwith "should not fail"))
  )
  ; (*#4*)("typecheck_str",
  (fun () ->
    try Typechecker.typecheck_ty dummy_node custom_ctxt1 
      (TRef (RStruct "custom1"))
    with _ -> (failwith "should not fail"))
  )
  ; (*#5*)("no_typecheck_str",
  (fun () ->
    try Typechecker.typecheck_ty dummy_node custom_ctxt1 
      (TRef (RStruct "nonexistent"))
    with _ -> ())
  )
]  

let provided_tests : suite = [
  GradedTest("STUDENT subtype unit tests", 11, subtype_unit_tests);
  GradedTest("STUDENT typecheck_ty unit tests", 5, typecheck_unit_tests);
] 

