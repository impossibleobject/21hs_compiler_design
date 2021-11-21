; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str_tmp4438 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers4455 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers4455
  %_array_size4456 = alloca i64
  store i64 %array_size, i64* %_array_size4456
  %_temp4457 = alloca i64
  %_i4459 = alloca i64
  %_j4473 = alloca i64
  store i64 0, i64* %_temp4457
  store i64 %_bop4461, i64* %_i4459
  %_id4463 = load i64, i64* %_array_size4456
  %_bop4461 = sub i64 %_id4463, 1
  br label %_start4470
_start4470:
  %_id4468 = load i64, i64* %_i4459
  %_bop4466 = icmp sgt i64 %_id4468, 0
  br i1 %_bop4466, label %_body4471, label %_end4472
_body4471:
  store i64 1, i64* %_j4473
  br label %_start4481
_start4481:
  %_id4478 = load i64, i64* %_j4473
  %_id4480 = load i64, i64* %_i4459
  %_bop4476 = icmp sle i64 %_id4478, %_id4480
  br i1 %_bop4476, label %_body4482, label %_end4483
_body4482:
  %_id4488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4455
  %_id4492 = load i64, i64* %_j4473
  %_bop4490 = sub i64 %_id4492, 1
  %_index_ptr4494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4488, i32 0, i32 1, i64 %_bop4490
  %_4501 = load i64, i64* %_index_ptr4494
  %_id4497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4455
  %_id4499 = load i64, i64* %_i4459
  %_index_ptr4500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4497, i32 0, i32 1, i64 %_id4499
  %_4502 = load i64, i64* %_index_ptr4500
  %_bop4485 = icmp sgt i64 %_4501, %_4502
  br i1 %_bop4485, label %_then4503, label %_else4504
_then4503:
  %_id4510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4455
  %_id4514 = load i64, i64* %_j4473
  %_bop4512 = sub i64 %_id4514, 1
  %_index_ptr4516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4510, i32 0, i32 1, i64 %_bop4512
  store i64 %_index_ptr4516, i64* @temp
  %_id4519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4455
  %_id4523 = load i64, i64* %_j4473
  %_bop4521 = sub i64 %_id4523, 1
  %_index_ptr4525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4519, i32 0, i32 1, i64 %_bop4521
  %_id4528 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4455
  %_id4530 = load i64, i64* %_i4459
  %_index_ptr4531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4528, i32 0, i32 1, i64 %_id4530
  store i64* %_index_ptr4531, i64** %_index_ptr4525
  %_id4534 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers4455
  %_id4536 = load i64, i64* %_i4459
  %_index_ptr4537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4534, i32 0, i32 1, i64 %_id4536
  %_id4539 = load i64, i64* %_index_ptr4516
  store i64 %_id4539, i64* %_index_ptr4537
  br label %_end4505
_else4504:
  br label %_end4505
_end4505:
  %_id4545 = load i64, i64* %_j4473
  %_bop4543 = add i64 %_id4545, 1
  store i64 %_bop4543, i64* %_j4473
  br label %_start4481
_end4483:
  %_id4552 = load i64, i64* %_i4459
  %_bop4550 = sub i64 %_id4552, 1
  store i64 %_bop4550, i64* %_i4459
  br label %_start4470
_end4472:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4374 = alloca i64
  store i64 %argc, i64* %_argc4374
  %_argv4375 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4375
  %_a4376 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4380, { i64, [0 x i64] }** %_a4376
  %_raw_array4379 = call i64* @oat_alloc_array(i64 8)
  %_array4380 = bitcast i64* %_raw_array4379 to { i64, [0 x i64] }*
  %_id4383 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  %_index_ptr4385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4383, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr4385
  %_id4389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  %_index_ptr4391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4389, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr4391
  %_id4395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  %_index_ptr4397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4395, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr4397
  %_id4401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  %_index_ptr4403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4401, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr4403
  %_id4407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  %_index_ptr4409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4407, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr4409
  %_id4413 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  %_index_ptr4415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4413, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr4415
  %_id4419 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  %_index_ptr4421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4419, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr4421
  %_id4425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  %_index_ptr4427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4425, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr4427
  %_Call_retval4433 = call i8* @string_of_array({ i64, [0 x i64] }* %_id4432)
  %_id4432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  call void @print_string(i8* %_Call_retval4433)
  %_cstr4437 = getelementptr [2 x i8], [2 x i8]* @_str_tmp4438, i32 0, i32 0
  call void @print_string(i8* %_cstr4437)
  %_id4442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  call void @bubble_sort({ i64, [0 x i64] }* %_id4442, i64 8)
  %_Call_retval4449 = call i8* @string_of_array({ i64, [0 x i64] }* %_id4448)
  %_id4448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4376
  call void @print_string(i8* %_Call_retval4449)
  %_uop4452 = sub i64 0, 1
  ret i64 %_uop4452
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
