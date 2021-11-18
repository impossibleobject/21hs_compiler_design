; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc293 = alloca i64
  store i64 %argc, i64* %_argc293
  %_argv294 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv294
  %_i295 = alloca i64
  store i64 9, i64* %_i295
  %_j297 = alloca i64
  store i64 %_298, i64* %_j297
  %_300 = load i64, i64* %_i295
  %_302 = load i64, i64* %_i295
  %_298 = add i64 %_300, %_302
  %_309 = load i64, i64* %_i295
  %_312 = load i64, i64* %_i295
  %_314 = load i64, i64* %_i295
  %_310 = mul i64 %_312, %_314
  %_307 = add i64 %_309, %_310
  %_316 = load i64, i64* %_j297
  %_306 = sub i64 %_307, %_316
  %_305 = lshr i64 %_306, 2
  %_304 = shl i64 %_305, 2
  %_303 = ashr i64 %_304, 2
  ret i64 %_303
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
