; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a543 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc541 = alloca i64
  store i64 %argc, i64* %_argc541
  %_argv542 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv542
  %_raw_array544 = call i64* @oat_alloc_array(i64 2)
  %_array545 = bitcast i64* %_raw_array544 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array550 = call i64* @oat_alloc_array(i64 2)
  %_array551 = bitcast i64* %_raw_array550 to { i64, [0 x i64] }*
  %_CArr_elem_1553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array551, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1553
  %_CArr_elem_0552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array551, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0552
  %_CArr_elem_1555 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array545, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array551, { i64, [0 x i64] }** %_CArr_elem_1555
  %_raw_array546 = call i64* @oat_alloc_array(i64 2)
  %_array547 = bitcast i64* %_raw_array546 to { i64, [0 x i64] }*
  %_CArr_elem_1549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array547, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1549
  %_CArr_elem_0548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array547, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0548
  %_CArr_elem_0554 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array545, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array547, { i64, [0 x i64] }** %_CArr_elem_0554
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array545, { i64, [0 x { i64, [0 x i64] }*] }** %_a543
  %_id556 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a543
  %_index_ptr557 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id556, i32 0, i32 1, i32 0
  %_idx_tmp558 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr557
  %_index_ptr559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp558, i32 0, i32 1, i32 1
  %_idx_tmp560 = load i64, i64* %_index_ptr559
  ret i64 %_idx_tmp560
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
