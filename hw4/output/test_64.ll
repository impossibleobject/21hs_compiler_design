; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1406 = alloca { i64, [0 x i64] }*
  %_argc1404 = alloca i64
  store i64 %argc, i64* %_argc1404
  %_argv1405 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1405
  %_raw_array1407 = call i64* @oat_alloc_array(i64 3)
  %_array1408 = bitcast i64* %_raw_array1407 to { i64, [0 x i64] }*
  %_CArr_elem_21411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 2
  store i64 19, i64* %_CArr_elem_21411
  %_CArr_elem_11410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 1
  store i64 100, i64* %_CArr_elem_11410
  %_CArr_elem_01409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_01409
  store { i64, [0 x i64] }* %_array1408, { i64, [0 x i64] }** %_a1406
  %_id1412 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1406
  %_index_ptr1413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1412, i32 0, i32 1, i32 2
  %_idx_tmp1414 = load i64, i64* %_index_ptr1413
  ret i64 %_idx_tmp1414
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
