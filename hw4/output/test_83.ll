; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2230 = alloca { i64, [0 x i64] }*
  %_argc2228 = alloca i64
  store i64 %argc, i64* %_argc2228
  %_argv2229 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2229
  %_raw_array2231 = call i64* @oat_alloc_array(i64 10)
  %_array2232 = bitcast i64* %_raw_array2231 to { i64, [0 x i64] }*
  %_CArr_elem_92242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 9
  store i64 117, i64* %_CArr_elem_92242
  %_CArr_elem_82241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 8
  store i64 118, i64* %_CArr_elem_82241
  %_CArr_elem_72240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 7
  store i64 119, i64* %_CArr_elem_72240
  %_CArr_elem_62239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 6
  store i64 120, i64* %_CArr_elem_62239
  %_CArr_elem_52238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 5
  store i64 121, i64* %_CArr_elem_52238
  %_CArr_elem_42237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 4
  store i64 122, i64* %_CArr_elem_42237
  %_CArr_elem_32236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 3
  store i64 123, i64* %_CArr_elem_32236
  %_CArr_elem_22235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 2
  store i64 124, i64* %_CArr_elem_22235
  %_CArr_elem_12234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 1
  store i64 125, i64* %_CArr_elem_12234
  %_CArr_elem_02233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2232, i32 0, i32 1, i32 0
  store i64 126, i64* %_CArr_elem_02233
  store { i64, [0 x i64] }* %_array2232, { i64, [0 x i64] }** %_a2230
  %_id2243 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2230
  %_Call_retval2244 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2243)
  call void @print_string(i8* %_Call_retval2244)
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
