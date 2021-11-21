; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_retval1056 = call i64 @f2()
  ret i64 %_retval1056
}

define i64 @f2() {
  %_retval1053 = call i64 @f3()
  ret i64 %_retval1053
}

define i64 @f3() {
  %_retval1050 = call i64 @f4()
  ret i64 %_retval1050
}

define i64 @f4() {
  %_retval1047 = call i64 @f5()
  ret i64 %_retval1047
}

define i64 @f5() {
  %_retval1044 = call i64 @f6()
  ret i64 %_retval1044
}

define i64 @f6() {
  %_retval1041 = call i64 @f7()
  ret i64 %_retval1041
}

define i64 @f7() {
  %_retval1038 = call i64 @f8()
  ret i64 %_retval1038
}

define i64 @f8() {
  %_retval1035 = call i64 @f9()
  ret i64 %_retval1035
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1027 = alloca i64
  store i64 %argc, i64* %_argc1027
  %_argv1028 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1028
  %_retval1030 = call i64 @f1()
  ret i64 %_retval1030
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
