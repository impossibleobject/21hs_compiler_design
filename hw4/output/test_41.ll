; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3957 = alloca i64
  store i64 %argc, i64* %_argc3957
  %_argv3958 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3958
  %_a3959 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3962, { i64, [0 x i64] }** %_a3959
  %_raw_array3961 = call i64* @oat_alloc_array(i64 10)
  %_array3962 = bitcast i64* %_raw_array3961 to { i64, [0 x i64] }*
  %_3982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 9
  store i64 117, i64* %_3982
  %_3981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 8
  store i64 118, i64* %_3981
  %_3980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 7
  store i64 119, i64* %_3980
  %_3979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 6
  store i64 120, i64* %_3979
  %_3978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 5
  store i64 121, i64* %_3978
  %_3977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 4
  store i64 122, i64* %_3977
  %_3976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 3
  store i64 123, i64* %_3976
  %_3975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 2
  store i64 124, i64* %_3975
  %_3974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 1
  store i64 125, i64* %_3974
  %_3973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3962, i32 0, i32 1, i32 0
  store i64 126, i64* %_3973
  %_retval3987 = call i8* @string_of_array({ i64, [0 x i64] }* %_3986)
  %_3986 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3959
  call void @print_string(i8* %_retval3987)
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
