; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc64 = alloca i64
  store i64 %argc, i64* %_argc64
  %_argv65 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv65
  %_uop68 = xor i64 5, -1
  %_bop67 = and i64 %_uop68, 6
  %_bop69 = or i64 2, 0
  %_bop66 = icmp sge i64 %_bop67, %_bop69
  br i1 %_bop66, label %_then70, label %_else71
_then70:
  ret i64 23
_else71:
  ret i64 46
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
