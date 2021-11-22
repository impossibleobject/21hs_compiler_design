; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1466 = alloca { i64, [0 x i64] }*
  %_str1472 = alloca i8*
  %_argc1464 = alloca i64
  store i64 %argc, i64* %_argc1464
  %_argv1465 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1465
  %_raw_array1467 = call i64* @oat_alloc_array(i64 3)
  %_array1468 = bitcast i64* %_raw_array1467 to { i64, [0 x i64] }*
  %_CArr_elem_21471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1468, i32 0, i32 1, i32 2
  store i64 110, i64* %_CArr_elem_21471
  %_CArr_elem_11470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1468, i32 0, i32 1, i32 1
  store i64 110, i64* %_CArr_elem_11470
  %_CArr_elem_01469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1468, i32 0, i32 1, i32 0
  store i64 110, i64* %_CArr_elem_01469
  store { i64, [0 x i64] }* %_array1468, { i64, [0 x i64] }** %_a1466
  %_id1473 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1466
  %_Call_retval1474 = call i8* @string_of_array({ i64, [0 x i64] }* %_id1473)
  store i8* %_Call_retval1474, i8** %_str1472
  %_id1475 = load i8*, i8** %_str1472
  call void @print_string(i8* %_id1475)
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
