; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc236 = alloca i64
  store i64 %argc, i64* %_argc236
  %_argv237 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv237
  %_i238 = alloca i64
  store i64 9, i64* %_i238
  %_j240 = alloca i64
  store i64 %_241, i64* %_j240
  %_243 = load i64, i64* %_i238
  %_245 = load i64, i64* %_i238
  %_241 = add i64 %_243, %_245
  %_252 = load i64, i64* %_i238
  %_255 = load i64, i64* %_i238
  %_257 = load i64, i64* %_i238
  %_253 = mul i64 %_255, %_257
  %_250 = add i64 %_252, %_253
  %_259 = load i64, i64* %_j240
  %_249 = sub i64 %_250, %_259
  %_248 = lshr i64 %_249, 2
  %_247 = shl i64 %_248, 2
  %_246 = ashr i64 %_247, 2
  ret i64 %_246
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
