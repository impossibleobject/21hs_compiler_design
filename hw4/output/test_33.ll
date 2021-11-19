; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_str2592 = global [4 x i8] c"def\00"
@_str2589 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2582 = alloca i64
  store i64 %argc, i64* %_argc2582
  %_argv2583 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2583
  %_strs2584 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %_array2587, { i64, [0 x i8*] }** %_strs2584
  %_raw_array2586 = call i64* @oat_alloc_array(i64 2)
  %_array2587 = bitcast i64* %_raw_array2586 to { i64, [0 x i8*] }*
  %_2593 = getelementptr [4 x i8], [4 x i8]* @_str2592, i32 0, i32 0
  %_2595 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2587, i32 0, i32 1, i32 1
  store i8* %_2593, i8** %_2595
  %_2590 = getelementptr [4 x i8], [4 x i8]* @_str2589, i32 0, i32 0
  %_2594 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2587, i32 0, i32 1, i32 0
  store i8* %_2590, i8** %_2594
  %_2601 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2599, i32 0, i32 1, i32 0
  %_2602 = load i8, i8* %_2601
  %_2599 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs2584
  call void @print_string(i8* %_2602)
  ret i64 0
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
