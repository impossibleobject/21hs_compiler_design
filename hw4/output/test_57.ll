; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr989 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr989
  %_id990 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr989
  ret { i64, [0 x i64] }* %_id990
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr966 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr981 = alloca { i64, [0 x i64] }*
  %_argc964 = alloca i64
  store i64 %argc, i64* %_argc964
  %_argv965 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv965
  %_raw_array967 = call i64* @oat_alloc_array(i64 2)
  %_array968 = bitcast i64* %_raw_array967 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array974 = call i64* @oat_alloc_array(i64 3)
  %_array975 = bitcast i64* %_raw_array974 to { i64, [0 x i64] }*
  %_CArr_elem_2978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array975, i32 0, i32 1, i32 2
  store i64 6, i64* %_CArr_elem_2978
  %_CArr_elem_1977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array975, i32 0, i32 1, i32 1
  store i64 5, i64* %_CArr_elem_1977
  %_CArr_elem_0976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array975, i32 0, i32 1, i32 0
  store i64 4, i64* %_CArr_elem_0976
  %_CArr_elem_1980 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array968, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array975, { i64, [0 x i64] }** %_CArr_elem_1980
  %_raw_array969 = call i64* @oat_alloc_array(i64 3)
  %_array970 = bitcast i64* %_raw_array969 to { i64, [0 x i64] }*
  %_CArr_elem_2973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array970, i32 0, i32 1, i32 2
  store i64 3, i64* %_CArr_elem_2973
  %_CArr_elem_1972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array970, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1972
  %_CArr_elem_0971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array970, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0971
  %_CArr_elem_0979 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array968, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array970, { i64, [0 x i64] }** %_CArr_elem_0979
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array968, { i64, [0 x { i64, [0 x i64] }*] }** %_garr966
  %_id982 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr966
  %_index_ptr983 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id982, i32 0, i32 1, i32 1
  %_idx_tmp984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr983
  %_Call_retval985 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_idx_tmp984)
  store { i64, [0 x i64] }* %_Call_retval985, { i64, [0 x i64] }** %_arr981
  %_id986 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr981
  %_index_ptr987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id986, i32 0, i32 1, i32 1
  %_idx_tmp988 = load i64, i64* %_index_ptr987
  ret i64 %_idx_tmp988
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
