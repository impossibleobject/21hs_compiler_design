; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr927 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr927
  %_id928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr927
  ret { i64, [0 x i64] }* %_id928
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %garr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %arr = alloca { i64, [0 x i64] }*
  %_argc904 = alloca i64
  store i64 %argc, i64* %_argc904
  %_argv905 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv905
  %_raw_array906 = call i64* @oat_alloc_array(i64 2)
  %_array907 = bitcast i64* %_raw_array906 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array913 = call i64* @oat_alloc_array(i64 3)
  %_array914 = bitcast i64* %_raw_array913 to { i64, [0 x i64] }*
  %_CArr_elem_2917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array914, i32 0, i32 1, i32 2
  store i64 6, i64* %_CArr_elem_2917
  %_CArr_elem_1916 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array914, i32 0, i32 1, i32 1
  store i64 5, i64* %_CArr_elem_1916
  %_CArr_elem_0915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array914, i32 0, i32 1, i32 0
  store i64 4, i64* %_CArr_elem_0915
  %_CArr_elem_1919 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array907, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array914, { i64, [0 x i64] }** %_CArr_elem_1919
  %_raw_array908 = call i64* @oat_alloc_array(i64 3)
  %_array909 = bitcast i64* %_raw_array908 to { i64, [0 x i64] }*
  %_CArr_elem_2912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array909, i32 0, i32 1, i32 2
  store i64 3, i64* %_CArr_elem_2912
  %_CArr_elem_1911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array909, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1911
  %_CArr_elem_0910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array909, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0910
  %_CArr_elem_0918 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array907, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array909, { i64, [0 x i64] }** %_CArr_elem_0918
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array907, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_idx_tmp922 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr921
  %_index_ptr921 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id920, i32 0, i32 1, i32 1
  %_id920 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_Call_retval923 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_idx_tmp922)
  store { i64, [0 x i64] }* %_Call_retval923, { i64, [0 x i64] }** %arr
  %_id924 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_index_ptr925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id924, i32 0, i32 1, i32 1
  %_idx_tmp926 = load i64, i64* %_index_ptr925
  ret i64 %_idx_tmp926
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
