; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1514 = alloca i64
  store i64 %x1, i64* %_x1514
  %_x2515 = alloca i64
  store i64 %x2, i64* %_x2515
  %_x3516 = alloca i64
  store i64 %x3, i64* %_x3516
  %_x4517 = alloca i64
  store i64 %x4, i64* %_x4517
  %_x5518 = alloca i64
  store i64 %x5, i64* %_x5518
  %_x6519 = alloca i64
  store i64 %x6, i64* %_x6519
  %_x7520 = alloca i64
  store i64 %x7, i64* %_x7520
  %_x8521 = alloca i64
  store i64 %x8, i64* %_x8521
  %_530 = load i64, i64* %_x1514
  %_532 = load i64, i64* %_x2515
  %_528 = add i64 %_530, %_532
  %_534 = load i64, i64* %_x3516
  %_527 = add i64 %_528, %_534
  %_536 = load i64, i64* %_x4517
  %_526 = add i64 %_527, %_536
  %_538 = load i64, i64* %_x5518
  %_525 = add i64 %_526, %_538
  %_540 = load i64, i64* %_x6519
  %_524 = add i64 %_525, %_540
  %_542 = load i64, i64* %_x7520
  %_523 = add i64 %_524, %_542
  %_544 = load i64, i64* %_x8521
  %_522 = add i64 %_523, %_544
  ret i64 %_522
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc498 = alloca i64
  store i64 %argc, i64* %_argc498
  %_argv499 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv499
  %_506 = sub i64 0, 5
  %_508 = sub i64 0, 4
  %_510 = sub i64 0, 3
  %_retval512 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_506, i64 %_508, i64 %_510)
  ret i64 %_retval512
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
