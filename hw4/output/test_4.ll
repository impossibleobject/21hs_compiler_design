; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc183 = alloca i64
  store i64 %argc, i64* %_argc183
  %_argv184 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv184
  %_187 = xor i64 -1, %_190
  store i64 5, i64* %_189
  %_190 = load i64, i64* %_189
  %_193 = load i64, i64* %_187
  store i64 6, i64* %_192
  %_194 = load i64, i64* %_192
  %_186 = and i64 %_193, %_194
  %_202 = load i64, i64* %_186
  store i64 2, i64* %_197
  %_200 = load i64, i64* %_197
  store i64 0, i64* %_199
  %_201 = load i64, i64* %_199
  %_195 = or i64 %_200, %_201
  %_203 = load i64, i64* %_195
  %_185 = icmp sge i64 %_202, %_203
  br i1 %_185, label %_then204, label %_else205
_then204:
  store i64 23, i64* %_208
  %_209 = load i64, i64* %_208
  ret i64 %_209
_else205:
  store i64 46, i64* %_211
  %_212 = load i64, i64* %_211
  ret i64 %_212
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
