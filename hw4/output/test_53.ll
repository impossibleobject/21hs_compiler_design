; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr872 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc870 = alloca i64
  store i64 %argc, i64* %_argc870
  %_argv871 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv871
  %_raw_array873 = call i64* @oat_alloc_array(i64 2)
  %_array874 = bitcast i64* %_raw_array873 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array879 = call i64* @oat_alloc_array(i64 2)
  %_array880 = bitcast i64* %_raw_array879 to { i64, [0 x i64] }*
  %_CArr_elem_1882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array880, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1882
  %_CArr_elem_0881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array880, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0881
  %_CArr_elem_1884 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array874, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array880, { i64, [0 x i64] }** %_CArr_elem_1884
  %_raw_array875 = call i64* @oat_alloc_array(i64 2)
  %_array876 = bitcast i64* %_raw_array875 to { i64, [0 x i64] }*
  %_CArr_elem_1878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array876, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1878
  %_CArr_elem_0877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array876, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0877
  %_CArr_elem_0883 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array874, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array876, { i64, [0 x i64] }** %_CArr_elem_0883
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array874, { i64, [0 x { i64, [0 x i64] }*] }** %_arr872
  %_id885 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr872
  %_index_ptr886 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id885, i32 0, i32 1, i32 0
  %_idx_tmp887 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr886
  %_index_ptr888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp887, i32 0, i32 1, i32 0
  %_idx_tmp889 = load i64, i64* %_index_ptr888
  ret i64 %_idx_tmp889
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
