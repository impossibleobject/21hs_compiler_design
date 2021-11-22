; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a428 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s452 = alloca i64
  %_i453 = alloca i64
  %_j459 = alloca i64
  %_argc426 = alloca i64
  store i64 %argc, i64* %_argc426
  %_argv427 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv427
  %_raw_array429 = call i64* @oat_alloc_array(i64 3)
  %_array430 = bitcast i64* %_raw_array429 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array443 = call i64* @oat_alloc_array(i64 4)
  %_array444 = bitcast i64* %_raw_array443 to { i64, [0 x i64] }*
  %_CArr_elem_3448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array444, i32 0, i32 1, i32 3
  store i64 11, i64* %_CArr_elem_3448
  %_CArr_elem_2447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array444, i32 0, i32 1, i32 2
  store i64 10, i64* %_CArr_elem_2447
  %_CArr_elem_1446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array444, i32 0, i32 1, i32 1
  store i64 9, i64* %_CArr_elem_1446
  %_CArr_elem_0445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array444, i32 0, i32 1, i32 0
  store i64 8, i64* %_CArr_elem_0445
  %_CArr_elem_2451 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array430, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array444, { i64, [0 x i64] }** %_CArr_elem_2451
  %_raw_array437 = call i64* @oat_alloc_array(i64 4)
  %_array438 = bitcast i64* %_raw_array437 to { i64, [0 x i64] }*
  %_CArr_elem_3442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 3
  store i64 7, i64* %_CArr_elem_3442
  %_CArr_elem_2441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 2
  store i64 6, i64* %_CArr_elem_2441
  %_CArr_elem_1440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 1
  store i64 5, i64* %_CArr_elem_1440
  %_CArr_elem_0439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array438, i32 0, i32 1, i32 0
  store i64 4, i64* %_CArr_elem_0439
  %_CArr_elem_1450 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array430, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array438, { i64, [0 x i64] }** %_CArr_elem_1450
  %_raw_array431 = call i64* @oat_alloc_array(i64 4)
  %_array432 = bitcast i64* %_raw_array431 to { i64, [0 x i64] }*
  %_CArr_elem_3436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array432, i32 0, i32 1, i32 3
  store i64 3, i64* %_CArr_elem_3436
  %_CArr_elem_2435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array432, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_2435
  %_CArr_elem_1434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array432, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1434
  %_CArr_elem_0433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array432, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_0433
  %_CArr_elem_0449 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array430, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array432, { i64, [0 x i64] }** %_CArr_elem_0449
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array430, { i64, [0 x { i64, [0 x i64] }*] }** %_a428
  store i64 0, i64* %_s452
  store i64 0, i64* %_i453
  br label %_start456
_start456:
  %_id455 = load i64, i64* %_i453
  %_bop454 = icmp slt i64 %_id455, 3
  br i1 %_bop454, label %_body457, label %_end458
_body457:
  store i64 0, i64* %_j459
  br label %_start462
_start462:
  %_id461 = load i64, i64* %_j459
  %_bop460 = icmp slt i64 %_id461, 4
  br i1 %_bop460, label %_body463, label %_end464
_body463:
  %_id466 = load i64, i64* %_s452
  %_id467 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a428
  %_id468 = load i64, i64* %_i453
  %_index_ptr469 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id467, i32 0, i32 1, i64 %_id468
  %_idx_tmp470 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr469
  %_id471 = load i64, i64* %_j459
  %_index_ptr472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp470, i32 0, i32 1, i64 %_id471
  %_idx_tmp473 = load i64, i64* %_index_ptr472
  %_bop465 = add i64 %_id466, %_idx_tmp473
  store i64 %_bop465, i64* %_s452
  %_id475 = load i64, i64* %_j459
  %_bop474 = add i64 %_id475, 1
  store i64 %_bop474, i64* %_j459
  br label %_start462
_end464:
  %_id477 = load i64, i64* %_i453
  %_bop476 = add i64 %_id477, 1
  store i64 %_bop476, i64* %_i453
  br label %_start456
_end458:
  %_id478 = load i64, i64* %_s452
  ret i64 %_id478
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
