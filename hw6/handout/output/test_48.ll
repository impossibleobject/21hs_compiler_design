; generated from: hw5programs/compile_function_shadow.oat
target triple = "x86_64-unknown-linux"
define i64 @add(i64 %_arg17157, i64 %_arg27154) {
  %_arg17158 = alloca i64
  %_arg27155 = alloca i64
  store i64 %_arg17157, i64* %_arg17158
  store i64 %_arg27154, i64* %_arg27155
  %_arg17160 = load i64, i64* %_arg17158
  %_arg27161 = load i64, i64* %_arg27155
  %_bop7162 = add i64 %_arg17160, %_arg27161
  ret i64 %_bop7162
}

define i64 @mul(i64 %_arg17148, i64 %_arg27145) {
  %_arg17149 = alloca i64
  %_arg27146 = alloca i64
  store i64 %_arg17148, i64* %_arg17149
  store i64 %_arg27145, i64* %_arg27146
  %_arg17151 = load i64, i64* %_arg17149
  %_arg27152 = load i64, i64* %_arg27146
  %_bop7153 = mul i64 %_arg17151, %_arg27152
  ret i64 %_bop7153
}

define i64 @program(i64 %_argc7138, { i64, [0 x i8*] }* %_argv7135) {
  %_add7141 = alloca i64 (i64, i64)*
  store i64 (i64, i64)* @mul, i64 (i64, i64)** %_add7141
  %_add7143 = load i64 (i64, i64)*, i64 (i64, i64)** %_add7141
  %_result7144 = call i64 %_add7143(i64 3, i64 4)
  ret i64 %_result7144
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
