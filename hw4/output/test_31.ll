; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i687 = alloca i64
  store i64 %i, i64* %_i687
  %_id688 = load i64, i64* %_i687
  %_Call_retval689 = call i64 @f2(i64 %_id688)
  ret i64 %_Call_retval689
}

define i64 @f2(i64 %i) {
  %_i683 = alloca i64
  store i64 %i, i64* %_i683
  %_id684 = load i64, i64* %_i683
  %_Call_retval685 = call i64 @f3(i64 %_id684)
  ret i64 %_Call_retval685
}

define i64 @f3(i64 %i) {
  %_i679 = alloca i64
  store i64 %i, i64* %_i679
  %_id680 = load i64, i64* %_i679
  %_Call_retval681 = call i64 @f4(i64 %_id680)
  ret i64 %_Call_retval681
}

define i64 @f4(i64 %i) {
  %_i675 = alloca i64
  store i64 %i, i64* %_i675
  %_id676 = load i64, i64* %_i675
  %_Call_retval677 = call i64 @f5(i64 %_id676)
  ret i64 %_Call_retval677
}

define i64 @f5(i64 %i) {
  %_i671 = alloca i64
  store i64 %i, i64* %_i671
  %_id672 = load i64, i64* %_i671
  %_Call_retval673 = call i64 @f6(i64 %_id672)
  ret i64 %_Call_retval673
}

define i64 @f6(i64 %i) {
  %_i667 = alloca i64
  store i64 %i, i64* %_i667
  %_id668 = load i64, i64* %_i667
  %_Call_retval669 = call i64 @f7(i64 %_id668)
  ret i64 %_Call_retval669
}

define i64 @f7(i64 %i) {
  %_i663 = alloca i64
  store i64 %i, i64* %_i663
  %_id664 = load i64, i64* %_i663
  %_Call_retval665 = call i64 @f8(i64 %_id664)
  ret i64 %_Call_retval665
}

define i64 @f8(i64 %i) {
  %_i659 = alloca i64
  store i64 %i, i64* %_i659
  %_id660 = load i64, i64* %_i659
  %_Call_retval661 = call i64 @f9(i64 %_id660)
  ret i64 %_Call_retval661
}

define i64 @f9(i64 %i) {
  %_i656 = alloca i64
  store i64 %i, i64* %_i656
  %_id657 = load i64, i64* %_i656
  ret i64 %_id657
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc651 = alloca i64
  store i64 %argc, i64* %_argc651
  %_argv652 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv652
  %_id653 = load i64, i64* %_argc651
  %_Call_retval654 = call i64 @f1(i64 %_id653)
  ret i64 %_Call_retval654
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
