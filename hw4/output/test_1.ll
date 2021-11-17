; generated from: oatprograms/easyrun2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_8 = alloca i64
  store i64 %argc, i64* %_8
  %_argc7 = load i64, i64* %_8
  %_10 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_10
  %_argv9 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_10
  %_11 = add i64 17, 18
  ret i64 %_11
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
