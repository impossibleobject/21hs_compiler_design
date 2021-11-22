; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i611 = alloca i64
  store i64 %i, i64* %_i611
  %_id612 = load i64*, i64** %_i611
  %_Call_retval613 = call i64 @f2(i64* %_id612)
  ret i64 %_Call_retval613
}

define i64 @f2(i64 %i) {
  %_i608 = alloca i64
  store i64 %i, i64* %_i608
  %_id609 = load i64*, i64** %_i608
  %_Call_retval610 = call i64 @f3(i64* %_id609)
  ret i64 %_Call_retval610
}

define i64 @f3(i64 %i) {
  %_i605 = alloca i64
  store i64 %i, i64* %_i605
  %_id606 = load i64*, i64** %_i605
  %_Call_retval607 = call i64 @f4(i64* %_id606)
  ret i64 %_Call_retval607
}

define i64 @f4(i64 %i) {
  %_i602 = alloca i64
  store i64 %i, i64* %_i602
  %_id603 = load i64*, i64** %_i602
  %_Call_retval604 = call i64 @f5(i64* %_id603)
  ret i64 %_Call_retval604
}

define i64 @f5(i64 %i) {
  %_i599 = alloca i64
  store i64 %i, i64* %_i599
  %_id600 = load i64*, i64** %_i599
  %_Call_retval601 = call i64 @f6(i64* %_id600)
  ret i64 %_Call_retval601
}

define i64 @f6(i64 %i) {
  %_i596 = alloca i64
  store i64 %i, i64* %_i596
  %_id597 = load i64*, i64** %_i596
  %_Call_retval598 = call i64 @f7(i64* %_id597)
  ret i64 %_Call_retval598
}

define i64 @f7(i64 %i) {
  %_i593 = alloca i64
  store i64 %i, i64* %_i593
  %_id594 = load i64*, i64** %_i593
  %_Call_retval595 = call i64 @f8(i64* %_id594)
  ret i64 %_Call_retval595
}

define i64 @f8(i64 %i) {
  %_i590 = alloca i64
  store i64 %i, i64* %_i590
  %_id591 = load i64*, i64** %_i590
  %_Call_retval592 = call i64 @f9(i64* %_id591)
  ret i64 %_Call_retval592
}

define i64 @f9(i64 %i) {
  %_i588 = alloca i64
  store i64 %i, i64* %_i588
  %_id589 = load i64*, i64** %_i588
  ret i64 %_id589
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc584 = alloca i64
  store i64 %argc, i64* %_argc584
  %_argv585 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv585
  %_id586 = load i64*, i64** %_argc584
  %_Call_retval587 = call i64 @f1(i64* %_id586)
  ret i64 %_Call_retval587
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
