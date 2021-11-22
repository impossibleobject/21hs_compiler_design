; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc794 = alloca i64
  store i64 %argc, i64* %_argc794
  %_argv795 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv795
  %_raw_array796 = call i64* @oat_alloc_array(i64 2)
  %_array797 = bitcast i64* %_raw_array796 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array802 = call i64* @oat_alloc_array(i64 2)
  %_array803 = bitcast i64* %_raw_array802 to { i64, [0 x i64] }*
  %_CArr_elem_1805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array803, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1805
  %_CArr_elem_0804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array803, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0804
  %_CArr_elem_1807 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array797, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array803, { i64, [0 x i64] }** %_CArr_elem_1807
  %_raw_array798 = call i64* @oat_alloc_array(i64 2)
  %_array799 = bitcast i64* %_raw_array798 to { i64, [0 x i64] }*
  %_CArr_elem_1801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array799, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1801
  %_CArr_elem_0800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array799, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0800
  %_CArr_elem_0806 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array797, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array799, { i64, [0 x i64] }** %_CArr_elem_0806
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array797, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_id808 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_index_ptr809 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id808, i32 0, i32 1, i32 1
  %_idx_tmp810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr809
  %_index_ptr811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp810, i32 0, i32 1, i32 1
  %_idx_tmp812 = load i64, i64* %_index_ptr811
  ret i64 %_idx_tmp812
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
