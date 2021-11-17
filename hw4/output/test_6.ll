; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_141 = alloca i64
  store i64 %argc, i64* %_141
  %_argc140 = load i64, i64* %_141
  %_143 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_143
  %_argv142 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_143
  %_146 = xor i64 -1, 5
  %_145 = and i64 %_146, 6
  %_149 = or i64 2, 0
  %_144 = icmp sge i64 %_145, %_149
  br i1 %_144, label %_then152, label %_else153
_then152:
  ret i64 23
_else153:
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
