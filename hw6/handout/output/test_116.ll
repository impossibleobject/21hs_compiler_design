; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str_arr9289 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %_arr9509, i64 %_len9506) {
  %_arr9510 = alloca { i64, [0 x i64] }*
  %_len9507 = alloca i64
  %_min9517 = alloca i64
  %_i9519 = alloca i64
  store { i64, [0 x i64] }* %_arr9509, { i64, [0 x i64] }** %_arr9510
  store i64 %_len9506, i64* %_len9507
  %_arr9512 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9510
  %_tmp9514 = bitcast { i64, [0 x i64] }* %_arr9512 to i64*
  call void @oat_assert_array_length(i64* %_tmp9514, i64 0)
  %_index_ptr9515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9512, i32 0, i32 1, i32 0
  %_index9516 = load i64, i64* %_index_ptr9515
  store i64 %_index9516, i64* %_min9517
  store i64 0, i64* %_i9519
  br label %_cond9526
_body9525:
  %_arr9527 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9510
  %_i9528 = load i64, i64* %_i9519
  %_tmp9530 = bitcast { i64, [0 x i64] }* %_arr9527 to i64*
  call void @oat_assert_array_length(i64* %_tmp9530, i64 %_i9528)
  %_index_ptr9531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9527, i32 0, i32 1, i64 %_i9528
  %_index9532 = load i64, i64* %_index_ptr9531
  %_min9533 = load i64, i64* %_min9517
  %_bop9534 = icmp slt i64 %_index9532, %_min9533
  br i1 %_bop9534, label %_then9544, label %_else9543
_cond9526:
  %_i9521 = load i64, i64* %_i9519
  %_len9522 = load i64, i64* %_len9507
  %_bop9523 = icmp slt i64 %_i9521, %_len9522
  br i1 %_bop9523, label %_body9525, label %_post9524
_else9543:
  br label %_merge9542
_merge9542:
  %_i9545 = load i64, i64* %_i9519
  %_bop9546 = add i64 %_i9545, 1
  store i64 %_bop9546, i64* %_i9519
  br label %_cond9526
_post9524:
  %_min9548 = load i64, i64* %_min9517
  ret i64 %_min9548
_then9544:
  %_arr9535 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9510
  %_i9536 = load i64, i64* %_i9519
  %_tmp9538 = bitcast { i64, [0 x i64] }* %_arr9535 to i64*
  call void @oat_assert_array_length(i64* %_tmp9538, i64 %_i9536)
  %_index_ptr9539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9535, i32 0, i32 1, i64 %_i9536
  %_index9540 = load i64, i64* %_index_ptr9539
  store i64 %_index9540, i64* %_min9517
  br label %_merge9542
}

define i64 @max({ i64, [0 x i64] }* %_arr9466, i64 %_len9463) {
  %_arr9467 = alloca { i64, [0 x i64] }*
  %_len9464 = alloca i64
  %_max9474 = alloca i64
  %_i9476 = alloca i64
  store { i64, [0 x i64] }* %_arr9466, { i64, [0 x i64] }** %_arr9467
  store i64 %_len9463, i64* %_len9464
  %_arr9469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9467
  %_tmp9471 = bitcast { i64, [0 x i64] }* %_arr9469 to i64*
  call void @oat_assert_array_length(i64* %_tmp9471, i64 0)
  %_index_ptr9472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9469, i32 0, i32 1, i32 0
  %_index9473 = load i64, i64* %_index_ptr9472
  store i64 %_index9473, i64* %_max9474
  store i64 0, i64* %_i9476
  br label %_cond9483
_body9482:
  %_arr9484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9467
  %_i9485 = load i64, i64* %_i9476
  %_tmp9487 = bitcast { i64, [0 x i64] }* %_arr9484 to i64*
  call void @oat_assert_array_length(i64* %_tmp9487, i64 %_i9485)
  %_index_ptr9488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9484, i32 0, i32 1, i64 %_i9485
  %_index9489 = load i64, i64* %_index_ptr9488
  %_max9490 = load i64, i64* %_max9474
  %_bop9491 = icmp sgt i64 %_index9489, %_max9490
  br i1 %_bop9491, label %_then9501, label %_else9500
_cond9483:
  %_i9478 = load i64, i64* %_i9476
  %_len9479 = load i64, i64* %_len9464
  %_bop9480 = icmp slt i64 %_i9478, %_len9479
  br i1 %_bop9480, label %_body9482, label %_post9481
_else9500:
  br label %_merge9499
_merge9499:
  %_i9502 = load i64, i64* %_i9476
  %_bop9503 = add i64 %_i9502, 1
  store i64 %_bop9503, i64* %_i9476
  br label %_cond9483
_post9481:
  %_max9505 = load i64, i64* %_max9474
  ret i64 %_max9505
_then9501:
  %_arr9492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9467
  %_i9493 = load i64, i64* %_i9476
  %_tmp9495 = bitcast { i64, [0 x i64] }* %_arr9492 to i64*
  call void @oat_assert_array_length(i64* %_tmp9495, i64 %_i9493)
  %_index_ptr9496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9492, i32 0, i32 1, i64 %_i9493
  %_index9497 = load i64, i64* %_index_ptr9496
  store i64 %_index9497, i64* %_max9474
  br label %_merge9499
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr9303, i64 %_len9300) {
  %_arr9304 = alloca { i64, [0 x i64] }*
  %_len9301 = alloca i64
  %_min9309 = alloca i64
  %_max9314 = alloca i64
  %_i9324 = alloca i64
  %_counts9343 = alloca { i64, [0 x i64] }*
  %_i9345 = alloca i64
  %_i9384 = alloca i64
  %_j9386 = alloca i64
  %_i29393 = alloca i64
  %_out9412 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr9303, { i64, [0 x i64] }** %_arr9304
  store i64 %_len9300, i64* %_len9301
  %_len9306 = load i64, i64* %_len9301
  %_arr9307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9304
  %_result9308 = call i64 @min({ i64, [0 x i64] }* %_arr9307, i64 %_len9306)
  store i64 %_result9308, i64* %_min9309
  %_len9311 = load i64, i64* %_len9301
  %_arr9312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9304
  %_result9313 = call i64 @max({ i64, [0 x i64] }* %_arr9312, i64 %_len9311)
  store i64 %_result9313, i64* %_max9314
  %_max9318 = load i64, i64* %_max9314
  %_min9319 = load i64, i64* %_min9309
  %_bop9320 = sub i64 %_max9318, %_min9319
  %_bop9321 = add i64 %_bop9320, 1
  %_raw_array9322 = call i64* @oat_alloc_array(i64 %_bop9321)
  %_array9323 = bitcast i64* %_raw_array9322 to { i64, [0 x i64] }*
  %_bnd_9317 = alloca i64
  store i64 %_bop9321, i64* %_bnd_9317
  %_ptr_9316 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array9323, { i64, [0 x i64] }** %_ptr_9316
  store i64 0, i64* %_i9324
  br label %_cond9331
_body9330:
  %__ptr_93169332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_9316
  %_i9333 = load i64, i64* %_i9324
  %_tmp9335 = bitcast { i64, [0 x i64] }* %__ptr_93169332 to i64*
  call void @oat_assert_array_length(i64* %_tmp9335, i64 %_i9333)
  %_index_ptr9336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_93169332, i32 0, i32 1, i64 %_i9333
  store i64 0, i64* %_index_ptr9336
  %_i9338 = load i64, i64* %_i9324
  %_bop9339 = add i64 %_i9338, 1
  store i64 %_bop9339, i64* %_i9324
  br label %_cond9331
_body9351:
  %_counts9353 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9343
  %_arr9354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9304
  %_i9355 = load i64, i64* %_i9345
  %_tmp9357 = bitcast { i64, [0 x i64] }* %_arr9354 to i64*
  call void @oat_assert_array_length(i64* %_tmp9357, i64 %_i9355)
  %_index_ptr9358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9354, i32 0, i32 1, i64 %_i9355
  %_index9359 = load i64, i64* %_index_ptr9358
  %_min9360 = load i64, i64* %_min9309
  %_bop9361 = sub i64 %_index9359, %_min9360
  %_tmp9363 = bitcast { i64, [0 x i64] }* %_counts9353 to i64*
  call void @oat_assert_array_length(i64* %_tmp9363, i64 %_bop9361)
  %_index_ptr9364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9353, i32 0, i32 1, i64 %_bop9361
  %_counts9365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9343
  %_arr9366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9304
  %_i9367 = load i64, i64* %_i9345
  %_tmp9369 = bitcast { i64, [0 x i64] }* %_arr9366 to i64*
  call void @oat_assert_array_length(i64* %_tmp9369, i64 %_i9367)
  %_index_ptr9370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr9366, i32 0, i32 1, i64 %_i9367
  %_index9371 = load i64, i64* %_index_ptr9370
  %_min9372 = load i64, i64* %_min9309
  %_bop9373 = sub i64 %_index9371, %_min9372
  %_tmp9375 = bitcast { i64, [0 x i64] }* %_counts9365 to i64*
  call void @oat_assert_array_length(i64* %_tmp9375, i64 %_bop9373)
  %_index_ptr9376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9365, i32 0, i32 1, i64 %_bop9373
  %_index9377 = load i64, i64* %_index_ptr9376
  %_bop9378 = add i64 %_index9377, 1
  store i64 %_bop9378, i64* %_index_ptr9364
  %_i9380 = load i64, i64* %_i9345
  %_bop9381 = add i64 %_i9380, 1
  store i64 %_bop9381, i64* %_i9345
  br label %_cond9352
_body9399:
  %__ptr_93889401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_9388
  %_i29402 = load i64, i64* %_i29393
  %_tmp9404 = bitcast { i64, [0 x i64] }* %__ptr_93889401 to i64*
  call void @oat_assert_array_length(i64* %_tmp9404, i64 %_i29402)
  %_index_ptr9405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_93889401, i32 0, i32 1, i64 %_i29402
  store i64 0, i64* %_index_ptr9405
  %_i29407 = load i64, i64* %_i29393
  %_bop9408 = add i64 %_i29407, 1
  store i64 %_bop9408, i64* %_i29393
  br label %_cond9400
_body9418:
  %_counts9420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9343
  %_i9421 = load i64, i64* %_i9384
  %_min9422 = load i64, i64* %_min9309
  %_bop9423 = sub i64 %_i9421, %_min9422
  %_tmp9425 = bitcast { i64, [0 x i64] }* %_counts9420 to i64*
  call void @oat_assert_array_length(i64* %_tmp9425, i64 %_bop9423)
  %_index_ptr9426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9420, i32 0, i32 1, i64 %_bop9423
  %_index9427 = load i64, i64* %_index_ptr9426
  %_bop9428 = icmp sgt i64 %_index9427, 0
  br i1 %_bop9428, label %_then9461, label %_else9460
_cond9331:
  %_i9326 = load i64, i64* %_i9324
  %__bnd_93179327 = load i64, i64* %_bnd_9317
  %_bop9328 = icmp slt i64 %_i9326, %__bnd_93179327
  br i1 %_bop9328, label %_body9330, label %_post9329
_cond9352:
  %_i9347 = load i64, i64* %_i9345
  %_len9348 = load i64, i64* %_len9301
  %_bop9349 = icmp slt i64 %_i9347, %_len9348
  br i1 %_bop9349, label %_body9351, label %_post9350
_cond9400:
  %_i29395 = load i64, i64* %_i29393
  %__bnd_93899396 = load i64, i64* %_bnd_9389
  %_bop9397 = icmp slt i64 %_i29395, %__bnd_93899396
  br i1 %_bop9397, label %_body9399, label %_post9398
_cond9419:
  %_i9414 = load i64, i64* %_i9384
  %_max9415 = load i64, i64* %_max9314
  %_bop9416 = icmp sle i64 %_i9414, %_max9415
  br i1 %_bop9416, label %_body9418, label %_post9417
_else9460:
  %_i9456 = load i64, i64* %_i9384
  %_bop9457 = add i64 %_i9456, 1
  store i64 %_bop9457, i64* %_i9384
  br label %_merge9459
_merge9459:
  br label %_cond9419
_post9329:
  store { i64, [0 x i64] }* %_array9323, { i64, [0 x i64] }** %_counts9343
  store i64 0, i64* %_i9345
  br label %_cond9352
_post9350:
  %_min9383 = load i64, i64* %_min9309
  store i64 %_min9383, i64* %_i9384
  store i64 0, i64* %_j9386
  %_len9390 = load i64, i64* %_len9301
  %_raw_array9391 = call i64* @oat_alloc_array(i64 %_len9390)
  %_array9392 = bitcast i64* %_raw_array9391 to { i64, [0 x i64] }*
  %_bnd_9389 = alloca i64
  store i64 %_len9390, i64* %_bnd_9389
  %_ptr_9388 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array9392, { i64, [0 x i64] }** %_ptr_9388
  store i64 0, i64* %_i29393
  br label %_cond9400
_post9398:
  store { i64, [0 x i64] }* %_array9392, { i64, [0 x i64] }** %_out9412
  br label %_cond9419
_post9417:
  %_out9462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out9412
  ret { i64, [0 x i64] }* %_out9462
_then9461:
  %_out9429 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out9412
  %_j9430 = load i64, i64* %_j9386
  %_tmp9432 = bitcast { i64, [0 x i64] }* %_out9429 to i64*
  call void @oat_assert_array_length(i64* %_tmp9432, i64 %_j9430)
  %_index_ptr9433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out9429, i32 0, i32 1, i64 %_j9430
  %_i9434 = load i64, i64* %_i9384
  store i64 %_i9434, i64* %_index_ptr9433
  %_counts9436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9343
  %_i9437 = load i64, i64* %_i9384
  %_min9438 = load i64, i64* %_min9309
  %_bop9439 = sub i64 %_i9437, %_min9438
  %_tmp9441 = bitcast { i64, [0 x i64] }* %_counts9436 to i64*
  call void @oat_assert_array_length(i64* %_tmp9441, i64 %_bop9439)
  %_index_ptr9442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9436, i32 0, i32 1, i64 %_bop9439
  %_counts9443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts9343
  %_i9444 = load i64, i64* %_i9384
  %_min9445 = load i64, i64* %_min9309
  %_bop9446 = sub i64 %_i9444, %_min9445
  %_tmp9448 = bitcast { i64, [0 x i64] }* %_counts9443 to i64*
  call void @oat_assert_array_length(i64* %_tmp9448, i64 %_bop9446)
  %_index_ptr9449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts9443, i32 0, i32 1, i64 %_bop9446
  %_index9450 = load i64, i64* %_index_ptr9449
  %_bop9451 = sub i64 %_index9450, 1
  store i64 %_bop9451, i64* %_index_ptr9442
  %_j9453 = load i64, i64* %_j9386
  %_bop9454 = add i64 %_j9453, 1
  store i64 %_bop9454, i64* %_j9386
  br label %_merge9459
}

define i64 @program(i64 %_argc9259, { i64, [0 x i8*] }* %_argv9256) {
  %_arr9282 = alloca { i64, [0 x i64] }*
  %_len9284 = alloca i64
  %_sorted9295 = alloca { i64, [0 x i64] }*
  %_raw_array9262 = call i64* @oat_alloc_array(i64 9)
  %_array9263 = bitcast i64* %_raw_array9262 to { i64, [0 x i64] }*
  %_ind9264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9263, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind9264
  %_ind9266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9263, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind9266
  %_ind9268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9263, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind9268
  %_ind9270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9263, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind9270
  %_ind9272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9263, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind9272
  %_ind9274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9263, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind9274
  %_ind9276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9263, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind9276
  %_ind9278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9263, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind9278
  %_ind9280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9263, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind9280
  store { i64, [0 x i64] }* %_array9263, { i64, [0 x i64] }** %_arr9282
  store i64 9, i64* %_len9284
  %_arr9286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9282
  %_result9287 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr9286)
  call void @print_string(i8* %_result9287)
  %_str9290 = getelementptr [2 x i8], [2 x i8]* @_str_arr9289, i32 0, i32 0
  call void @print_string(i8* %_str9290)
  %_len9292 = load i64, i64* %_len9284
  %_arr9293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr9282
  %_result9294 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr9293, i64 %_len9292)
  store { i64, [0 x i64] }* %_result9294, { i64, [0 x i64] }** %_sorted9295
  %_sorted9297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted9295
  %_result9298 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted9297)
  call void @print_string(i8* %_result9298)
  ret i64 0
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
