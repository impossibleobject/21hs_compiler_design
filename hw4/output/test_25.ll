; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i353 = alloca { i64, [0 x i64] }*
  %_argc351 = alloca i64
  store i64 %argc, i64* %_argc351
  %_argv352 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv352
  %_raw_array354 = call i64* @oat_alloc_array(i64 2)
  %_array355 = bitcast i64* %_raw_array354 to { i64, [0 x i64] }*
  %_CArr_elem_1357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array355, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_1357
  %_CArr_elem_0356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array355, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_0356
  store { i64, [0 x i64] }* %_array355, { i64, [0 x i64] }** %_i353
  %_id358 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i353
  %_index_ptr359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id358, i32 0, i32 1, i32 0
  %_idx_tmp360 = load i64, i64* %_index_ptr359
  ret i64 %_idx_tmp360
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
