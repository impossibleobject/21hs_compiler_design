; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_result8366 = call i64 @f2()
  ret i64 %_result8366
}

define i64 @f2() {
  %_result8365 = call i64 @f3()
  ret i64 %_result8365
}

define i64 @f3() {
  %_result8364 = call i64 @f4()
  ret i64 %_result8364
}

define i64 @f4() {
  %_result8363 = call i64 @f5()
  ret i64 %_result8363
}

define i64 @f5() {
  %_result8362 = call i64 @f6()
  ret i64 %_result8362
}

define i64 @f6() {
  %_result8361 = call i64 @f7()
  ret i64 %_result8361
}

define i64 @f7() {
  %_result8360 = call i64 @f8()
  ret i64 %_result8360
}

define i64 @f8() {
  %_result8359 = call i64 @f9()
  ret i64 %_result8359
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %_argc8355, { i64, [0 x i8*] }* %_argv8352) {
  %_result8358 = call i64 @f1()
  ret i64 %_result8358
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
