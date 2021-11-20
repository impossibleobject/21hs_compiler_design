; generated from: oatprograms/run49.oat
target triple = "x86_64-unknown-linux"
@_str1458 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1453 = alloca i64
  store i64 %argc, i64* %_argc1453
  %_argv1454 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1454
  %_cstr1457 = bitcast [4 x i8]* %_str_tmp1459 to i8**
  %_str_tmp1459 = getelementptr [4 x i8], [4 x i8]* @_str1458, i32 0
  call void @print_string(i8** %_cstr1457)
  %_1462 = alloca i64
  store i64 0, i64* %_1462
  %_ret1463 = load i64, i64* %_1462
  ret i64 %_ret1463
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
