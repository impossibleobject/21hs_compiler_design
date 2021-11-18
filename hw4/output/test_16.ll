; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc261 = alloca i64
  store i64 %argc, i64* %_argc261
  %_argv262 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv262
  %_i263 = alloca i64
  store i64 9, i64* %_i263
  %_j265 = alloca i64
  store i64 %_266, i64* %_j265
  %_268 = load i64, i64* %_i263
  %_270 = load i64, i64* %_i263
  %_266 = add i64 %_268, %_270
  %_277 = load i64, i64* %_i263
  %_280 = load i64, i64* %_i263
  %_282 = load i64, i64* %_i263
  %_278 = mul i64 %_280, %_282
  %_275 = add i64 %_277, %_278
  %_284 = load i64, i64* %_j265
  %_274 = sub i64 %_275, %_284
  %_273 = lshr i64 %_274, 2
  %_272 = shl i64 %_273, 2
  %_271 = ashr i64 %_272, 2
  ret i64 %_271
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
