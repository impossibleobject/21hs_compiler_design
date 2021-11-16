; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc135 = alloca i64
  store i64 %argc, i64* %_argc135
  %_argv136 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv136
  %_137 = icmp ne i64 6, 5
  br i1 %_137, label %_then140, label %_else141
_then140:
  %_146 = xor i64 -1, %_147
  %_151 = sub i64 0, 6
  %_149 = lshr i64 5, %_151
  %_148 = shl i64 %_149, 9
  %_147 = ashr i64 %_148, 10
  %_145 = mul i64 %_146, 2
  %_144 = sub i64 %_145, 100
  %_143 = add i64 %_144, 6
  ret i64 %_143
_else141:
  ret i64 2
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
