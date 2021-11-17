; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_542 = alloca i64
  store i64 %x1, i64* %_542
  %_x1541 = load i64, i64* %_542
  %_544 = alloca i64
  store i64 %x2, i64* %_544
  %_x2543 = load i64, i64* %_544
  %_546 = alloca i64
  store i64 %x3, i64* %_546
  %_x3545 = load i64, i64* %_546
  %_548 = alloca i64
  store i64 %x4, i64* %_548
  %_x4547 = load i64, i64* %_548
  %_550 = alloca i64
  store i64 %x5, i64* %_550
  %_x5549 = load i64, i64* %_550
  %_552 = alloca i64
  store i64 %x6, i64* %_552
  %_x6551 = load i64, i64* %_552
  %_554 = alloca i64
  store i64 %x7, i64* %_554
  %_x7553 = load i64, i64* %_554
  %_556 = alloca i64
  store i64 %x8, i64* %_556
  %_x8555 = load i64, i64* %_556
  %_563 = add i64 %_x1541, %_x2543
  %_562 = add i64 %_563, %_x3545
  %_561 = add i64 %_562, %_x4547
  %_560 = add i64 %_561, %_x5549
  %_559 = add i64 %_560, %_x6551
  %_558 = add i64 %_559, %_x7553
  %_557 = add i64 %_558, %_x8555
  ret i64 %_557
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_524 = alloca i64
  store i64 %argc, i64* %_524
  %_argc523 = load i64, i64* %_524
  %_526 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_526
  %_argv525 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_526
  %_533 = sub i64 0, 5
  %_535 = sub i64 0, 4
  %_537 = sub i64 0, 3
  %_retval539 = call i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_533, i64 %_535, i64 %_537)
  %_540 = load i64 (i64, i64, i64, i64, i64, i64, i64, i64), i64 (i64, i64, i64, i64, i64, i64, i64, i64)* %_retval539
  ret i64 %_540
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
