; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17458, i64 %_x27455, i64 %_x37452, i64 %_x47449, i64 %_x57446, i64 %_x67443, i64 %_x77440, i64 %_x87437) {
  %_x17459 = alloca i64
  %_x27456 = alloca i64
  %_x37453 = alloca i64
  %_x47450 = alloca i64
  %_x57447 = alloca i64
  %_x67444 = alloca i64
  %_x77441 = alloca i64
  %_x87438 = alloca i64
  store i64 %_x17458, i64* %_x17459
  store i64 %_x27455, i64* %_x27456
  store i64 %_x37452, i64* %_x37453
  store i64 %_x47449, i64* %_x47450
  store i64 %_x57446, i64* %_x57447
  store i64 %_x67443, i64* %_x67444
  store i64 %_x77440, i64* %_x77441
  store i64 %_x87437, i64* %_x87438
  %_x17461 = load i64, i64* %_x17459
  %_x27462 = load i64, i64* %_x27456
  %_bop7463 = add i64 %_x17461, %_x27462
  %_x37464 = load i64, i64* %_x37453
  %_bop7465 = add i64 %_bop7463, %_x37464
  %_x47466 = load i64, i64* %_x47450
  %_bop7467 = add i64 %_bop7465, %_x47466
  %_x57468 = load i64, i64* %_x57447
  %_bop7469 = add i64 %_bop7467, %_x57468
  %_x67470 = load i64, i64* %_x67444
  %_bop7471 = add i64 %_bop7469, %_x67470
  %_x77472 = load i64, i64* %_x77441
  %_bop7473 = add i64 %_bop7471, %_x77472
  %_x87474 = load i64, i64* %_x87438
  %_bop7475 = add i64 %_bop7473, %_x87474
  ret i64 %_bop7475
}

define i64 @program(i64 %_argc7430, { i64, [0 x i8*] }* %_argv7427) {
  %_result7436 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result7436
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
