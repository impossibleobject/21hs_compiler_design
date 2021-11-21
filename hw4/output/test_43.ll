; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_bop2075 = add i64 1, 1
  store i64 %_bop2075, i64* @a
  ret i64 %_bop2075
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2052 = alloca i64
  store i64 %argc, i64* %_argc2052
  %_argv2053 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2053
  %_b2054 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2057, { i64, [0 x i64] }** %_b2054
  %_Call_retval2055 = call i64 @f()
  %_raw_array2056 = call i64* @oat_alloc_array(i64 %_Call_retval2055)
  %_array2057 = bitcast i64* %_raw_array2056 to { i64, [0 x i64] }*
  %_id2058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2054
  %_index_ptr2059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2058, i32 0, i32 1, i32 0
  %_Call_retval2060 = call i64 @f()
  store i64 %_Call_retval2060, i64* %_index_ptr2059
  %_id2061 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2054
  %_index_ptr2062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2061, i32 0, i32 1, i32 1
  %_Call_retval2063 = call i64 @f()
  store i64 %_Call_retval2063, i64* %_index_ptr2062
  %_id2067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2054
  %_index_ptr2068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2067, i32 0, i32 1, i32 0
  %_2069 = load i64, i64* %_index_ptr2068
  %_bop2065 = add i64 1, %_2069
  %_id2070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2054
  %_index_ptr2071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2070, i32 0, i32 1, i32 1
  %_2072 = load i64, i64* %_index_ptr2071
  %_bop2064 = add i64 %_bop2065, %_2072
  ret i64 %_bop2064
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
