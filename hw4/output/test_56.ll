; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr946 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc944 = alloca i64
  store i64 %argc, i64* %_argc944
  %_argv945 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv945
  %_raw_array947 = call i64* @oat_alloc_array(i64 2)
  %_array948 = bitcast i64* %_raw_array947 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array953 = call i64* @oat_alloc_array(i64 2)
  %_array954 = bitcast i64* %_raw_array953 to { i64, [0 x i64] }*
  %_CArr_elem_1956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array954, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1956
  %_CArr_elem_0955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array954, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0955
  %_CArr_elem_1958 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array948, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array954, { i64, [0 x i64] }** %_CArr_elem_1958
  %_raw_array949 = call i64* @oat_alloc_array(i64 2)
  %_array950 = bitcast i64* %_raw_array949 to { i64, [0 x i64] }*
  %_CArr_elem_1952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array950, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1952
  %_CArr_elem_0951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array950, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0951
  %_CArr_elem_0957 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array948, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array950, { i64, [0 x i64] }** %_CArr_elem_0957
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array948, { i64, [0 x { i64, [0 x i64] }*] }** %_arr946
  %_id959 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr946
  %_index_ptr960 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id959, i32 0, i32 1, i32 1
  %_idx_tmp961 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr960
  %_index_ptr962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp961, i32 0, i32 1, i32 1
  %_idx_tmp963 = load i64, i64* %_index_ptr962
  ret i64 %_idx_tmp963
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
