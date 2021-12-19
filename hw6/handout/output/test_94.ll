; generated from: oatprograms/run51.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17511, i64 %_x27508, i64 %_x37505, i64 %_x47502, i64 %_x57499, i64 %_x67496, i64 %_x77493, i64 %_x87490) {
  %_x17512 = alloca i64
  %_x27509 = alloca i64
  %_x37506 = alloca i64
  %_x47503 = alloca i64
  %_x57500 = alloca i64
  %_x67497 = alloca i64
  %_x77494 = alloca i64
  %_x87491 = alloca i64
  store i64 %_x17511, i64* %_x17512
  store i64 %_x27508, i64* %_x27509
  store i64 %_x37505, i64* %_x37506
  store i64 %_x47502, i64* %_x47503
  store i64 %_x57499, i64* %_x57500
  store i64 %_x67496, i64* %_x67497
  store i64 %_x77493, i64* %_x77494
  store i64 %_x87490, i64* %_x87491
  %_x17514 = load i64, i64* %_x17512
  %_x27515 = load i64, i64* %_x27509
  %_bop7516 = add i64 %_x17514, %_x27515
  %_x37517 = load i64, i64* %_x37506
  %_bop7518 = add i64 %_bop7516, %_x37517
  %_x47519 = load i64, i64* %_x47503
  %_bop7520 = add i64 %_bop7518, %_x47519
  %_x57521 = load i64, i64* %_x57500
  %_bop7522 = add i64 %_bop7520, %_x57521
  %_x67523 = load i64, i64* %_x67497
  %_bop7524 = add i64 %_bop7522, %_x67523
  %_x77525 = load i64, i64* %_x77494
  %_bop7526 = add i64 %_bop7524, %_x77525
  %_x87527 = load i64, i64* %_x87491
  %_bop7528 = add i64 %_bop7526, %_x87527
  ret i64 %_bop7528
}

define i64 @program(i64 %_argc7479, { i64, [0 x i8*] }* %_argv7476) {
  %_x7486 = alloca i64
  %_result7485 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  store i64 %_result7485, i64* %_x7486
  %_x7488 = load i64, i64* %_x7486
  call void @print_int(i64 %_x7488)
  ret i64 41
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
