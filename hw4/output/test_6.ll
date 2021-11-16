; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc112 = alloca i64
  store i64 %argc, i64* %_argc112
  %_argv113 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv113
  %_114 = icmp ne i64 6, 5
  br i1 %_114, label %_then117, label %_else118
_then117:
  %_123 = xor i64 -1, %_124
  %_128 = sub i64 0, 6
  %_126 = lshr i64 5, %_128
  %_125 = shl i64 %_126, 9
  %_124 = ashr i64 %_125, 10
  %_122 = mul i64 %_123, 2
  %_121 = sub i64 %_122, 100
  %_120 = add i64 %_121, 6
  ret i64 %_120
_else118:
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
