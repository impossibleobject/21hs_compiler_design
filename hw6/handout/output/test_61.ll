; generated from: oatprograms/run54.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x19003, i64 %_x29000, i64 %_x38997, i64 %_x48994, i64 %_x58991, i64 %_x68988, i64 %_x78985, i64 %_x88982) {
  %_x19004 = alloca i64
  %_x29001 = alloca i64
  %_x38998 = alloca i64
  %_x48995 = alloca i64
  store i64 %_x19003, i64* %_x19004
  store i64 %_x29000, i64* %_x29001
  store i64 %_x38997, i64* %_x38998
  store i64 %_x48994, i64* %_x48995
  %_x19006 = load i64, i64* %_x19004
  %_x29007 = load i64, i64* %_x29001
  %_bop9008 = add i64 %_x19006, %_x29007
  %_x39009 = load i64, i64* %_x38998
  %_bop9010 = add i64 %_bop9008, %_x39009
  %_x49011 = load i64, i64* %_x48995
  %_bop9012 = add i64 %_bop9010, %_x49011
  ret i64 %_bop9012
}

define i64 @program(i64 %_argc8975, { i64, [0 x i8*] }* %_argv8972) {
  %_result8981 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result8981
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
