; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_inserted4567 = alloca { i64, [0 x i64] }*
  %_i4572 = alloca i64
  %_not_yet_inserted4586 = alloca i1
  %_i4598 = alloca i64
  %_partial4564 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial4564
  %_len4565 = alloca i64
  store i64 %len, i64* %_len4565
  %_insertee4566 = alloca i64
  store i64 %insertee, i64* %_insertee4566
  %_id4569 = load i64, i64* %_len4565
  %_bop4568 = add i64 %_id4569, 1
  %_raw_array4570 = call i64* @oat_alloc_array(i64 %_bop4568)
  %_array4571 = bitcast i64* %_raw_array4570 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4571, { i64, [0 x i64] }** %_inserted4567
  store i64 0, i64* %_i4572
  br label %_start4577
_start4577:
  %_id4574 = load i64, i64* %_i4572
  %_id4576 = load i64, i64* %_len4565
  %_bop4575 = add i64 %_id4576, 1
  %_bop4573 = icmp slt i64 %_id4574, %_bop4575
  br i1 %_bop4573, label %_body4578, label %_end4579
_body4578:
  %_uop4580 = sub i64 0, 1
  %_id4581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4567
  %_id4582 = load i64, i64* %_i4572
  %_index_ptr4583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4581, i32 0, i32 1, i64 %_id4582
  store i64 %_uop4580, i64* %_index_ptr4583
  %_id4585 = load i64, i64* %_i4572
  %_bop4584 = add i64 %_id4585, 1
  store i64 %_bop4584, i64* %_i4572
  br label %_start4577
_end4579:
  store i1 1, i1* %_not_yet_inserted4586
  %_id4588 = load i64, i64* %_insertee4566
  %_id4589 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4564
  %_index_ptr4590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4589, i32 0, i32 1, i32 0
  %_idx_tmp4591 = load i64, i64* %_index_ptr4590
  %_bop4587 = icmp slt i64 %_id4588, %_idx_tmp4591
  br i1 %_bop4587, label %_then4592, label %_else4593
_then4592:
  store i1 0, i1* %_not_yet_inserted4586
  %_id4595 = load i64, i64* %_insertee4566
  %_id4596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4567
  %_index_ptr4597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4596, i32 0, i32 1, i32 0
  store i64 %_id4595, i64* %_index_ptr4597
  br label %_end4594
_else4593:
  br label %_end4594
_end4594:
  store i64 0, i64* %_i4598
  br label %_start4602
_start4602:
  %_id4600 = load i64, i64* %_i4598
  %_id4601 = load i64, i64* %_len4565
  %_bop4599 = icmp slt i64 %_id4600, %_id4601
  br i1 %_bop4599, label %_body4603, label %_end4604
_body4603:
  %_id4605 = load i1, i1* %_not_yet_inserted4586
  br i1 %_id4605, label %_then4606, label %_else4607
_then4606:
  %_id4610 = load i64, i64* %_insertee4566
  %_id4611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4564
  %_id4612 = load i64, i64* %_i4598
  %_index_ptr4613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4611, i32 0, i32 1, i64 %_id4612
  %_idx_tmp4614 = load i64, i64* %_index_ptr4613
  %_bop4609 = icmp sgt i64 %_id4610, %_idx_tmp4614
  br i1 %_bop4609, label %_then4615, label %_else4616
_then4615:
  store i1 0, i1* %_not_yet_inserted4586
  %_id4618 = load i64, i64* %_insertee4566
  %_id4619 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4567
  %_id4621 = load i64, i64* %_i4598
  %_bop4620 = add i64 %_id4621, 1
  %_index_ptr4622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4619, i32 0, i32 1, i64 %_bop4620
  store i64 %_id4618, i64* %_index_ptr4622
  %_id4623 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4564
  %_id4624 = load i64, i64* %_i4598
  %_index_ptr4625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4623, i32 0, i32 1, i64 %_id4624
  %_idx_tmp4626 = load i64, i64* %_index_ptr4625
  %_id4627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4567
  %_id4628 = load i64, i64* %_i4598
  %_index_ptr4629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4627, i32 0, i32 1, i64 %_id4628
  store i64 %_idx_tmp4626, i64* %_index_ptr4629
  br label %_end4617
_else4616:
  %_id4630 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4564
  %_id4631 = load i64, i64* %_i4598
  %_index_ptr4632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4630, i32 0, i32 1, i64 %_id4631
  %_idx_tmp4633 = load i64, i64* %_index_ptr4632
  %_id4634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4567
  %_id4635 = load i64, i64* %_i4598
  %_index_ptr4636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4634, i32 0, i32 1, i64 %_id4635
  store i64 %_idx_tmp4633, i64* %_index_ptr4636
  br label %_end4617
_end4617:
  br label %_end4608
_else4607:
  %_id4637 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4564
  %_id4638 = load i64, i64* %_i4598
  %_index_ptr4639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4637, i32 0, i32 1, i64 %_id4638
  %_idx_tmp4640 = load i64, i64* %_index_ptr4639
  %_id4641 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4567
  %_id4643 = load i64, i64* %_i4598
  %_bop4642 = add i64 %_id4643, 1
  %_index_ptr4644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4641, i32 0, i32 1, i64 %_bop4642
  store i64 %_idx_tmp4640, i64* %_index_ptr4644
  br label %_end4608
_end4608:
  %_id4646 = load i64, i64* %_i4598
  %_bop4645 = add i64 %_id4646, 1
  store i64 %_bop4645, i64* %_i4598
  br label %_start4602
_end4604:
  %_id4647 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4567
  ret { i64, [0 x i64] }* %_id4647
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_out4538 = alloca { i64, [0 x i64] }*
  %_i4547 = alloca i64
  %_unsorted4536 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted4536
  %_len4537 = alloca i64
  store i64 %len, i64* %_len4537
  %_raw_array4539 = call i64* @oat_alloc_array(i64 1)
  %_array4540 = bitcast i64* %_raw_array4539 to { i64, [0 x i64] }*
  %_CArr_elem_04541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4540, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04541
  store { i64, [0 x i64] }* %_array4540, { i64, [0 x i64] }** %_out4538
  %_id4542 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4536
  %_index_ptr4543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4542, i32 0, i32 1, i32 0
  %_idx_tmp4544 = load i64, i64* %_index_ptr4543
  %_id4545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4538
  %_index_ptr4546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4545, i32 0, i32 1, i32 0
  store i64 %_idx_tmp4544, i64* %_index_ptr4546
  store i64 1, i64* %_i4547
  br label %_start4551
_start4551:
  %_id4549 = load i64, i64* %_i4547
  %_id4550 = load i64, i64* %_len4537
  %_bop4548 = icmp slt i64 %_id4549, %_id4550
  br i1 %_bop4548, label %_body4552, label %_end4553
_body4552:
  %_id4556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4536
  %_id4557 = load i64, i64* %_i4547
  %_index_ptr4558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4556, i32 0, i32 1, i64 %_id4557
  %_idx_tmp4559 = load i64, i64* %_index_ptr4558
  %_id4555 = load i64, i64* %_i4547
  %_id4554 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4538
  %_Call_retval4560 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_id4554, i64 %_id4555, i64 %_idx_tmp4559)
  store { i64, [0 x i64] }* %_Call_retval4560, { i64, [0 x i64] }** %_out4538
  %_id4562 = load i64, i64* %_i4547
  %_bop4561 = add i64 %_id4562, 1
  store i64 %_bop4561, i64* %_i4547
  br label %_start4551
_end4553:
  %_id4563 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4538
  ret { i64, [0 x i64] }* %_id4563
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array4521 = alloca { i64, [0 x i64] }*
  %_result4530 = alloca { i64, [0 x i64] }*
  %_argc4519 = alloca i64
  store i64 %argc, i64* %_argc4519
  %_argv4520 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4520
  %_raw_array4522 = call i64* @oat_alloc_array(i64 6)
  %_array4523 = bitcast i64* %_raw_array4522 to { i64, [0 x i64] }*
  %_CArr_elem_54529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 5
  store i64 6, i64* %_CArr_elem_54529
  %_CArr_elem_44528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 4
  store i64 2, i64* %_CArr_elem_44528
  %_CArr_elem_34527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 3
  store i64 3, i64* %_CArr_elem_34527
  %_CArr_elem_24526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 2
  store i64 32, i64* %_CArr_elem_24526
  %_CArr_elem_14525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 1
  store i64 42, i64* %_CArr_elem_14525
  %_CArr_elem_04524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4523, i32 0, i32 1, i32 0
  store i64 13, i64* %_CArr_elem_04524
  store { i64, [0 x i64] }* %_array4523, { i64, [0 x i64] }** %_array4521
  %_id4531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4521
  %_Call_retval4532 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_id4531, i64 6)
  store { i64, [0 x i64] }* %_Call_retval4532, { i64, [0 x i64] }** %_result4530
  %_id4533 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result4530
  %_index_ptr4534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4533, i32 0, i32 1, i32 5
  %_idx_tmp4535 = load i64, i64* %_index_ptr4534
  ret i64 %_idx_tmp4535
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
