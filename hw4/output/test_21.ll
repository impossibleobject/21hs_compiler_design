; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_retval383 = call i64 @f2()
  ret i64 %_retval383
}

define i64 @f2() {
  %_retval380 = call i64 @f3()
  ret i64 %_retval380
}

define i64 @f3() {
  %_retval377 = call i64 @f4()
  ret i64 %_retval377
}

define i64 @f4() {
  %_retval374 = call i64 @f5()
  ret i64 %_retval374
}

define i64 @f5() {
  %_retval371 = call i64 @f6()
  ret i64 %_retval371
}

define i64 @f6() {
  %_retval368 = call i64 @f7()
  ret i64 %_retval368
}

define i64 @f7() {
  %_retval365 = call i64 @f8()
  ret i64 %_retval365
}

define i64 @f8() {
  %_retval362 = call i64 @f9()
  ret i64 %_retval362
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc354 = alloca i64
  store i64 %argc, i64* %_argc354
  %_argv355 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv355
  %_retval357 = call i64 @f1()
  ret i64 %_retval357
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
