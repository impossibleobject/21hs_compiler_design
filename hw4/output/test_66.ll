; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb1359 = global [4 x i8] c"123\00"
@_cstr_glb1357 = global [4 x i8] c"789\00"
@_cstr_glb1351 = global [4 x i8] c"def\00"
@_cstr_glb1349 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %strs = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_argc1342 = alloca i64
  store i64 %argc, i64* %_argc1342
  %_argv1343 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1343
  %_raw_array1344 = call i64* @oat_alloc_array(i64 2)
  %_array1345 = bitcast i64* %_raw_array1344 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1354 = call i64* @oat_alloc_array(i64 2)
  %_array1355 = bitcast i64* %_raw_array1354 to { i64, [0 x i8*] }*
  %_cstr_loc1358 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1359, i32 0, i32 0
  %_CArr_elem_11361 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1355, i32 0, i32 1, i32 1
  store i8* %_cstr_loc1358, i8** %_CArr_elem_11361
  %_cstr_loc1356 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1357, i32 0, i32 0
  %_CArr_elem_01360 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1355, i32 0, i32 1, i32 0
  store i8* %_cstr_loc1356, i8** %_CArr_elem_01360
  %_CArr_elem_11363 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1345, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1355, { i64, [0 x i8*] }** %_CArr_elem_11363
  %_raw_array1346 = call i64* @oat_alloc_array(i64 2)
  %_array1347 = bitcast i64* %_raw_array1346 to { i64, [0 x i8*] }*
  %_cstr_loc1350 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1351, i32 0, i32 0
  %_CArr_elem_11353 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1347, i32 0, i32 1, i32 1
  store i8* %_cstr_loc1350, i8** %_CArr_elem_11353
  %_cstr_loc1348 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1349, i32 0, i32 0
  %_CArr_elem_01352 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1347, i32 0, i32 1, i32 0
  store i8* %_cstr_loc1348, i8** %_CArr_elem_01352
  %_CArr_elem_01362 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1345, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1347, { i64, [0 x i8*] }** %_CArr_elem_01362
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1345, { i64, [0 x { i64, [0 x i8*] }*] }** %strs
  %_idx_tmp1368 = load i8*, i8** %_index_ptr1367
  %_index_ptr1367 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_idx_tmp1366, i32 0, i32 1, i32 1
  %_idx_tmp1366 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_ptr1365
  %_index_ptr1365 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_id1364, i32 0, i32 1, i32 1
  %_id1364 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %strs
  call void @print_string(i8* %_idx_tmp1368)
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
