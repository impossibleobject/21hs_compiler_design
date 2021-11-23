; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i369 = alloca i64
  %_j370 = alloca i64
  %_argc367 = alloca i64
  store i64 %argc, i64* %_argc367
  %_argv368 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv368
  store i64 9, i64* %_i369
  %_id372 = load i64, i64* %_i369
  %_id373 = load i64, i64* %_i369
  %_bop371 = add i64 %_id372, %_id373
  store i64 %_bop371, i64* %_j370
  %_id379 = load i64, i64* %_i369
  %_id381 = load i64, i64* %_i369
  %_id382 = load i64, i64* %_i369
  %_bop380 = mul i64 %_id381, %_id382
  %_bop378 = add i64 %_id379, %_bop380
  %_id383 = load i64, i64* %_j370
  %_bop377 = sub i64 %_bop378, %_id383
  %_bop376 = lshr i64 %_bop377, 2
  %_bop375 = shl i64 %_bop376, 2
  %_bop374 = ashr i64 %_bop375, 2
  ret i64 %_bop374
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
