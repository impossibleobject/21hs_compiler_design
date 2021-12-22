; generated from: hw5programs/compile_local_fptr.oat
target triple = "x86_64-unknown-linux"
define i64 @add(i64 %_x7129, i64 %_y7126) {
  %_x7130 = alloca i64
  %_y7127 = alloca i64
  store i64 %_x7129, i64* %_x7130
  store i64 %_y7126, i64* %_y7127
  %_x7132 = load i64, i64* %_x7130
  %_y7133 = load i64, i64* %_y7127
  %_bop7134 = add i64 %_x7132, %_y7133
  ret i64 %_bop7134
}

define i64 @program(i64 %_argc7116, { i64, [0 x i8*] }* %_argv7113) {
  %_plus7119 = alloca i64 (i64, i64)*
  %_loc_add7122 = alloca i64 (i64, i64)*
  store i64 (i64, i64)* @add, i64 (i64, i64)** %_plus7119
  %_plus7121 = load i64 (i64, i64)*, i64 (i64, i64)** %_plus7119
  store i64 (i64, i64)* %_plus7121, i64 (i64, i64)** %_loc_add7122
  %_loc_add7124 = load i64 (i64, i64)*, i64 (i64, i64)** %_loc_add7122
  %_result7125 = call i64 %_loc_add7124(i64 2, i64 3)
  ret i64 %_result7125
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
