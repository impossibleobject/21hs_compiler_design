; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_retval1040 = call i64 @f2()
  %_1041 = load i64, i64* %_retval1040
  ret i64 %_1041
}

define i64 @f2() {
  %_retval1037 = call i64 @f3()
  %_1038 = load i64, i64* %_retval1037
  ret i64 %_1038
}

define i64 @f3() {
  %_retval1034 = call i64 @f4()
  %_1035 = load i64, i64* %_retval1034
  ret i64 %_1035
}

define i64 @f4() {
  %_retval1031 = call i64 @f5()
  %_1032 = load i64, i64* %_retval1031
  ret i64 %_1032
}

define i64 @f5() {
  %_retval1028 = call i64 @f6()
  %_1029 = load i64, i64* %_retval1028
  ret i64 %_1029
}

define i64 @f6() {
  %_retval1025 = call i64 @f7()
  %_1026 = load i64, i64* %_retval1025
  ret i64 %_1026
}

define i64 @f7() {
  %_retval1022 = call i64 @f8()
  %_1023 = load i64, i64* %_retval1022
  ret i64 %_1023
}

define i64 @f8() {
  %_retval1019 = call i64 @f9()
  %_1020 = load i64, i64* %_retval1019
  ret i64 %_1020
}

define i64 @f9() {
  store i64 31, i64* %_1016
  %_1017 = load i64, i64* %_1016
  ret i64 %_1017
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1010 = alloca i64
  store i64 %argc, i64* %_argc1010
  %_argv1011 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1011
  %_retval1013 = call i64 @f1()
  %_1014 = load i64, i64* %_retval1013
  ret i64 %_1014
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
