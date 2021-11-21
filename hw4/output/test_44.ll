; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1937 = alloca i64
  store i64 %argc, i64* %_argc1937
  %_argv1938 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1938
  %_i1939 = alloca i64
  store i64 1, i64* %_i1939
  br label %_start1943
_start1943:
  %_id1941 = load i64, i64* %_i1939
  %_id1942 = load i64, i64* %_argc1937
  %_bop1940 = icmp slt i64 %_id1941, %_id1942
  br i1 %_bop1940, label %_body1944, label %_end1945
_body1944:
  %_index_ptr1948 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id1946, i32 0, i32 1, i64 %_id1947
  %_id1947 = load i64, i64* %_i1939
  %_id1946 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv1938
  call void @print_string(i8** %_index_ptr1948)
  %_id1952 = load i64, i64* %_i1939
  %_bop1951 = add i64 %_id1952, 1
  store i64 %_bop1951, i64* %_i1939
  br label %_start1943
_end1945:
  %_id1953 = load i64, i64* %_argc1937
  ret i64 %_id1953
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
