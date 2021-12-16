; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %_array8505, i64 %_i8502, i64 %_len8499) {
  %_array8506 = alloca { i64, [0 x i64] }*
  %_i8503 = alloca i64
  %_len8500 = alloca i64
  %_l8510 = alloca i64
  %_r8514 = alloca i64
  %_tmp8516 = alloca i64
  %_m8519 = alloca i64
  store { i64, [0 x i64] }* %_array8505, { i64, [0 x i64] }** %_array8506
  store i64 %_i8502, i64* %_i8503
  store i64 %_len8499, i64* %_len8500
  %_i8508 = load i64, i64* %_i8503
  %_bop8509 = mul i64 %_i8508, 2
  store i64 %_bop8509, i64* %_l8510
  %_i8512 = load i64, i64* %_i8503
  %_bop8513 = add i64 %_i8512, 1
  store i64 %_bop8513, i64* %_r8514
  store i64 0, i64* %_tmp8516
  %_i8518 = load i64, i64* %_i8503
  store i64 %_i8518, i64* %_m8519
  %_l8521 = load i64, i64* %_l8510
  %_len8522 = load i64, i64* %_len8500
  %_bop8523 = icmp slt i64 %_l8521, %_len8522
  br i1 %_bop8523, label %_then8544, label %_else8543
_else8540:
  br label %_merge8539
_else8543:
  br label %_merge8542
_else8564:
  br label %_merge8563
_else8567:
  br label %_merge8566
_else8603:
  br label %_merge8602
_merge8539:
  br label %_merge8542
_merge8542:
  %_r8545 = load i64, i64* %_r8514
  %_len8546 = load i64, i64* %_len8500
  %_bop8547 = icmp slt i64 %_r8545, %_len8546
  br i1 %_bop8547, label %_then8568, label %_else8567
_merge8563:
  br label %_merge8566
_merge8566:
  %_m8569 = load i64, i64* %_m8519
  %_i8570 = load i64, i64* %_i8503
  %_bop8571 = icmp ne i64 %_m8569, %_i8570
  br i1 %_bop8571, label %_then8604, label %_else8603
_merge8602:
  ret void
_then8541:
  %_l8537 = load i64, i64* %_l8510
  store i64 %_l8537, i64* %_m8519
  br label %_merge8539
_then8544:
  %_array8524 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8506
  %_l8525 = load i64, i64* %_l8510
  %_tmp8527 = bitcast { i64, [0 x i64] }* %_array8524 to i64*
  call void @oat_assert_array_length(i64* %_tmp8527, i64 %_l8525)
  %_index_ptr8528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8524, i32 0, i32 1, i64 %_l8525
  %_index8529 = load i64, i64* %_index_ptr8528
  %_array8530 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8506
  %_m8531 = load i64, i64* %_m8519
  %_tmp8533 = bitcast { i64, [0 x i64] }* %_array8530 to i64*
  call void @oat_assert_array_length(i64* %_tmp8533, i64 %_m8531)
  %_index_ptr8534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8530, i32 0, i32 1, i64 %_m8531
  %_index8535 = load i64, i64* %_index_ptr8534
  %_bop8536 = icmp sgt i64 %_index8529, %_index8535
  br i1 %_bop8536, label %_then8541, label %_else8540
_then8565:
  %_r8561 = load i64, i64* %_r8514
  store i64 %_r8561, i64* %_m8519
  br label %_merge8563
_then8568:
  %_array8548 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8506
  %_r8549 = load i64, i64* %_r8514
  %_tmp8551 = bitcast { i64, [0 x i64] }* %_array8548 to i64*
  call void @oat_assert_array_length(i64* %_tmp8551, i64 %_r8549)
  %_index_ptr8552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8548, i32 0, i32 1, i64 %_r8549
  %_index8553 = load i64, i64* %_index_ptr8552
  %_array8554 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8506
  %_m8555 = load i64, i64* %_m8519
  %_tmp8557 = bitcast { i64, [0 x i64] }* %_array8554 to i64*
  call void @oat_assert_array_length(i64* %_tmp8557, i64 %_m8555)
  %_index_ptr8558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8554, i32 0, i32 1, i64 %_m8555
  %_index8559 = load i64, i64* %_index_ptr8558
  %_bop8560 = icmp sgt i64 %_index8553, %_index8559
  br i1 %_bop8560, label %_then8565, label %_else8564
_then8604:
  %_array8572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8506
  %_i8573 = load i64, i64* %_i8503
  %_tmp8575 = bitcast { i64, [0 x i64] }* %_array8572 to i64*
  call void @oat_assert_array_length(i64* %_tmp8575, i64 %_i8573)
  %_index_ptr8576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8572, i32 0, i32 1, i64 %_i8573
  %_index8577 = load i64, i64* %_index_ptr8576
  store i64 %_index8577, i64* %_tmp8516
  %_array8579 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8506
  %_i8580 = load i64, i64* %_i8503
  %_tmp8582 = bitcast { i64, [0 x i64] }* %_array8579 to i64*
  call void @oat_assert_array_length(i64* %_tmp8582, i64 %_i8580)
  %_index_ptr8583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8579, i32 0, i32 1, i64 %_i8580
  %_array8584 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8506
  %_m8585 = load i64, i64* %_m8519
  %_tmp8587 = bitcast { i64, [0 x i64] }* %_array8584 to i64*
  call void @oat_assert_array_length(i64* %_tmp8587, i64 %_m8585)
  %_index_ptr8588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8584, i32 0, i32 1, i64 %_m8585
  %_index8589 = load i64, i64* %_index_ptr8588
  store i64 %_index8589, i64* %_index_ptr8583
  %_array8591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8506
  %_m8592 = load i64, i64* %_m8519
  %_tmp8594 = bitcast { i64, [0 x i64] }* %_array8591 to i64*
  call void @oat_assert_array_length(i64* %_tmp8594, i64 %_m8592)
  %_index_ptr8595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8591, i32 0, i32 1, i64 %_m8592
  %_tmp8596 = load i64, i64* %_tmp8516
  store i64 %_tmp8596, i64* %_index_ptr8595
  %_len8598 = load i64, i64* %_len8500
  %_m8599 = load i64, i64* %_m8519
  %_array8600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8506
  call void @min_heapify({ i64, [0 x i64] }* %_array8600, i64 %_m8599, i64 %_len8598)
  br label %_merge8602
}

define void @make_min_heap({ i64, [0 x i64] }* %_array8481, i64 %_len8478) {
  %_array8482 = alloca { i64, [0 x i64] }*
  %_len8479 = alloca i64
  %_i8485 = alloca i64
  store { i64, [0 x i64] }* %_array8481, { i64, [0 x i64] }** %_array8482
  store i64 %_len8478, i64* %_len8479
  %_len8484 = load i64, i64* %_len8479
  store i64 %_len8484, i64* %_i8485
  br label %_cond8491
_body8490:
  %_len8492 = load i64, i64* %_len8479
  %_i8493 = load i64, i64* %_i8485
  %_array8494 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8482
  call void @min_heapify({ i64, [0 x i64] }* %_array8494, i64 %_i8493, i64 %_len8492)
  %_i8496 = load i64, i64* %_i8485
  %_bop8497 = sub i64 %_i8496, 1
  store i64 %_bop8497, i64* %_i8485
  br label %_cond8491
_cond8491:
  %_i8487 = load i64, i64* %_i8485
  %_bop8488 = icmp sge i64 %_i8487, 1
  br i1 %_bop8488, label %_body8490, label %_post8489
_post8489:
  ret void
}

define i64 @program(i64 %_argc8391, { i64, [0 x i8*] }* %_argv8388) {
  %_array8418 = alloca { i64, [0 x i64] }*
  %_end_result8444 = alloca { i64, [0 x i64] }*
  %_same8448 = alloca i64
  %_i8450 = alloca i64
  %_raw_array8394 = call i64* @oat_alloc_array(i64 11)
  %_array8395 = bitcast i64* %_raw_array8394 to { i64, [0 x i64] }*
  %_ind8396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind8396
  %_ind8398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind8398
  %_ind8400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind8400
  %_ind8402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind8402
  %_ind8404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind8404
  %_ind8406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 5
  store i64 10, i64* %_ind8406
  %_ind8408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind8408
  %_ind8410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind8410
  %_ind8412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind8412
  %_ind8414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 9
  store i64 4, i64* %_ind8414
  %_ind8416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8395, i32 0, i32 1, i32 10
  store i64 5, i64* %_ind8416
  store { i64, [0 x i64] }* %_array8395, { i64, [0 x i64] }** %_array8418
  %_raw_array8420 = call i64* @oat_alloc_array(i64 11)
  %_array8421 = bitcast i64* %_raw_array8420 to { i64, [0 x i64] }*
  %_ind8422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind8422
  %_ind8424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind8424
  %_ind8426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind8426
  %_ind8428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind8428
  %_ind8430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind8430
  %_ind8432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 5
  store i64 5, i64* %_ind8432
  %_ind8434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind8434
  %_ind8436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind8436
  %_ind8438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind8438
  %_ind8440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 9
  store i64 9, i64* %_ind8440
  %_ind8442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8421, i32 0, i32 1, i32 10
  store i64 10, i64* %_ind8442
  store { i64, [0 x i64] }* %_array8421, { i64, [0 x i64] }** %_end_result8444
  %_array8446 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8418
  call void @make_min_heap({ i64, [0 x i64] }* %_array8446, i64 10)
  store i64 0, i64* %_same8448
  store i64 0, i64* %_i8450
  br label %_cond8456
_body8455:
  %_array8457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array8418
  %_i8458 = load i64, i64* %_i8450
  %_tmp8460 = bitcast { i64, [0 x i64] }* %_array8457 to i64*
  call void @oat_assert_array_length(i64* %_tmp8460, i64 %_i8458)
  %_index_ptr8461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8457, i32 0, i32 1, i64 %_i8458
  %_index8462 = load i64, i64* %_index_ptr8461
  %_end_result8463 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result8444
  %_i8464 = load i64, i64* %_i8450
  %_tmp8466 = bitcast { i64, [0 x i64] }* %_end_result8463 to i64*
  call void @oat_assert_array_length(i64* %_tmp8466, i64 %_i8464)
  %_index_ptr8467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result8463, i32 0, i32 1, i64 %_i8464
  %_index8468 = load i64, i64* %_index_ptr8467
  %_bop8469 = icmp ne i64 %_index8462, %_index8468
  br i1 %_bop8469, label %_then8473, label %_else8472
_cond8456:
  %_i8452 = load i64, i64* %_i8450
  %_bop8453 = icmp slt i64 %_i8452, 11
  br i1 %_bop8453, label %_body8455, label %_post8454
_else8472:
  br label %_merge8471
_merge8471:
  %_i8474 = load i64, i64* %_i8450
  %_bop8475 = add i64 %_i8474, 1
  store i64 %_bop8475, i64* %_i8450
  br label %_cond8456
_post8454:
  %_same8477 = load i64, i64* %_same8448
  ret i64 %_same8477
_then8473:
  store i64 1, i64* %_same8448
  br label %_merge8471
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
