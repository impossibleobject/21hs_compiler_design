; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_retval420 = call i64 @f2()
  ret i64 %_retval420
}

define i64 @f2() {
  %_retval417 = call i64 @f3()
  ret i64 %_retval417
}

define i64 @f3() {
  %_retval414 = call i64 @f4()
  ret i64 %_retval414
}

define i64 @f4() {
  %_retval411 = call i64 @f5()
  ret i64 %_retval411
}

define i64 @f5() {
  %_retval408 = call i64 @f6()
  ret i64 %_retval408
}

define i64 @f6() {
  %_retval405 = call i64 @f7()
  ret i64 %_retval405
}

define i64 @f7() {
  %_retval402 = call i64 @f8()
  ret i64 %_retval402
}

define i64 @f8() {
  %_retval399 = call i64 @f9()
  ret i64 %_retval399
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc391 = alloca i64
  store i64 %argc, i64* %_argc391
  %_argv392 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv392
  %_retval394 = call i64 @f1()
  ret i64 %_retval394
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
