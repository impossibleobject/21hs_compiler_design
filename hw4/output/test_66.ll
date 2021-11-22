; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb1448 = global [4 x i8] c"123\00"
@_cstr_glb1446 = global [4 x i8] c"789\00"
@_cstr_glb1440 = global [4 x i8] c"def\00"
@_cstr_glb1438 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs1432 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_argc1430 = alloca i64
  store i64 %argc, i64* %_argc1430
  %_argv1431 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1431
  %_raw_array1433 = call i64* @oat_alloc_array(i64 2)
  %_array1434 = bitcast i64* %_raw_array1433 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1443 = call i64* @oat_alloc_array(i64 2)
  %_array1444 = bitcast i64* %_raw_array1443 to { i64, [0 x i8*] }*
  %_cstr_loc1447 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1448, i32 0, i32 0
  %_CArr_elem_11450 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1444, i32 0, i32 1, i32 1
  store i8* %_cstr_loc1447, i8** %_CArr_elem_11450
  %_cstr_loc1445 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1446, i32 0, i32 0
  %_CArr_elem_01449 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1444, i32 0, i32 1, i32 0
  store i8* %_cstr_loc1445, i8** %_CArr_elem_01449
  %_CArr_elem_11452 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1434, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1444, { i64, [0 x i8*] }** %_CArr_elem_11452
  %_raw_array1435 = call i64* @oat_alloc_array(i64 2)
  %_array1436 = bitcast i64* %_raw_array1435 to { i64, [0 x i8*] }*
  %_cstr_loc1439 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1440, i32 0, i32 0
  %_CArr_elem_11442 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1436, i32 0, i32 1, i32 1
  store i8* %_cstr_loc1439, i8** %_CArr_elem_11442
  %_cstr_loc1437 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1438, i32 0, i32 0
  %_CArr_elem_01441 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1436, i32 0, i32 1, i32 0
  store i8* %_cstr_loc1437, i8** %_CArr_elem_01441
  %_CArr_elem_01451 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1434, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1436, { i64, [0 x i8*] }** %_CArr_elem_01451
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1434, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1432
  %_id1453 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1432
  %_index_ptr1454 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_id1453, i32 0, i32 1, i32 1
  %_idx_tmp1455 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_ptr1454
  %_index_ptr1456 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_idx_tmp1455, i32 0, i32 1, i32 1
  %_idx_tmp1457 = load i8*, i8** %_index_ptr1456
  call void @print_string(i8* %_idx_tmp1457)
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
