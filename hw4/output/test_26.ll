; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1507 = alloca i64
  store i64 %x1, i64* %_x1507
  %_x2508 = alloca i64
  store i64 %x2, i64* %_x2508
  %_x3509 = alloca i64
  store i64 %x3, i64* %_x3509
  %_x4510 = alloca i64
  store i64 %x4, i64* %_x4510
  %_x5511 = alloca i64
  store i64 %x5, i64* %_x5511
  %_x6512 = alloca i64
  store i64 %x6, i64* %_x6512
  %_x7513 = alloca i64
  store i64 %x7, i64* %_x7513
  %_x8514 = alloca i64
  store i64 %x8, i64* %_x8514
  %_523 = load i64, i64* %_x1507
  %_525 = load i64, i64* %_x2508
  %_521 = add i64 %_523, %_525
  %_527 = load i64, i64* %_x3509
  %_520 = add i64 %_521, %_527
  %_529 = load i64, i64* %_x4510
  %_519 = add i64 %_520, %_529
  %_531 = load i64, i64* %_x5511
  %_518 = add i64 %_519, %_531
  %_533 = load i64, i64* %_x6512
  %_517 = add i64 %_518, %_533
  %_535 = load i64, i64* %_x7513
  %_516 = add i64 %_517, %_535
  %_537 = load i64, i64* %_x8514
  %_515 = add i64 %_516, %_537
  ret i64 %_515
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc491 = alloca i64
  store i64 %argc, i64* %_argc491
  %_argv492 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv492
  %_499 = sub i64 0, 5
  %_501 = sub i64 0, 4
  %_503 = sub i64 0, 3
  %_retval505 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_499, i64 %_501, i64 %_503)
  ret i64 %_retval505
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
