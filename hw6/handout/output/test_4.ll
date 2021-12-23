; generated from: hw5programs/compile_func_argument.oat
target triple = "x86_64-unknown-linux"
define i64 @call(i64 (i64)* %_f7022, i64 %_arg7019) {
  %_f7023 = alloca i64 (i64)*
  %_arg7020 = alloca i64
  store i64 (i64)* %_f7022, i64 (i64)** %_f7023
  store i64 %_arg7019, i64* %_arg7020
  %_f7025 = load i64 (i64)*, i64 (i64)** %_f7023
  %_arg7026 = load i64, i64* %_arg7020
  %_result7027 = call i64 %_f7025(i64 %_arg7026)
  ret i64 %_result7027
}

define i64 @inc(i64 %_x7014) {
  %_x7015 = alloca i64
  store i64 %_x7014, i64* %_x7015
  %_x7017 = load i64, i64* %_x7015
  %_bop7018 = add i64 %_x7017, 1
  ret i64 %_bop7018
}

define i64 @program(i64 %_argc7010, { i64, [0 x i8*] }* %_argv7007) {
  %_result7013 = call i64 @call(i64 (i64)* @inc, i64 3)
  ret i64 %_result7013
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
