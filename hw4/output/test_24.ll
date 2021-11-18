; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1477 = alloca i64
  store i64 %x1, i64* %_x1477
  %_x2478 = alloca i64
  store i64 %x2, i64* %_x2478
  %_x3479 = alloca i64
  store i64 %x3, i64* %_x3479
  %_x4480 = alloca i64
  store i64 %x4, i64* %_x4480
  %_x5481 = alloca i64
  store i64 %x5, i64* %_x5481
  %_x6482 = alloca i64
  store i64 %x6, i64* %_x6482
  %_x7483 = alloca i64
  store i64 %x7, i64* %_x7483
  %_x8484 = alloca i64
  store i64 %x8, i64* %_x8484
  %_493 = load i64, i64* %_x1477
  %_495 = load i64, i64* %_x2478
  %_491 = add i64 %_493, %_495
  %_497 = load i64, i64* %_x3479
  %_490 = add i64 %_491, %_497
  %_499 = load i64, i64* %_x4480
  %_489 = add i64 %_490, %_499
  %_501 = load i64, i64* %_x5481
  %_488 = add i64 %_489, %_501
  %_503 = load i64, i64* %_x6482
  %_487 = add i64 %_488, %_503
  %_505 = load i64, i64* %_x7483
  %_486 = add i64 %_487, %_505
  %_507 = load i64, i64* %_x8484
  %_485 = add i64 %_486, %_507
  ret i64 %_485
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc461 = alloca i64
  store i64 %argc, i64* %_argc461
  %_argv462 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv462
  %_469 = sub i64 0, 5
  %_471 = sub i64 0, 4
  %_473 = sub i64 0, 3
  %_retval475 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_469, i64 %_471, i64 %_473)
  ret i64 %_retval475
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
