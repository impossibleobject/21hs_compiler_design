; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc145 = alloca i64
  store i64 %argc, i64* %_argc145
  %_argv146 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv146
  %_147 = icmp ne i64 6, 5
  br i1 %_147, label %_then150, label %_else151
_then150:
  %_156 = xor i64 -1, %_157
  %_161 = sub i64 0, 6
  %_159 = lshr i64 5, %_161
  %_158 = shl i64 %_159, 9
  %_157 = ashr i64 %_158, 10
  %_155 = mul i64 %_156, 2
  %_154 = sub i64 %_155, 100
  %_153 = add i64 %_154, 6
  ret i64 %_153
_else151:
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
