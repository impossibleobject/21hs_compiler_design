; generated from: hw5programs/compile_builtin_argument.oat
target triple = "x86_64-unknown-linux"
@_str_arr7211 = global [3 x i8] c"ab\00"

define void @run2(void (i8*)* %_f7217, i8* %_arg7214) {
  %_f7218 = alloca void (i8*)*
  %_arg7215 = alloca i8*
  store void (i8*)* %_f7217, void (i8*)** %_f7218
  store i8* %_arg7214, i8** %_arg7215
  %_f7220 = load void (i8*)*, void (i8*)** %_f7218
  %_arg7221 = load i8*, i8** %_arg7215
  call void %_f7220(i8* %_arg7221)
  %_f7223 = load void (i8*)*, void (i8*)** %_f7218
  %_arg7224 = load i8*, i8** %_arg7215
  call void %_f7223(i8* %_arg7224)
  ret void
}

define i64 @program(i64 %_argc7208, { i64, [0 x i8*] }* %_argv7205) {
  %_str7212 = getelementptr [3 x i8], [3 x i8]* @_str_arr7211, i32 0, i32 0
  call void @run2(void (i8*)* @print_string, i8* %_str7212)
  ret i64 0
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
