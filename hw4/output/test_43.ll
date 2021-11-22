; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_id2054 = load i64, i64* 1
  %_bop2053 = add i64 %_id2054, 1
  store i64 %_bop2053, i64* %a
  %_id2055 = load i64, i64* 1
  ret i64 %_id2055
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2032 = alloca i64
  store i64 %argc, i64* %_argc2032
  %_argv2033 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2033
  %_b2034 = alloca { i64, [0 x i64] }*
  %_Call_retval2035 = call i64 @f()
  %_raw_array2036 = call i64* @oat_alloc_array(i64 %_Call_retval2035)
  %_array2037 = bitcast i64* %_raw_array2036 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2037, { i64, [0 x i64] }** %_b2034
  %_Call_retval2038 = call i64 @f()
  %_id2039 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2034
  %_index_ptr2040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2039, i32 0, i32 1, i32 0
  store i64 %_Call_retval2038, i64* %_index_ptr2040
  %_Call_retval2041 = call i64 @f()
  %_id2042 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2034
  %_index_ptr2043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2042, i32 0, i32 1, i32 1
  store i64 %_Call_retval2041, i64* %_index_ptr2043
  %_id2046 = load i64, i64* 1
  %_id2047 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2034
  %_index_ptr2048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2047, i32 0, i32 1, i32 0
  %_idx_tmp2049 = load i64, i64* %_index_ptr2048
  %_bop2045 = add i64 %_id2046, %_idx_tmp2049
  %_id2050 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2034
  %_index_ptr2051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2050, i32 0, i32 1, i32 1
  %_idx_tmp2052 = load i64, i64* %_index_ptr2051
  %_bop2044 = add i64 %_bop2045, %_idx_tmp2052
  ret i64 %_bop2044
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
