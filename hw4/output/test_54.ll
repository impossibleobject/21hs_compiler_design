; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc890 = alloca i64
  store i64 %argc, i64* %_argc890
  %_argv891 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv891
  %_raw_array892 = call i64* @oat_alloc_array(i64 3)
  %_array893 = bitcast i64* %_raw_array892 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array912 = call i64* @oat_alloc_array(i64 2)
  %_array913 = bitcast i64* %_raw_array912 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array918 = call i64* @oat_alloc_array(i64 2)
  %_array919 = bitcast i64* %_raw_array918 to { i64, [0 x i64] }*
  %_CArr_elem_1921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array919, i32 0, i32 1, i32 1
  store i64 40, i64* %_CArr_elem_1921
  %_CArr_elem_0920 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array919, i32 0, i32 1, i32 0
  store i64 30, i64* %_CArr_elem_0920
  %_CArr_elem_1923 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array913, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array919, { i64, [0 x i64] }** %_CArr_elem_1923
  %_raw_array914 = call i64* @oat_alloc_array(i64 2)
  %_array915 = bitcast i64* %_raw_array914 to { i64, [0 x i64] }*
  %_CArr_elem_1917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array915, i32 0, i32 1, i32 1
  store i64 20, i64* %_CArr_elem_1917
  %_CArr_elem_0916 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array915, i32 0, i32 1, i32 0
  store i64 10, i64* %_CArr_elem_0916
  %_CArr_elem_0922 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array913, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array915, { i64, [0 x i64] }** %_CArr_elem_0922
  %_CArr_elem_2926 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array893, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array913, { i64, [0 x { i64, [0 x i64] }*] }** %_CArr_elem_2926
  %_raw_array906 = call i64* @oat_alloc_array(i64 1)
  %_array907 = bitcast i64* %_raw_array906 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array908 = call i64* @oat_alloc_array(i64 1)
  %_array909 = bitcast i64* %_raw_array908 to { i64, [0 x i64] }*
  %_CArr_elem_0910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array909, i32 0, i32 1, i32 0
  store i64 5, i64* %_CArr_elem_0910
  %_CArr_elem_0911 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array907, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array909, { i64, [0 x i64] }** %_CArr_elem_0911
  %_CArr_elem_1925 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array893, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array907, { i64, [0 x { i64, [0 x i64] }*] }** %_CArr_elem_1925
  %_raw_array894 = call i64* @oat_alloc_array(i64 2)
  %_array895 = bitcast i64* %_raw_array894 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array900 = call i64* @oat_alloc_array(i64 2)
  %_array901 = bitcast i64* %_raw_array900 to { i64, [0 x i64] }*
  %_CArr_elem_1903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array901, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1903
  %_CArr_elem_0902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array901, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0902
  %_CArr_elem_1905 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array895, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array901, { i64, [0 x i64] }** %_CArr_elem_1905
  %_raw_array896 = call i64* @oat_alloc_array(i64 2)
  %_array897 = bitcast i64* %_raw_array896 to { i64, [0 x i64] }*
  %_CArr_elem_1899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array897, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1899
  %_CArr_elem_0898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array897, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0898
  %_CArr_elem_0904 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array895, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array897, { i64, [0 x i64] }** %_CArr_elem_0904
  %_CArr_elem_0924 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array893, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array895, { i64, [0 x { i64, [0 x i64] }*] }** %_CArr_elem_0924
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array893, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_id927 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_ptr928 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_id927, i32 0, i32 1, i32 2
  %_idx_tmp929 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_ptr928
  %_index_ptr930 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_idx_tmp929, i32 0, i32 1, i32 0
  %_idx_tmp931 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr930
  %_index_ptr932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp931, i32 0, i32 1, i32 1
  %_idx_tmp933 = load i64, i64* %_index_ptr932
  ret i64 %_idx_tmp933
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
