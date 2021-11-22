; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1325 = alloca i64
  %_a1326 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1374 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1323 = alloca i64
  store i64 %argc, i64* %_argc1323
  %_argv1324 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1324
  store i64 10, i64* %_x1325
  %_raw_array1327 = call i64* @oat_alloc_array(i64 3)
  %_array1328 = bitcast i64* %_raw_array1327 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1357 = call i64* @oat_alloc_array(i64 3)
  %_array1358 = bitcast i64* %_raw_array1357 to { i64, [0 x i64] }*
  %_id1367 = load i64, i64* %_x1325
  %_bop1366 = add i64 %_id1367, 2
  %_bop1365 = add i64 %_bop1366, 2
  %_CArr_elem_21370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1358, i32 0, i32 1, i32 2
  store i64 %_bop1365, i64* %_CArr_elem_21370
  %_id1364 = load i64, i64* %_x1325
  %_bop1363 = add i64 %_id1364, 2
  %_bop1362 = add i64 %_bop1363, 1
  %_CArr_elem_11369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1358, i32 0, i32 1, i32 1
  store i64 %_bop1362, i64* %_CArr_elem_11369
  %_id1361 = load i64, i64* %_x1325
  %_bop1360 = add i64 %_id1361, 2
  %_bop1359 = add i64 %_bop1360, 0
  %_CArr_elem_01368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1358, i32 0, i32 1, i32 0
  store i64 %_bop1359, i64* %_CArr_elem_01368
  %_CArr_elem_21373 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1328, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1358, { i64, [0 x i64] }** %_CArr_elem_21373
  %_raw_array1343 = call i64* @oat_alloc_array(i64 3)
  %_array1344 = bitcast i64* %_raw_array1343 to { i64, [0 x i64] }*
  %_id1353 = load i64, i64* %_x1325
  %_bop1352 = add i64 %_id1353, 1
  %_bop1351 = add i64 %_bop1352, 2
  %_CArr_elem_21356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 2
  store i64 %_bop1351, i64* %_CArr_elem_21356
  %_id1350 = load i64, i64* %_x1325
  %_bop1349 = add i64 %_id1350, 1
  %_bop1348 = add i64 %_bop1349, 1
  %_CArr_elem_11355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 1
  store i64 %_bop1348, i64* %_CArr_elem_11355
  %_id1347 = load i64, i64* %_x1325
  %_bop1346 = add i64 %_id1347, 1
  %_bop1345 = add i64 %_bop1346, 0
  %_CArr_elem_01354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1344, i32 0, i32 1, i32 0
  store i64 %_bop1345, i64* %_CArr_elem_01354
  %_CArr_elem_11372 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1328, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1344, { i64, [0 x i64] }** %_CArr_elem_11372
  %_raw_array1329 = call i64* @oat_alloc_array(i64 3)
  %_array1330 = bitcast i64* %_raw_array1329 to { i64, [0 x i64] }*
  %_id1339 = load i64, i64* %_x1325
  %_bop1338 = add i64 %_id1339, 0
  %_bop1337 = add i64 %_bop1338, 2
  %_CArr_elem_21342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1330, i32 0, i32 1, i32 2
  store i64 %_bop1337, i64* %_CArr_elem_21342
  %_id1336 = load i64, i64* %_x1325
  %_bop1335 = add i64 %_id1336, 0
  %_bop1334 = add i64 %_bop1335, 1
  %_CArr_elem_11341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1330, i32 0, i32 1, i32 1
  store i64 %_bop1334, i64* %_CArr_elem_11341
  %_id1333 = load i64, i64* %_x1325
  %_bop1332 = add i64 %_id1333, 0
  %_bop1331 = add i64 %_bop1332, 0
  %_CArr_elem_01340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1330, i32 0, i32 1, i32 0
  store i64 %_bop1331, i64* %_CArr_elem_01340
  %_CArr_elem_01371 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1328, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1330, { i64, [0 x i64] }** %_CArr_elem_01371
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1328, { i64, [0 x { i64, [0 x i64] }*] }** %_a1326
  %_id1375 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1326
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id1375, { i64, [0 x { i64, [0 x i64] }*] }** %_b1374
  %_id1376 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1374
  %_index_ptr1377 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1376, i32 0, i32 1, i32 2
  %_idx_tmp1378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1377
  %_index_ptr1379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1378, i32 0, i32 1, i32 1
  %_idx_tmp1380 = load i64, i64* %_index_ptr1379
  ret i64 %_idx_tmp1380
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
