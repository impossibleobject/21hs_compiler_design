; generated from: oatprograms/run52.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x18960, i64 %_x28957, i64 %_x38954, i64 %_x48951, i64 %_x58948, i64 %_x68945, i64 %_x78942, i64 %_x88939) {
  %_x18961 = alloca i64
  %_x28958 = alloca i64
  %_x38955 = alloca i64
  %_x48952 = alloca i64
  %_x58949 = alloca i64
  store i64 %_x18960, i64* %_x18961
  store i64 %_x28957, i64* %_x28958
  store i64 %_x38954, i64* %_x38955
  store i64 %_x48951, i64* %_x48952
  store i64 %_x58948, i64* %_x58949
  %_x18963 = load i64, i64* %_x18961
  %_x28964 = load i64, i64* %_x28958
  %_bop8965 = add i64 %_x18963, %_x28964
  %_x38966 = load i64, i64* %_x38955
  %_bop8967 = add i64 %_bop8965, %_x38966
  %_x48968 = load i64, i64* %_x48952
  %_bop8969 = add i64 %_bop8967, %_x48968
  %_x58970 = load i64, i64* %_x58949
  %_bop8971 = add i64 %_bop8969, %_x58970
  ret i64 %_bop8971
}

define i64 @program(i64 %_argc8932, { i64, [0 x i8*] }* %_argv8929) {
  %_result8938 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result8938
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
