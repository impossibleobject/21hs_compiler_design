; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str4440 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers4457 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers4457
  %_array_size4458 = alloca i64
  store i64 %array_size, i64* %_array_size4458
  %_temp4459 = alloca i64
  %_i4461 = alloca i64
  %_j4473 = alloca i64
  store i64 0, i64* %_temp4459
  store i64 %_4462, i64* %_i4461
  %_4464 = load i64, i64* %_array_size4458
  %_4462 = sub i64 %_4464, 1
  br label %_start4470
_start4470:
  %_4468 = load i64, i64* %_i4461
  %_4466 = icmp sgt i64 %_4468, 0
  br i1 %_4466, label %_body4471, label %_end4472
_body4471:
  store i64 1, i64* %_j4473
  br label %_start4480
_start4480:
  %_4477 = load i64, i64* %_j4473
  %_4479 = load i64, i64* %_i4461
  %_4475 = icmp sle i64 %_4477, %_4479
  br i1 %_4475, label %_body4481, label %_end4482
_body4481:
  %_4486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4457
  %_4489 = load i64, i64* %_j4473
  %_4487 = sub i64 %_4489, 1
  %_index_ptr4491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4486, i32 0, i32 1, i64 %_4487
  %_4500 = load i64, i64* %_index_ptr4491
  %_4495 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4457
  %_4497 = load i64, i64* %_i4461
  %_index_ptr4498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4495, i32 0, i32 1, i64 %_4497
  %_4501 = load i64, i64* %_index_ptr4498
  %_4483 = icmp sgt i64 %_4500, %_4501
  br i1 %_4483, label %_then4502, label %_else4503
_then4502:
  %_4509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4457
  %_4512 = load i64, i64* %_j4473
  %_4510 = sub i64 %_4512, 1
  %_index_ptr4514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4509, i32 0, i32 1, i64 %_4510
  store i64 %_index_ptr4514, i64* @temp
  %_4518 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4457
  %_4521 = load i64, i64* %_j4473
  %_4519 = sub i64 %_4521, 1
  %_index_ptr4523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4518, i32 0, i32 1, i64 %_4519
  %_4527 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4457
  %_4529 = load i64, i64* %_i4461
  %_index_ptr4530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4527, i32 0, i32 1, i64 %_4529
  store i64* %_index_ptr4530, i64** %_index_ptr4523
  %_4534 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4457
  %_4536 = load i64, i64* %_i4461
  %_index_ptr4537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4534, i32 0, i32 1, i64 %_4536
  %_4540 = load i64, i64* %_index_ptr4514
  store i64 %_4540, i64* %_index_ptr4537
  br label %_end4504
_else4503:
  br label %_end4504
_end4504:
  %_4545 = load i64, i64* %_j4473
  %_4543 = add i64 %_4545, 1
  store i64 %_4543, i64* %_j4473
  br label %_start4480
_end4482:
  %_4551 = load i64, i64* %_i4461
  %_4549 = sub i64 %_4551, 1
  store i64 %_4549, i64* %_i4461
  br label %_start4470
_end4472:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4369 = alloca i64
  store i64 %argc, i64* %_argc4369
  %_argv4370 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4370
  %_a4371 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4375, { i64, [0 x i64] }** %_a4371
  %_raw_array4374 = call i64* @oat_alloc_array(i64 8)
  %_array4375 = bitcast i64* %_raw_array4374 to { i64, [0 x i64] }*
  %_4378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  %_index_ptr4380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4378, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr4380
  %_4385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  %_index_ptr4387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4385, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr4387
  %_4392 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  %_index_ptr4394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4392, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr4394
  %_4399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  %_index_ptr4401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4399, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr4401
  %_4406 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  %_index_ptr4408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4406, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr4408
  %_4413 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  %_index_ptr4415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4413, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr4415
  %_4420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  %_index_ptr4422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4420, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr4422
  %_4427 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  %_index_ptr4429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_4427, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr4429
  %_retval4436 = call i8* @string_of_array({ i64, [0 x i64] }* %_4435)
  %_4435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  call void @print_string(i8* %_retval4436)
  %_4441 = getelementptr [2 x i8], [2 x i8]* @_str4440, i32 0, i32 0
  call void @print_string(i8* %_4441)
  %_4445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  call void @bubble_sort({ i64, [0 x i64] }* %_4445, i64 8)
  %_retval4452 = call i8* @string_of_array({ i64, [0 x i64] }* %_4451)
  %_4451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4371
  call void @print_string(i8* %_retval4452)
  %_4454 = sub i64 0, 1
  ret i64 %_4454
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
