; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x i64] }*
  %_argc1298 = alloca i64
  store i64 %argc, i64* %_argc1298
  %_argv1299 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1299
  %_raw_array1300 = call i64* @oat_alloc_array(i64 3)
  %_array1301 = bitcast i64* %_raw_array1300 to { i64, [0 x i64] }*
  %_CArr_elem_21304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1301, i32 0, i32 1, i32 2
  store i64 999, i64* %_CArr_elem_21304
  %_CArr_elem_11303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1301, i32 0, i32 1, i32 1
  store i64 100, i64* %_CArr_elem_11303
  %_CArr_elem_01302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1301, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_01302
  store { i64, [0 x i64] }* %_array1301, { i64, [0 x i64] }** %a
  %_id1305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr1306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1305, i32 0, i32 1, i32 2
  %_idx_tmp1307 = load i64, i64* %_index_ptr1306
  ret i64 %_idx_tmp1307
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
