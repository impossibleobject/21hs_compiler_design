; generated from: oatprograms/run13.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x8348, i64 %_y8345) {
  %_x8349 = alloca i64
  store i64 %_x8348, i64* %_x8349
  %_x8351 = load i64, i64* %_x8349
  ret i64 %_x8351
}

define i64 @program(i64 %_argc8341, { i64, [0 x i8*] }* %_argv8338) {
  %_result8344 = call i64 @f(i64 1, i64 2)
  ret i64 %_result8344
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
