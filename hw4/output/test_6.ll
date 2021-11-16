; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc120 = alloca i64
  store i64 %argc, i64* %_argc120
  %_argv121 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv121
  %_124 = xor i64 -1, 5
  %_123 = and i64 %_124, 6
  %_127 = or i64 2, 0
  %_122 = icmp sge i64 %_123, %_127
  br i1 %_122, label %_then130, label %_else131
_then130:
  ret i64 23
_else131:
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
