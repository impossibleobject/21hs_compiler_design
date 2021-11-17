; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_304 = alloca i64
  store i64 %argc, i64* %_304
  %_argc303 = load i64, i64* %_304
  %_306 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_306
  %_argv305 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_306
  %_i307 = alloca i64
  store i64 9, i64* %_i307
  %_j309 = alloca i64
  store i64 %_310, i64* %_j309
  %_312 = load i64, i64* %_i307
  %_314 = load i64, i64* %_i307
  %_310 = add i64 %_312, %_314
  %_321 = load i64, i64* %_i307
  %_324 = load i64, i64* %_i307
  %_326 = load i64, i64* %_i307
  %_322 = mul i64 %_324, %_326
  %_319 = add i64 %_321, %_322
  %_328 = load i64, i64* %_j309
  %_318 = sub i64 %_319, %_328
  %_317 = lshr i64 %_318, 2
  %_316 = shl i64 %_317, 2
  %_315 = ashr i64 %_316, 2
  ret i64 %_315
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
