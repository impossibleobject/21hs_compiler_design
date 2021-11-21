; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_bop2048 = add i64 1, 1
  store i64 %_bop2048, i64* @a
  ret i64 %_bop2048
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2027 = alloca i64
  store i64 %argc, i64* %_argc2027
  %_argv2028 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2028
  %_b2029 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2032, { i64, [0 x i64] }** %_b2029
  %_Call_retval2030 = call i64 @f()
  %_raw_array2031 = call i64* @oat_alloc_array(i64 %_Call_retval2030)
  %_array2032 = bitcast i64* %_raw_array2031 to { i64, [0 x i64] }*
  %_id2033 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2029
  %_index_ptr2034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2033, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr2034
  %_id2035 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2029
  %_index_ptr2036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2035, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr2036
  %_id2040 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2029
  %_index_ptr2041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2040, i32 0, i32 1, i32 0
  %_2042 = load i64, i64* %_index_ptr2041
  %_bop2038 = add i64 1, %_2042
  %_id2043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2029
  %_index_ptr2044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2043, i32 0, i32 1, i32 1
  %_2045 = load i64, i64* %_index_ptr2044
  %_bop2037 = add i64 %_bop2038, %_2045
  ret i64 %_bop2037
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
