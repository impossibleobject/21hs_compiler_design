; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_id1948 = load i64, i64* @a
  %_bop1947 = add i64 %_id1948, 1
  store i64 %_bop1947, i64* @a
  %_id1949 = load i64, i64* @a
  ret i64 %_id1949
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %b = alloca { i64, [0 x i64] }*
  %_argc1927 = alloca i64
  store i64 %argc, i64* %_argc1927
  %_argv1928 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1928
  %_Call_retval1929 = call i64 @f()
  %_raw_array1930 = call i64* @oat_alloc_array(i64 %_Call_retval1929)
  %_array1931 = bitcast i64* %_raw_array1930 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1931, { i64, [0 x i64] }** %b
  %_Call_retval1932 = call i64 @f()
  %_id1933 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_index_ptr1934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1933, i32 0, i32 1, i32 0
  store i64 %_Call_retval1932, i64* %_index_ptr1934
  %_Call_retval1935 = call i64 @f()
  %_id1936 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_index_ptr1937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1936, i32 0, i32 1, i32 1
  store i64 %_Call_retval1935, i64* %_index_ptr1937
  %_id1940 = load i64, i64* @a
  %_id1941 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_index_ptr1942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1941, i32 0, i32 1, i32 0
  %_idx_tmp1943 = load i64, i64* %_index_ptr1942
  %_bop1939 = add i64 %_id1940, %_idx_tmp1943
  %_id1944 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_index_ptr1945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1944, i32 0, i32 1, i32 1
  %_idx_tmp1946 = load i64, i64* %_index_ptr1945
  %_bop1938 = add i64 %_bop1939, %_idx_tmp1946
  ret i64 %_bop1938
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
