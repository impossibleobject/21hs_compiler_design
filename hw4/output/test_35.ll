; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %s = alloca i64
  %i = alloca i64
  %j = alloca i64
  %_argc441 = alloca i64
  store i64 %argc, i64* %_argc441
  %_argv442 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv442
  %_raw_array443 = call i64* @oat_alloc_array(i64 3)
  %_array444 = bitcast i64* %_raw_array443 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array457 = call i64* @oat_alloc_array(i64 4)
  %_array458 = bitcast i64* %_raw_array457 to { i64, [0 x i64] }*
  %_CArr_elem_3462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array458, i32 0, i32 1, i32 3
  store i64 11, i64* %_CArr_elem_3462
  %_CArr_elem_2461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array458, i32 0, i32 1, i32 2
  store i64 10, i64* %_CArr_elem_2461
  %_CArr_elem_1460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array458, i32 0, i32 1, i32 1
  store i64 9, i64* %_CArr_elem_1460
  %_CArr_elem_0459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array458, i32 0, i32 1, i32 0
  store i64 8, i64* %_CArr_elem_0459
  %_CArr_elem_2465 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array444, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array458, { i64, [0 x i64] }** %_CArr_elem_2465
  %_raw_array451 = call i64* @oat_alloc_array(i64 4)
  %_array452 = bitcast i64* %_raw_array451 to { i64, [0 x i64] }*
  %_CArr_elem_3456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array452, i32 0, i32 1, i32 3
  store i64 7, i64* %_CArr_elem_3456
  %_CArr_elem_2455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array452, i32 0, i32 1, i32 2
  store i64 6, i64* %_CArr_elem_2455
  %_CArr_elem_1454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array452, i32 0, i32 1, i32 1
  store i64 5, i64* %_CArr_elem_1454
  %_CArr_elem_0453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array452, i32 0, i32 1, i32 0
  store i64 4, i64* %_CArr_elem_0453
  %_CArr_elem_1464 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array444, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array452, { i64, [0 x i64] }** %_CArr_elem_1464
  %_raw_array445 = call i64* @oat_alloc_array(i64 4)
  %_array446 = bitcast i64* %_raw_array445 to { i64, [0 x i64] }*
  %_CArr_elem_3450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 3
  store i64 3, i64* %_CArr_elem_3450
  %_CArr_elem_2449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_2449
  %_CArr_elem_1448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1448
  %_CArr_elem_0447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_0447
  %_CArr_elem_0463 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array444, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array446, { i64, [0 x i64] }** %_CArr_elem_0463
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array444, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %s
  store i64 0, i64* %i
  br label %_start468
_start468:
  %_id467 = load i64, i64* %i
  %_bop466 = icmp slt i64 %_id467, 3
  br i1 %_bop466, label %_body469, label %_end470
_body469:
  store i64 0, i64* %j
  br label %_start473
_start473:
  %_id472 = load i64, i64* %j
  %_bop471 = icmp slt i64 %_id472, 4
  br i1 %_bop471, label %_body474, label %_end475
_body474:
  %_id477 = load i64, i64* %s
  %_id478 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_id479 = load i64, i64* %i
  %_index_ptr480 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id478, i32 0, i32 1, i64 %_id479
  %_idx_tmp481 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr480
  %_id482 = load i64, i64* %j
  %_index_ptr483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp481, i32 0, i32 1, i64 %_id482
  %_idx_tmp484 = load i64, i64* %_index_ptr483
  %_bop476 = add i64 %_id477, %_idx_tmp484
  store i64 %_bop476, i64* %s
  %_id486 = load i64, i64* %j
  %_bop485 = add i64 %_id486, 1
  store i64 %_bop485, i64* %j
  br label %_start473
_end475:
  %_id488 = load i64, i64* %i
  %_bop487 = add i64 %_id488, 1
  store i64 %_bop487, i64* %i
  br label %_start468
_end470:
  %_id489 = load i64, i64* %s
  ret i64 %_id489
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
