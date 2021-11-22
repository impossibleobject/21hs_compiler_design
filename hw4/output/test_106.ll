; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %maxarr = alloca { i64, [0 x i64] }*
  %maxs = alloca i64
  %i = alloca i64
  %j = alloca i64
  %_arr4399 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4399
  %_size4400 = alloca i64
  store i64 %size, i64* %_size4400
  %_id4401 = load i64, i64* %_size4400
  %_raw_array4402 = call i64* @oat_alloc_array(i64 %_id4401)
  %_array4403 = bitcast i64* %_raw_array4402 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4403, { i64, [0 x i64] }** %maxarr
  store i64 0, i64* %maxs
  %_id4404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4399
  %_index_ptr4405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4404, i32 0, i32 1, i32 0
  %_idx_tmp4406 = load i64, i64* %_index_ptr4405
  %_id4407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_index_ptr4408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4407, i32 0, i32 1, i32 0
  store i64 %_idx_tmp4406, i64* %_index_ptr4408
  store i64 0, i64* %i
  br label %_start4412
_start4412:
  %_id4410 = load i64, i64* %i
  %_id4411 = load i64, i64* %_size4400
  %_bop4409 = icmp slt i64 %_id4410, %_id4411
  br i1 %_bop4409, label %_body4413, label %_end4414
_body4413:
  store i64 0, i64* %j
  br label %_start4418
_start4418:
  %_id4416 = load i64, i64* %j
  %_id4417 = load i64, i64* %i
  %_bop4415 = icmp slt i64 %_id4416, %_id4417
  br i1 %_bop4415, label %_body4419, label %_end4420
_body4419:
  %_id4423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4399
  %_id4424 = load i64, i64* %i
  %_index_ptr4425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4423, i32 0, i32 1, i64 %_id4424
  %_idx_tmp4429 = load i64, i64* %_index_ptr4425
  %_id4426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4399
  %_id4427 = load i64, i64* %j
  %_index_ptr4428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4426, i32 0, i32 1, i64 %_id4427
  %_idx_tmp4430 = load i64, i64* %_index_ptr4428
  %_bop4422 = icmp sgt i64 %_idx_tmp4429, %_idx_tmp4430
  %_id4432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_id4433 = load i64, i64* %i
  %_index_ptr4434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4432, i32 0, i32 1, i64 %_id4433
  %_idx_tmp4444 = load i64, i64* %_index_ptr4434
  %_id4436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_id4437 = load i64, i64* %j
  %_index_ptr4438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4436, i32 0, i32 1, i64 %_id4437
  %_idx_tmp4442 = load i64, i64* %_index_ptr4438
  %_id4439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4399
  %_id4440 = load i64, i64* %i
  %_index_ptr4441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4439, i32 0, i32 1, i64 %_id4440
  %_idx_tmp4443 = load i64, i64* %_index_ptr4441
  %_bop4435 = add i64 %_idx_tmp4442, %_idx_tmp4443
  %_bop4431 = icmp slt i64 %_idx_tmp4444, %_bop4435
  %_bop4421 = and i1 %_bop4422, %_bop4431
  br i1 %_bop4421, label %_then4445, label %_else4446
_then4445:
  %_id4449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_id4450 = load i64, i64* %j
  %_index_ptr4451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4449, i32 0, i32 1, i64 %_id4450
  %_idx_tmp4455 = load i64, i64* %_index_ptr4451
  %_id4452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4399
  %_id4453 = load i64, i64* %i
  %_index_ptr4454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4452, i32 0, i32 1, i64 %_id4453
  %_idx_tmp4456 = load i64, i64* %_index_ptr4454
  %_bop4448 = add i64 %_idx_tmp4455, %_idx_tmp4456
  %_id4457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_id4458 = load i64, i64* %i
  %_index_ptr4459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4457, i32 0, i32 1, i64 %_id4458
  store i64 %_bop4448, i64* %_index_ptr4459
  br label %_end4447
_else4446:
  br label %_end4447
_end4447:
  %_id4461 = load i64, i64* %j
  %_bop4460 = add i64 %_id4461, 1
  store i64 %_bop4460, i64* %j
  br label %_start4418
_end4420:
  %_id4463 = load i64, i64* %maxs
  %_id4464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_id4465 = load i64, i64* %i
  %_index_ptr4466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4464, i32 0, i32 1, i64 %_id4465
  %_idx_tmp4467 = load i64, i64* %_index_ptr4466
  %_bop4462 = icmp slt i64 %_id4463, %_idx_tmp4467
  br i1 %_bop4462, label %_then4468, label %_else4469
_then4468:
  %_id4471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %maxarr
  %_id4472 = load i64, i64* %i
  %_index_ptr4473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4471, i32 0, i32 1, i64 %_id4472
  %_idx_tmp4474 = load i64, i64* %_index_ptr4473
  store i64 %_idx_tmp4474, i64* %maxs
  br label %_end4470
_else4469:
  br label %_end4470
_end4470:
  %_id4476 = load i64, i64* %i
  %_bop4475 = add i64 %_id4476, 1
  store i64 %_bop4475, i64* %i
  br label %_start4412
_end4414:
  %_id4477 = load i64, i64* %maxs
  ret i64 %_id4477
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %array = alloca { i64, [0 x i64] }*
  %max_ans = alloca i64
  %_argc4385 = alloca i64
  store i64 %argc, i64* %_argc4385
  %_argv4386 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4386
  %_raw_array4387 = call i64* @oat_alloc_array(i64 7)
  %_array4388 = bitcast i64* %_raw_array4387 to { i64, [0 x i64] }*
  %_CArr_elem_64395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 6
  store i64 5, i64* %_CArr_elem_64395
  %_CArr_elem_54394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 5
  store i64 4, i64* %_CArr_elem_54394
  %_CArr_elem_44393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 4
  store i64 101, i64* %_CArr_elem_44393
  %_CArr_elem_34392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 3
  store i64 3, i64* %_CArr_elem_34392
  %_CArr_elem_24391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_24391
  %_CArr_elem_14390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 1
  store i64 101, i64* %_CArr_elem_14390
  %_CArr_elem_04389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_04389
  store { i64, [0 x i64] }* %_array4388, { i64, [0 x i64] }** %array
  %_id4396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  %_Call_retval4397 = call i64 @maxsum({ i64, [0 x i64] }* %_id4396, i64 7)
  store i64 %_Call_retval4397, i64* %max_ans
  %_id4398 = load i64, i64* %max_ans
  ret i64 %_id4398
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
