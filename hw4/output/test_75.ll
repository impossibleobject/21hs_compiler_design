; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %str = alloca i8*
  %_argc1950 = alloca i64
  store i64 %argc, i64* %_argc1950
  %_argv1951 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1951
  store i64 110, i64* %_CArr_elem_01954
  %_CArr_elem_01954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1953, i32 0, i32 1, i32 0
  store i64 110, i64* %_CArr_elem_11955
  %_CArr_elem_11955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1953, i32 0, i32 1, i32 1
  store i64 110, i64* %_CArr_elem_21956
  %_CArr_elem_21956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1953, i32 0, i32 1, i32 2
  %_array1953 = bitcast i64* %_raw_array1952 to { i64, [0 x i64] }*
  %_raw_array1952 = call i64* @oat_alloc_array(i64 3)
  %_Call_retval1957 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1953)
  store i8* %_Call_retval1957, i8** %str
  %_id1958 = load i8*, i8** %str
  call void @print_string(i8* %_id1958)
  ret i64 0
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
