; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1473 = alloca i64
  store i64 %x1, i64* %_x1473
  %_x2474 = alloca i64
  store i64 %x2, i64* %_x2474
  %_x3475 = alloca i64
  store i64 %x3, i64* %_x3475
  %_x4476 = alloca i64
  store i64 %x4, i64* %_x4476
  %_x5477 = alloca i64
  store i64 %x5, i64* %_x5477
  %_x6478 = alloca i64
  store i64 %x6, i64* %_x6478
  %_x7479 = alloca i64
  store i64 %x7, i64* %_x7479
  %_x8480 = alloca i64
  store i64 %x8, i64* %_x8480
  %_489 = load i64, i64* %_x1473
  %_491 = load i64, i64* %_x2474
  %_487 = add i64 %_489, %_491
  %_493 = load i64, i64* %_x3475
  %_486 = add i64 %_487, %_493
  %_495 = load i64, i64* %_x4476
  %_485 = add i64 %_486, %_495
  %_497 = load i64, i64* %_x5477
  %_484 = add i64 %_485, %_497
  %_499 = load i64, i64* %_x6478
  %_483 = add i64 %_484, %_499
  %_501 = load i64, i64* %_x7479
  %_482 = add i64 %_483, %_501
  %_503 = load i64, i64* %_x8480
  %_481 = add i64 %_482, %_503
  ret i64 %_481
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc457 = alloca i64
  store i64 %argc, i64* %_argc457
  %_argv458 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv458
  %_465 = sub i64 0, 5
  %_467 = sub i64 0, 4
  %_469 = sub i64 0, 3
  %_retval471 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_465, i64 %_467, i64 %_469)
  ret i64 %_retval471
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
