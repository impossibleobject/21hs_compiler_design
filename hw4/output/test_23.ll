; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_retval413 = call i64 @f2()
  ret i64 %_retval413
}

define i64 @f2() {
  %_retval410 = call i64 @f3()
  ret i64 %_retval410
}

define i64 @f3() {
  %_retval407 = call i64 @f4()
  ret i64 %_retval407
}

define i64 @f4() {
  %_retval404 = call i64 @f5()
  ret i64 %_retval404
}

define i64 @f5() {
  %_retval401 = call i64 @f6()
  ret i64 %_retval401
}

define i64 @f6() {
  %_retval398 = call i64 @f7()
  ret i64 %_retval398
}

define i64 @f7() {
  %_retval395 = call i64 @f8()
  ret i64 %_retval395
}

define i64 @f8() {
  %_retval392 = call i64 @f9()
  ret i64 %_retval392
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc384 = alloca i64
  store i64 %argc, i64* %_argc384
  %_argv385 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv385
  %_retval387 = call i64 @f1()
  ret i64 %_retval387
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
