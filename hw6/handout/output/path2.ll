; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc4, { i64, [0 x i8*] }* %_argv1) {
  %_x7 = alloca i64
  %_y9 = alloca i64
  store i64 17, i64* %_x7
  store i64 18, i64* %_y9
  %_x11 = load i64, i64* %_x7
  %_y12 = load i64, i64* %_y9
  %_bop13 = add i64 %_x11, %_y12
  ret i64 %_bop13
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
