; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr = alloca { i64, [0 x i64] }*
  %_argc876 = alloca i64
  store i64 %argc, i64* %_argc876
  %_argv877 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv877
  %_raw_array878 = call i64* @oat_alloc_array(i64 2)
  %_array879 = bitcast i64* %_raw_array878 to { i64, [0 x i64] }*
  %_CArr_elem_1881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array879, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1881
  %_CArr_elem_0880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array879, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0880
  store { i64, [0 x i64] }* %_array879, { i64, [0 x i64] }** %arr
  %_id882 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_index_ptr883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id882, i32 0, i32 1, i32 1
  %_idx_tmp884 = load i64, i64* %_index_ptr883
  ret i64 %_idx_tmp884
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
