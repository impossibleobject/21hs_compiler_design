; generated from: oatprograms/run61.oat
target triple = "x86_64-unknown-linux"
@s = global [3 x i8] c"42\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1315 = alloca i64
  store i64 %argc, i64* %_argc1315
  %_argv1316 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1316
  %_1319 = getelementptr [3 x i8], [3 x i8]* @s, i32 0, i32 0
  call void @print_string(i8** %_1319)
  store i64 0, i64* %_1322
  %_1323 = load i64, i64* %_1322
  ret i64 %_1323
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
