; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_retval379 = call i64 @f2()
  ret i64 %_retval379
}

define i64 @f2() {
  %_retval376 = call i64 @f3()
  ret i64 %_retval376
}

define i64 @f3() {
  %_retval373 = call i64 @f4()
  ret i64 %_retval373
}

define i64 @f4() {
  %_retval370 = call i64 @f5()
  ret i64 %_retval370
}

define i64 @f5() {
  %_retval367 = call i64 @f6()
  ret i64 %_retval367
}

define i64 @f6() {
  %_retval364 = call i64 @f7()
  ret i64 %_retval364
}

define i64 @f7() {
  %_retval361 = call i64 @f8()
  ret i64 %_retval361
}

define i64 @f8() {
  %_retval358 = call i64 @f9()
  ret i64 %_retval358
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc350 = alloca i64
  store i64 %argc, i64* %_argc350
  %_argv351 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv351
  %_retval353 = call i64 @f1()
  ret i64 %_retval353
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
