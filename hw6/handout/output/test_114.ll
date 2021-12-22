; generated from: oatprograms/run55.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x19044, i64 %_x29041, i64 %_x39038, i64 %_x49035, i64 %_x59032, i64 %_x69029, i64 %_x79026, i64 %_x89023) {
  %_x19045 = alloca i64
  %_x29042 = alloca i64
  %_x39039 = alloca i64
  store i64 %_x19044, i64* %_x19045
  store i64 %_x29041, i64* %_x29042
  store i64 %_x39038, i64* %_x39039
  %_x19047 = load i64, i64* %_x19045
  %_x29048 = load i64, i64* %_x29042
  %_bop9049 = add i64 %_x19047, %_x29048
  %_x39050 = load i64, i64* %_x39039
  %_bop9051 = add i64 %_bop9049, %_x39050
  ret i64 %_bop9051
}

define i64 @program(i64 %_argc9016, { i64, [0 x i8*] }* %_argv9013) {
  %_result9022 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result9022
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
