; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc885 = alloca i64
  store i64 %argc, i64* %_argc885
  %_argv886 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv886
  %_raw_array887 = call i64* @oat_alloc_array(i64 2)
  %_array888 = bitcast i64* %_raw_array887 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array893 = call i64* @oat_alloc_array(i64 2)
  %_array894 = bitcast i64* %_raw_array893 to { i64, [0 x i64] }*
  %_CArr_elem_1896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array894, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1896
  %_CArr_elem_0895 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array894, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0895
  %_CArr_elem_1898 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array888, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array894, { i64, [0 x i64] }** %_CArr_elem_1898
  %_raw_array889 = call i64* @oat_alloc_array(i64 2)
  %_array890 = bitcast i64* %_raw_array889 to { i64, [0 x i64] }*
  %_CArr_elem_1892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array890, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1892
  %_CArr_elem_0891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array890, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0891
  %_CArr_elem_0897 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array888, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array890, { i64, [0 x i64] }** %_CArr_elem_0897
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array888, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_id899 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_index_ptr900 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id899, i32 0, i32 1, i32 1
  %_idx_tmp901 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr900
  %_index_ptr902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp901, i32 0, i32 1, i32 1
  %_idx_tmp903 = load i64, i64* %_index_ptr902
  ret i64 %_idx_tmp903
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
