; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i368 = alloca i64
  %_j369 = alloca i64
  %_argc366 = alloca i64
  store i64 %argc, i64* %_argc366
  %_argv367 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv367
  store i64 9, i64* %_i368
  %_id371 = load i64, i64* %_i368
  %_id372 = load i64, i64* %_i368
  %_bop370 = add i64 %_id371, %_id372
  store i64 %_bop370, i64* %_j369
  %_id378 = load i64, i64* %_i368
  %_id380 = load i64, i64* %_i368
  %_id381 = load i64, i64* %_i368
  %_bop379 = mul i64 %_id380, %_id381
  %_bop377 = add i64 %_id378, %_bop379
  %_id382 = load i64, i64* %_j369
  %_bop376 = sub i64 %_bop377, %_id382
  %_bop375 = lshr i64 %_bop376, 2
  %_bop374 = shl i64 %_bop375, 2
  %_bop373 = ashr i64 %_bop374, 2
  ret i64 %_bop373
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
