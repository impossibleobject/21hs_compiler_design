; generated from: hw5programs/compile_array_fptr.oat
target triple = "x86_64-unknown-linux"
define i64 @add(i64 %_x7001, i64 %_y6998) {
  %_x7002 = alloca i64
  %_y6999 = alloca i64
  store i64 %_x7001, i64* %_x7002
  store i64 %_y6998, i64* %_y6999
  %_x7004 = load i64, i64* %_x7002
  %_y7005 = load i64, i64* %_y6999
  %_bop7006 = add i64 %_x7004, %_y7005
  ret i64 %_bop7006
}

define i64 @sub(i64 %_x6992, i64 %_y6989) {
  %_x6993 = alloca i64
  %_y6990 = alloca i64
  store i64 %_x6992, i64* %_x6993
  store i64 %_y6989, i64* %_y6990
  %_x6995 = load i64, i64* %_x6993
  %_y6996 = load i64, i64* %_y6990
  %_bop6997 = sub i64 %_x6995, %_y6996
  ret i64 %_bop6997
}

define i64 @program(i64 %_argc6972, { i64, [0 x i8*] }* %_argv6969) {
  %_ops6981 = alloca { i64, [0 x i64 (i64, i64)*] }*
  %_raw_array6975 = call i64* @oat_alloc_array(i64 2)
  %_array6976 = bitcast i64* %_raw_array6975 to { i64, [0 x i64 (i64, i64)*] }*
  %_ind6977 = getelementptr { i64, [0 x i64 (i64, i64)*] }, { i64, [0 x i64 (i64, i64)*] }* %_array6976, i32 0, i32 1, i32 0
  store i64 (i64, i64)* @add, i64 (i64, i64)** %_ind6977
  %_ind6979 = getelementptr { i64, [0 x i64 (i64, i64)*] }, { i64, [0 x i64 (i64, i64)*] }* %_array6976, i32 0, i32 1, i32 1
  store i64 (i64, i64)* @sub, i64 (i64, i64)** %_ind6979
  store { i64, [0 x i64 (i64, i64)*] }* %_array6976, { i64, [0 x i64 (i64, i64)*] }** %_ops6981
  %_ops6983 = load { i64, [0 x i64 (i64, i64)*] }*, { i64, [0 x i64 (i64, i64)*] }** %_ops6981
  %_tmp6985 = bitcast { i64, [0 x i64 (i64, i64)*] }* %_ops6983 to i64*
  call void @oat_assert_array_length(i64* %_tmp6985, i64 0)
  %_index_ptr6986 = getelementptr { i64, [0 x i64 (i64, i64)*] }, { i64, [0 x i64 (i64, i64)*] }* %_ops6983, i32 0, i32 1, i32 0
  %_index6987 = load i64 (i64, i64)*, i64 (i64, i64)** %_index_ptr6986
  %_result6988 = call i64 %_index6987(i64 1, i64 1)
  ret i64 %_result6988
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
