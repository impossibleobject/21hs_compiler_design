; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i623 = alloca i64
  store i64 %i, i64* %_i623
  %_id624 = load i64, i64* %_i623
  %_Call_retval625 = call i64 @f2(i64 %_id624)
  ret i64 %_Call_retval625
}

define i64 @f2(i64 %i) {
  %_i619 = alloca i64
  store i64 %i, i64* %_i619
  %_id620 = load i64, i64* %_i619
  %_Call_retval621 = call i64 @f3(i64 %_id620)
  ret i64 %_Call_retval621
}

define i64 @f3(i64 %i) {
  %_i615 = alloca i64
  store i64 %i, i64* %_i615
  %_id616 = load i64, i64* %_i615
  %_Call_retval617 = call i64 @f4(i64 %_id616)
  ret i64 %_Call_retval617
}

define i64 @f4(i64 %i) {
  %_i611 = alloca i64
  store i64 %i, i64* %_i611
  %_id612 = load i64, i64* %_i611
  %_Call_retval613 = call i64 @f5(i64 %_id612)
  ret i64 %_Call_retval613
}

define i64 @f5(i64 %i) {
  %_i607 = alloca i64
  store i64 %i, i64* %_i607
  %_id608 = load i64, i64* %_i607
  %_Call_retval609 = call i64 @f6(i64 %_id608)
  ret i64 %_Call_retval609
}

define i64 @f6(i64 %i) {
  %_i603 = alloca i64
  store i64 %i, i64* %_i603
  %_id604 = load i64, i64* %_i603
  %_Call_retval605 = call i64 @f7(i64 %_id604)
  ret i64 %_Call_retval605
}

define i64 @f7(i64 %i) {
  %_i599 = alloca i64
  store i64 %i, i64* %_i599
  %_id600 = load i64, i64* %_i599
  %_Call_retval601 = call i64 @f8(i64 %_id600)
  ret i64 %_Call_retval601
}

define i64 @f8(i64 %i) {
  %_i595 = alloca i64
  store i64 %i, i64* %_i595
  %_id596 = load i64, i64* %_i595
  %_Call_retval597 = call i64 @f9(i64 %_id596)
  ret i64 %_Call_retval597
}

define i64 @f9(i64 %i) {
  %_i592 = alloca i64
  store i64 %i, i64* %_i592
  %_id593 = load i64, i64* %_i592
  ret i64 %_id593
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc587 = alloca i64
  store i64 %argc, i64* %_argc587
  %_argv588 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv588
  %_id589 = load i64, i64* %_argc587
  %_Call_retval590 = call i64 @f1(i64 %_id589)
  ret i64 %_Call_retval590
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
