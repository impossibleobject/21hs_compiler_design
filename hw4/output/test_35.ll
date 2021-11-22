; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_s504 = alloca i64
  %_i505 = alloca i64
  %_j511 = alloca i64
  %_argc479 = alloca i64
  store i64 %argc, i64* %_argc479
  %_argv480 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv480
  %_raw_array481 = call i64* @oat_alloc_array(i64 3)
  %_array482 = bitcast i64* %_raw_array481 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array495 = call i64* @oat_alloc_array(i64 4)
  %_array496 = bitcast i64* %_raw_array495 to { i64, [0 x i64] }*
  %_CArr_elem_3500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array496, i32 0, i32 1, i32 3
  store i64 11, i64* %_CArr_elem_3500
  %_CArr_elem_2499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array496, i32 0, i32 1, i32 2
  store i64 10, i64* %_CArr_elem_2499
  %_CArr_elem_1498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array496, i32 0, i32 1, i32 1
  store i64 9, i64* %_CArr_elem_1498
  %_CArr_elem_0497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array496, i32 0, i32 1, i32 0
  store i64 8, i64* %_CArr_elem_0497
  %_CArr_elem_2503 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array482, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array496, { i64, [0 x i64] }** %_CArr_elem_2503
  %_raw_array489 = call i64* @oat_alloc_array(i64 4)
  %_array490 = bitcast i64* %_raw_array489 to { i64, [0 x i64] }*
  %_CArr_elem_3494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 3
  store i64 7, i64* %_CArr_elem_3494
  %_CArr_elem_2493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 2
  store i64 6, i64* %_CArr_elem_2493
  %_CArr_elem_1492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 1
  store i64 5, i64* %_CArr_elem_1492
  %_CArr_elem_0491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array490, i32 0, i32 1, i32 0
  store i64 4, i64* %_CArr_elem_0491
  %_CArr_elem_1502 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array482, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array490, { i64, [0 x i64] }** %_CArr_elem_1502
  %_raw_array483 = call i64* @oat_alloc_array(i64 4)
  %_array484 = bitcast i64* %_raw_array483 to { i64, [0 x i64] }*
  %_CArr_elem_3488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array484, i32 0, i32 1, i32 3
  store i64 3, i64* %_CArr_elem_3488
  %_CArr_elem_2487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array484, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_2487
  %_CArr_elem_1486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array484, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1486
  %_CArr_elem_0485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array484, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_0485
  %_CArr_elem_0501 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array482, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array484, { i64, [0 x i64] }** %_CArr_elem_0501
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array482, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s504
  store i64 0, i64* %_i505
  br label %_start508
_start508:
  %_id507 = load i64, i64* %_i505
  %_bop506 = icmp slt i64 %_id507, 3
  br i1 %_bop506, label %_body509, label %_end510
_body509:
  store i64 0, i64* %_j511
  br label %_start514
_start514:
  %_id513 = load i64, i64* %_j511
  %_bop512 = icmp slt i64 %_id513, 4
  br i1 %_bop512, label %_body515, label %_end516
_body515:
  %_id518 = load i64, i64* %_s504
  %_id519 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_id520 = load i64, i64* %_i505
  %_index_ptr521 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id519, i32 0, i32 1, i64 %_id520
  %_idx_tmp522 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr521
  %_id523 = load i64, i64* %_j511
  %_index_ptr524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp522, i32 0, i32 1, i64 %_id523
  %_idx_tmp525 = load i64, i64* %_index_ptr524
  %_bop517 = add i64 %_id518, %_idx_tmp525
  store i64 %_bop517, i64* %_s504
  %_id527 = load i64, i64* %_j511
  %_bop526 = add i64 %_id527, 1
  store i64 %_bop526, i64* %_j511
  br label %_start514
_end516:
  %_id529 = load i64, i64* %_i505
  %_bop528 = add i64 %_id529, 1
  store i64 %_bop528, i64* %_i505
  br label %_start508
_end510:
  %_id530 = load i64, i64* %_s504
  ret i64 %_id530
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
