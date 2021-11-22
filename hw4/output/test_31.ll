; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i598 = alloca i64
  store i64 %i, i64* %_i598
  %_id599 = load i64, i64* %_i598
  %_Call_retval600 = call i64 @f2(i64 %_id599)
  ret i64 %_Call_retval600
}

define i64 @f2(i64 %i) {
  %_i595 = alloca i64
  store i64 %i, i64* %_i595
  %_id596 = load i64, i64* %_i595
  %_Call_retval597 = call i64 @f3(i64 %_id596)
  ret i64 %_Call_retval597
}

define i64 @f3(i64 %i) {
  %_i592 = alloca i64
  store i64 %i, i64* %_i592
  %_id593 = load i64, i64* %_i592
  %_Call_retval594 = call i64 @f4(i64 %_id593)
  ret i64 %_Call_retval594
}

define i64 @f4(i64 %i) {
  %_i589 = alloca i64
  store i64 %i, i64* %_i589
  %_id590 = load i64, i64* %_i589
  %_Call_retval591 = call i64 @f5(i64 %_id590)
  ret i64 %_Call_retval591
}

define i64 @f5(i64 %i) {
  %_i586 = alloca i64
  store i64 %i, i64* %_i586
  %_id587 = load i64, i64* %_i586
  %_Call_retval588 = call i64 @f6(i64 %_id587)
  ret i64 %_Call_retval588
}

define i64 @f6(i64 %i) {
  %_i583 = alloca i64
  store i64 %i, i64* %_i583
  %_id584 = load i64, i64* %_i583
  %_Call_retval585 = call i64 @f7(i64 %_id584)
  ret i64 %_Call_retval585
}

define i64 @f7(i64 %i) {
  %_i580 = alloca i64
  store i64 %i, i64* %_i580
  %_id581 = load i64, i64* %_i580
  %_Call_retval582 = call i64 @f8(i64 %_id581)
  ret i64 %_Call_retval582
}

define i64 @f8(i64 %i) {
  %_i577 = alloca i64
  store i64 %i, i64* %_i577
  %_id578 = load i64, i64* %_i577
  %_Call_retval579 = call i64 @f9(i64 %_id578)
  ret i64 %_Call_retval579
}

define i64 @f9(i64 %i) {
  %_i575 = alloca i64
  store i64 %i, i64* %_i575
  %_id576 = load i64, i64* %_i575
  ret i64 %_id576
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc571 = alloca i64
  store i64 %argc, i64* %_argc571
  %_argv572 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv572
  %_id573 = load i64, i64* %_argc571
  %_Call_retval574 = call i64 @f1(i64 %_id573)
  ret i64 %_Call_retval574
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
