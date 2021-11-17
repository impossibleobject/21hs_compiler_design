; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_160 = alloca i64
  store i64 %argc, i64* %_160
  %_argc159 = load i64, i64* %_160
  %_162 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_162
  %_argv161 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_162
  %_163 = icmp ne i64 6, 5
  br i1 %_163, label %_then166, label %_else167
_then166:
  %_172 = xor i64 -1, %_173
  %_177 = sub i64 0, 6
  %_175 = lshr i64 5, %_177
  %_174 = shl i64 %_175, 9
  %_173 = ashr i64 %_174, 10
  %_171 = mul i64 %_172, 2
  %_170 = sub i64 %_171, 100
  %_169 = add i64 %_170, 6
  ret i64 %_169
_else167:
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
