; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_115 = alloca i64
  store i64 %argc, i64* %_115
  %_argc114 = load i64, i64* %_115
  %_117 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_117
  %_argv116 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_117
  %_119 = icmp eq i1 0, 1
  %_124 = sub i64 0, 4
  %_123 = add i64 %_124, 5
  %_122 = icmp sgt i64 %_123, 0
  %_129 = mul i64 6, 4
  %_128 = icmp slt i64 %_129, 25
  %_121 = and i1 %_122, %_128
  %_118 = or i1 %_119, %_121
  br i1 %_118, label %_then133, label %_else134
_then133:
  ret i64 9
_else134:
  ret i64 4
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
