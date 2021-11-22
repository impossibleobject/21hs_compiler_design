; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc851 = alloca i64
  store i64 %argc, i64* %_argc851
  %_argv852 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv852
  %_raw_array853 = call i64* @oat_alloc_array(i64 2)
  %_array854 = bitcast i64* %_raw_array853 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array859 = call i64* @oat_alloc_array(i64 2)
  %_array860 = bitcast i64* %_raw_array859 to { i64, [0 x i64] }*
  %_CArr_elem_1862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array860, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1862
  %_CArr_elem_0861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array860, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0861
  %_CArr_elem_1864 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array854, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array860, { i64, [0 x i64] }** %_CArr_elem_1864
  %_raw_array855 = call i64* @oat_alloc_array(i64 2)
  %_array856 = bitcast i64* %_raw_array855 to { i64, [0 x i64] }*
  %_CArr_elem_1858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array856, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1858
  %_CArr_elem_0857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array856, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0857
  %_CArr_elem_0863 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array854, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array856, { i64, [0 x i64] }** %_CArr_elem_0863
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array854, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_id865 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_index_ptr866 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id865, i32 0, i32 1, i32 1
  %_idx_tmp867 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr866
  %_index_ptr868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp867, i32 0, i32 1, i32 1
  %_idx_tmp869 = load i64, i64* %_index_ptr868
  ret i64 %_idx_tmp869
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
