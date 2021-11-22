; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x i64] }*
  %str = alloca i8*
  %_argc1374 = alloca i64
  store i64 %argc, i64* %_argc1374
  %_argv1375 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1375
  %_raw_array1376 = call i64* @oat_alloc_array(i64 3)
  %_array1377 = bitcast i64* %_raw_array1376 to { i64, [0 x i64] }*
  %_CArr_elem_21380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1377, i32 0, i32 1, i32 2
  store i64 110, i64* %_CArr_elem_21380
  %_CArr_elem_11379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1377, i32 0, i32 1, i32 1
  store i64 110, i64* %_CArr_elem_11379
  %_CArr_elem_01378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1377, i32 0, i32 1, i32 0
  store i64 110, i64* %_CArr_elem_01378
  store { i64, [0 x i64] }* %_array1377, { i64, [0 x i64] }** %a
  %_id1381 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_Call_retval1382 = call i8* @string_of_array({ i64, [0 x i64] }* %_id1381)
  store i8* %_Call_retval1382, i8** %str
  %_id1383 = load i8*, i8** %str
  call void @print_string(i8* %_id1383)
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
