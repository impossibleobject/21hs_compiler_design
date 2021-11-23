; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb1423 = global [4 x i8] c"def\00"
@_cstr_glb1421 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs1417 = alloca { i64, [0 x i8*] }*
  %_argc1415 = alloca i64
  store i64 %argc, i64* %_argc1415
  %_argv1416 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1416
  %_raw_array1418 = call i64* @oat_alloc_array(i64 2)
  %_array1419 = bitcast i64* %_raw_array1418 to { i64, [0 x i8*] }*
  %_cstr_loc1422 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1423, i32 0, i32 0
  %_CArr_elem_11425 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1419, i32 0, i32 1, i32 1
  store i8* %_cstr_loc1422, i8** %_CArr_elem_11425
  %_cstr_loc1420 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1421, i32 0, i32 0
  %_CArr_elem_01424 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1419, i32 0, i32 1, i32 0
  store i8* %_cstr_loc1420, i8** %_CArr_elem_01424
  store { i64, [0 x i8*] }* %_array1419, { i64, [0 x i8*] }** %_strs1417
  %_id1426 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1417
  %_index_ptr1427 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id1426, i32 0, i32 1, i32 0
  %_idx_tmp1428 = load i8*, i8** %_index_ptr1427
  call void @print_string(i8* %_idx_tmp1428)
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
