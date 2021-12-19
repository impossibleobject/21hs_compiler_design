; generated from: oatprograms/determinant_size2.oat
target triple = "x86_64-unknown-linux"
define i64 @compute_determinant({ i64, [0 x { i64, [0 x i64] }*] }* %_matrix4462, i64 %_n4459) {
  %_matrix4463 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n4460 = alloca i64
  %_sum4465 = alloca i64
  %_multiplier4468 = alloca i64
  %_k4482 = alloca i64
  %_len4492 = alloca i64
  %_i4499 = alloca i64
  %_j4517 = alloca i64
  %_b4542 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_l4544 = alloca i64
  %_m4552 = alloca i64
  %_o4591 = alloca i64
  %_p4600 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4462, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4463
  store i64 %_n4459, i64* %_n4460
  store i64 0, i64* %_sum4465
  store i64 -1, i64* %_multiplier4468
  %_n4470 = load i64, i64* %_n4460
  %_bop4471 = icmp eq i64 %_n4470, 1
  br i1 %_bop4471, label %_then4668, label %_else4667
_body4488:
  %_n4490 = load i64, i64* %_n4460
  %_bop4491 = sub i64 %_n4490, 1
  store i64 %_bop4491, i64* %_len4492
  %_len4496 = load i64, i64* %_len4492
  %_raw_array4497 = call i64* @oat_alloc_array(i64 %_len4496)
  %_array4498 = bitcast i64* %_raw_array4497 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_4495 = alloca i64
  store i64 %_len4496, i64* %_bnd_4495
  %_ptr_4494 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4498, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_4494
  store i64 0, i64* %_i4499
  br label %_cond4506
_body4505:
  %__ptr_44944507 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_4494
  %_i4508 = load i64, i64* %_i4499
  %_tmp4510 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_44944507 to i64*
  call void @oat_assert_array_length(i64* %_tmp4510, i64 %_i4508)
  %_index_ptr4511 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_44944507, i32 0, i32 1, i64 %_i4508
  %_len4514 = load i64, i64* %_len4492
  %_raw_array4515 = call i64* @oat_alloc_array(i64 %_len4514)
  %_array4516 = bitcast i64* %_raw_array4515 to { i64, [0 x i64] }*
  %_bnd_4513 = alloca i64
  store i64 %_len4514, i64* %_bnd_4513
  %_ptr_4512 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4516, { i64, [0 x i64] }** %_ptr_4512
  store i64 0, i64* %_j4517
  br label %_cond4524
_body4523:
  %__ptr_45124525 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_4512
  %_j4526 = load i64, i64* %_j4517
  %_tmp4528 = bitcast { i64, [0 x i64] }* %__ptr_45124525 to i64*
  call void @oat_assert_array_length(i64* %_tmp4528, i64 %_j4526)
  %_index_ptr4529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_45124525, i32 0, i32 1, i64 %_j4526
  store i64 1, i64* %_index_ptr4529
  %_j4531 = load i64, i64* %_j4517
  %_bop4532 = add i64 %_j4531, 1
  store i64 %_bop4532, i64* %_j4517
  br label %_cond4524
_body4550:
  store i64 0, i64* %_m4552
  br label %_cond4560
_body4559:
  %_b4561 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4542
  %_m4562 = load i64, i64* %_m4552
  %_tmp4564 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_b4561 to i64*
  call void @oat_assert_array_length(i64* %_tmp4564, i64 %_m4562)
  %_index_ptr4565 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b4561, i32 0, i32 1, i64 %_m4562
  %_index4566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4565
  %_l4567 = load i64, i64* %_l4544
  %_tmp4569 = bitcast { i64, [0 x i64] }* %_index4566 to i64*
  call void @oat_assert_array_length(i64* %_tmp4569, i64 %_l4567)
  %_index_ptr4570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4566, i32 0, i32 1, i64 %_l4567
  %_matrix4571 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4463
  %_m4572 = load i64, i64* %_m4552
  %_bop4573 = add i64 %_m4572, 1
  %_tmp4575 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4571 to i64*
  call void @oat_assert_array_length(i64* %_tmp4575, i64 %_bop4573)
  %_index_ptr4576 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4571, i32 0, i32 1, i64 %_bop4573
  %_index4577 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4576
  %_l4578 = load i64, i64* %_l4544
  %_tmp4580 = bitcast { i64, [0 x i64] }* %_index4577 to i64*
  call void @oat_assert_array_length(i64* %_tmp4580, i64 %_l4578)
  %_index_ptr4581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4577, i32 0, i32 1, i64 %_l4578
  %_index4582 = load i64, i64* %_index_ptr4581
  store i64 %_index4582, i64* %_index_ptr4570
  %_m4584 = load i64, i64* %_m4552
  %_bop4585 = add i64 %_m4584, 1
  store i64 %_bop4585, i64* %_m4552
  br label %_cond4560
_body4598:
  store i64 0, i64* %_p4600
  br label %_cond4608
_body4607:
  %_b4609 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4542
  %_p4610 = load i64, i64* %_p4600
  %_tmp4612 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_b4609 to i64*
  call void @oat_assert_array_length(i64* %_tmp4612, i64 %_p4610)
  %_index_ptr4613 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b4609, i32 0, i32 1, i64 %_p4610
  %_index4614 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4613
  %_o4615 = load i64, i64* %_o4591
  %_tmp4617 = bitcast { i64, [0 x i64] }* %_index4614 to i64*
  call void @oat_assert_array_length(i64* %_tmp4617, i64 %_o4615)
  %_index_ptr4618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4614, i32 0, i32 1, i64 %_o4615
  %_matrix4619 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4463
  %_p4620 = load i64, i64* %_p4600
  %_bop4621 = add i64 %_p4620, 1
  %_tmp4623 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4619 to i64*
  call void @oat_assert_array_length(i64* %_tmp4623, i64 %_bop4621)
  %_index_ptr4624 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4619, i32 0, i32 1, i64 %_bop4621
  %_index4625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4624
  %_o4626 = load i64, i64* %_o4591
  %_bop4627 = add i64 %_o4626, 1
  %_tmp4629 = bitcast { i64, [0 x i64] }* %_index4625 to i64*
  call void @oat_assert_array_length(i64* %_tmp4629, i64 %_bop4627)
  %_index_ptr4630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4625, i32 0, i32 1, i64 %_bop4627
  %_index4631 = load i64, i64* %_index_ptr4630
  store i64 %_index4631, i64* %_index_ptr4618
  %_p4633 = load i64, i64* %_p4600
  %_bop4634 = add i64 %_p4633, 1
  store i64 %_bop4634, i64* %_p4600
  br label %_cond4608
_cond4489:
  %_k4484 = load i64, i64* %_k4482
  %_n4485 = load i64, i64* %_n4460
  %_bop4486 = icmp slt i64 %_k4484, %_n4485
  br i1 %_bop4486, label %_body4488, label %_post4487
_cond4506:
  %_i4501 = load i64, i64* %_i4499
  %__bnd_44954502 = load i64, i64* %_bnd_4495
  %_bop4503 = icmp slt i64 %_i4501, %__bnd_44954502
  br i1 %_bop4503, label %_body4505, label %_post4504
_cond4524:
  %_j4519 = load i64, i64* %_j4517
  %__bnd_45134520 = load i64, i64* %_bnd_4513
  %_bop4521 = icmp slt i64 %_j4519, %__bnd_45134520
  br i1 %_bop4521, label %_body4523, label %_post4522
_cond4551:
  %_l4546 = load i64, i64* %_l4544
  %_k4547 = load i64, i64* %_k4482
  %_bop4548 = icmp slt i64 %_l4546, %_k4547
  br i1 %_bop4548, label %_body4550, label %_post4549
_cond4560:
  %_m4554 = load i64, i64* %_m4552
  %_n4555 = load i64, i64* %_n4460
  %_bop4556 = sub i64 %_n4555, 1
  %_bop4557 = icmp slt i64 %_m4554, %_bop4556
  br i1 %_bop4557, label %_body4559, label %_post4558
_cond4599:
  %_o4593 = load i64, i64* %_o4591
  %_n4594 = load i64, i64* %_n4460
  %_bop4595 = sub i64 %_n4594, 1
  %_bop4596 = icmp slt i64 %_o4593, %_bop4595
  br i1 %_bop4596, label %_body4598, label %_post4597
_cond4608:
  %_p4602 = load i64, i64* %_p4600
  %_n4603 = load i64, i64* %_n4460
  %_bop4604 = sub i64 %_n4603, 1
  %_bop4605 = icmp slt i64 %_p4602, %_bop4604
  br i1 %_bop4605, label %_body4607, label %_post4606
_else4667:
  store i64 0, i64* %_k4482
  br label %_cond4489
_merge4666:
  %_sum4669 = load i64, i64* %_sum4465
  ret i64 %_sum4669
_post4487:
  br label %_merge4666
_post4504:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4498, { i64, [0 x { i64, [0 x i64] }*] }** %_b4542
  store i64 0, i64* %_l4544
  br label %_cond4551
_post4522:
  store { i64, [0 x i64] }* %_array4516, { i64, [0 x i64] }** %_index_ptr4511
  %_i4537 = load i64, i64* %_i4499
  %_bop4538 = add i64 %_i4537, 1
  store i64 %_bop4538, i64* %_i4499
  br label %_cond4506
_post4549:
  %_k4590 = load i64, i64* %_k4482
  store i64 %_k4590, i64* %_o4591
  br label %_cond4599
_post4558:
  %_l4587 = load i64, i64* %_l4544
  %_bop4588 = add i64 %_l4587, 1
  store i64 %_bop4588, i64* %_l4544
  br label %_cond4551
_post4597:
  %_multiplier4639 = load i64, i64* %_multiplier4468
  %_bop4641 = mul i64 %_multiplier4639, -1
  store i64 %_bop4641, i64* %_multiplier4468
  %_sum4643 = load i64, i64* %_sum4465
  %_multiplier4644 = load i64, i64* %_multiplier4468
  %_matrix4645 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4463
  %_tmp4647 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4645 to i64*
  call void @oat_assert_array_length(i64* %_tmp4647, i64 0)
  %_index_ptr4648 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4645, i32 0, i32 1, i32 0
  %_index4649 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4648
  %_k4650 = load i64, i64* %_k4482
  %_tmp4652 = bitcast { i64, [0 x i64] }* %_index4649 to i64*
  call void @oat_assert_array_length(i64* %_tmp4652, i64 %_k4650)
  %_index_ptr4653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4649, i32 0, i32 1, i64 %_k4650
  %_index4654 = load i64, i64* %_index_ptr4653
  %_bop4655 = mul i64 %_multiplier4644, %_index4654
  %_n4656 = load i64, i64* %_n4460
  %_bop4657 = sub i64 %_n4656, 1
  %_b4658 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4542
  %_result4659 = call i64 @compute_determinant({ i64, [0 x { i64, [0 x i64] }*] }* %_b4658, i64 %_bop4657)
  %_bop4660 = mul i64 %_bop4655, %_result4659
  %_bop4661 = add i64 %_sum4643, %_bop4660
  store i64 %_bop4661, i64* %_sum4465
  %_k4663 = load i64, i64* %_k4482
  %_bop4664 = add i64 %_k4663, 1
  store i64 %_bop4664, i64* %_k4482
  br label %_cond4489
_post4606:
  %_o4636 = load i64, i64* %_o4591
  %_bop4637 = add i64 %_o4636, 1
  store i64 %_bop4637, i64* %_o4591
  br label %_cond4599
_then4668:
  %_matrix4472 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4463
  %_tmp4474 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4472 to i64*
  call void @oat_assert_array_length(i64* %_tmp4474, i64 0)
  %_index_ptr4475 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_matrix4472, i32 0, i32 1, i32 0
  %_index4476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4475
  %_tmp4478 = bitcast { i64, [0 x i64] }* %_index4476 to i64*
  call void @oat_assert_array_length(i64* %_tmp4478, i64 0)
  %_index_ptr4479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4476, i32 0, i32 1, i32 0
  %_index4480 = load i64, i64* %_index_ptr4479
  store i64 %_index4480, i64* %_sum4465
  br label %_merge4666
}

define i64 @program(i64 %_argc4434, { i64, [0 x i8*] }* %_argv4431) {
  %_matrix4455 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4437 = call i64* @oat_alloc_array(i64 2)
  %_array4438 = bitcast i64* %_raw_array4437 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4439 = call i64* @oat_alloc_array(i64 2)
  %_array4440 = bitcast i64* %_raw_array4439 to { i64, [0 x i64] }*
  %_ind4441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4440, i32 0, i32 1, i32 0
  store i64 20, i64* %_ind4441
  %_ind4443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4440, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind4443
  %_ind4445 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4438, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4440, { i64, [0 x i64] }** %_ind4445
  %_raw_array4447 = call i64* @oat_alloc_array(i64 2)
  %_array4448 = bitcast i64* %_raw_array4447 to { i64, [0 x i64] }*
  %_ind4449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4448, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind4449
  %_ind4451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4448, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind4451
  %_ind4453 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4438, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4448, { i64, [0 x i64] }** %_ind4453
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4438, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4455
  %_matrix4457 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matrix4455
  %_result4458 = call i64 @compute_determinant({ i64, [0 x { i64, [0 x i64] }*] }* %_matrix4457, i64 2)
  ret i64 %_result4458
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
