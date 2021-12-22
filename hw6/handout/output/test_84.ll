; generated from: hw5programs/compile_global_fptr_unordered.oat
target triple = "x86_64-unknown-linux"
@plus = global i64 (i64, i64)* @add

define i64 @add(i64 %_x7056, i64 %_y7053) {
  %_x7057 = alloca i64
  %_y7054 = alloca i64
  store i64 %_x7056, i64* %_x7057
  store i64 %_y7053, i64* %_y7054
  %_x7059 = load i64, i64* %_x7057
  %_y7060 = load i64, i64* %_y7054
  %_bop7061 = add i64 %_x7059, %_y7060
  ret i64 %_bop7061
}

define i64 @program(i64 %_argc7048, { i64, [0 x i8*] }* %_argv7045) {
  %_plus7051 = load i64 (i64, i64)*, i64 (i64, i64)** @plus
  %_result7052 = call i64 %_plus7051(i64 1, i64 1)
  ret i64 %_result7052
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
