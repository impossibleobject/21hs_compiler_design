; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_retval432 = call i64 ()* @f2()
  %_433 = load i64 (), i64 ()* %_retval432
  ret i64 %_433
}

define i64 @f2() {
  %_retval429 = call i64 ()* @f3()
  %_430 = load i64 (), i64 ()* %_retval429
  ret i64 %_430
}

define i64 @f3() {
  %_retval426 = call i64 ()* @f4()
  %_427 = load i64 (), i64 ()* %_retval426
  ret i64 %_427
}

define i64 @f4() {
  %_retval423 = call i64 ()* @f5()
  %_424 = load i64 (), i64 ()* %_retval423
  ret i64 %_424
}

define i64 @f5() {
  %_retval420 = call i64 ()* @f6()
  %_421 = load i64 (), i64 ()* %_retval420
  ret i64 %_421
}

define i64 @f6() {
  %_retval417 = call i64 ()* @f7()
  %_418 = load i64 (), i64 ()* %_retval417
  ret i64 %_418
}

define i64 @f7() {
  %_retval414 = call i64 ()* @f8()
  %_415 = load i64 (), i64 ()* %_retval414
  ret i64 %_415
}

define i64 @f8() {
  %_retval411 = call i64 ()* @f9()
  %_412 = load i64 (), i64 ()* %_retval411
  ret i64 %_412
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_402 = alloca i64
  store i64 %argc, i64* %_402
  %_argc401 = load i64, i64* %_402
  %_404 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_404
  %_argv403 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_404
  %_retval406 = call i64 ()* @f1()
  %_407 = load i64 (), i64 ()* %_retval406
  ret i64 %_407
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
