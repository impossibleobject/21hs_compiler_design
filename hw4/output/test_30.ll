; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_Call_retval649 = call i64 @f2()
  ret i64 %_Call_retval649
}

define i64 @f2() {
  %_Call_retval647 = call i64 @f3()
  ret i64 %_Call_retval647
}

define i64 @f3() {
  %_Call_retval645 = call i64 @f4()
  ret i64 %_Call_retval645
}

define i64 @f4() {
  %_Call_retval643 = call i64 @f5()
  ret i64 %_Call_retval643
}

define i64 @f5() {
  %_Call_retval641 = call i64 @f6()
  ret i64 %_Call_retval641
}

define i64 @f6() {
  %_Call_retval639 = call i64 @f7()
  ret i64 %_Call_retval639
}

define i64 @f7() {
  %_Call_retval637 = call i64 @f8()
  ret i64 %_Call_retval637
}

define i64 @f8() {
  %_Call_retval635 = call i64 @f9()
  ret i64 %_Call_retval635
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc630 = alloca i64
  store i64 %argc, i64* %_argc630
  %_argv631 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv631
  %_Call_retval632 = call i64 @f1()
  ret i64 %_Call_retval632
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
