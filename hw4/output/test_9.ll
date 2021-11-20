; generated from: oatprograms/globals6.oat
target triple = "x86_64-unknown-linux"
@_str491 = global [7 x i8] c"hello!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc486 = alloca i64
  store i64 %argc, i64* %_argc486
  %_args487 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args487
  %_s488 = alloca i8*
  %_str_tmp492 = getelementptr [7 x i8], [7 x i8]* @_str491, i32 0
  %_cstr490 = bitcast [7 x i8]* %_str_tmp492 to i8**
  %_decl493 = load i8*, i8** %_cstr490
  store i8* %_decl493, i8** %_s488
  %_495 = alloca i64
  store i64 15, i64* %_495
  %_ret496 = load i64, i64* %_495
  ret i64 %_ret496
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
