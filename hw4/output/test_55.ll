; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr936 = alloca { i64, [0 x i64] }*
  %_argc934 = alloca i64
  store i64 %argc, i64* %_argc934
  %_argv935 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv935
  %_raw_array937 = call i64* @oat_alloc_array(i64 2)
  %_array938 = bitcast i64* %_raw_array937 to { i64, [0 x i64] }*
  %_CArr_elem_1940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array938, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1940
  %_CArr_elem_0939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array938, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0939
  store { i64, [0 x i64] }* %_array938, { i64, [0 x i64] }** %_arr936
  %_id941 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr936
  %_index_ptr942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id941, i32 0, i32 1, i32 1
  %_idx_tmp943 = load i64, i64* %_index_ptr942
  ret i64 %_idx_tmp943
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
