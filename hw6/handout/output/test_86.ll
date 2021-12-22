; generated from: hw5programs/compile_var_fptr.oat
target triple = "x86_64-unknown-linux"
define i64 @id(i64 %_x7109) {
  %_x7110 = alloca i64
  store i64 %_x7109, i64* %_x7110
  %_x7112 = load i64, i64* %_x7110
  ret i64 %_x7112
}

define i64 @program(i64 %_argc7102, { i64, [0 x i8*] }* %_argv7099) {
  %_id_local7105 = alloca i64 (i64)*
  store i64 (i64)* @id, i64 (i64)** %_id_local7105
  %_id_local7107 = load i64 (i64)*, i64 (i64)** %_id_local7105
  %_result7108 = call i64 %_id_local7107(i64 1)
  ret i64 %_result7108
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
