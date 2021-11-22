; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1383 = alloca { i64, [0 x i64] }*
  %_argc1381 = alloca i64
  store i64 %argc, i64* %_argc1381
  %_argv1382 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1382
  %_raw_array1384 = call i64* @oat_alloc_array(i64 3)
  %_array1385 = bitcast i64* %_raw_array1384 to { i64, [0 x i64] }*
  %_CArr_elem_21388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1385, i32 0, i32 1, i32 2
  store i64 999, i64* %_CArr_elem_21388
  %_CArr_elem_11387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1385, i32 0, i32 1, i32 1
  store i64 100, i64* %_CArr_elem_11387
  %_CArr_elem_01386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1385, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_01386
  store { i64, [0 x i64] }* %_array1385, { i64, [0 x i64] }** %_a1383
  %_id1389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1383
  %_index_ptr1390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1389, i32 0, i32 1, i32 2
  %_idx_tmp1391 = load i64, i64* %_index_ptr1390
  ret i64 %_idx_tmp1391
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
