; generated from: oatprograms/run31.oat
target triple = "x86_64-unknown-linux"
@i = global i64 9

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc309 = alloca i64
  store i64 %argc, i64* %_argc309
  %_argv310 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv310
  %_j311 = alloca i64
  store i64 9, i64* %_j311
  %_315 = load i64, i64* %_j311
  ret i64 %_315
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
