; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %_arr6504, i64 %_size6501) {
  %_arr6505 = alloca { i64, [0 x i64] }*
  %_size6502 = alloca i64
  %_i6512 = alloca i64
  %_maxarr6531 = alloca { i64, [0 x i64] }*
  %_maxs6533 = alloca i64
  %_i6545 = alloca i64
  %_j6553 = alloca i64
  store { i64, [0 x i64] }* %_arr6504, { i64, [0 x i64] }** %_arr6505
  store i64 %_size6501, i64* %_size6502
  %_size6509 = load i64, i64* %_size6502
  %_raw_array6510 = call i64* @oat_alloc_array(i64 %_size6509)
  %_array6511 = bitcast i64* %_raw_array6510 to { i64, [0 x i64] }*
  %_bnd_6508 = alloca i64
  store i64 %_size6509, i64* %_bnd_6508
  %_ptr_6507 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6511, { i64, [0 x i64] }** %_ptr_6507
  store i64 0, i64* %_i6512
  br label %_cond6519
_body6518:
  %__ptr_65076520 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_6507
  %_i6521 = load i64, i64* %_i6512
  %_tmp6523 = bitcast { i64, [0 x i64] }* %__ptr_65076520 to i64*
  call void @oat_assert_array_length(i64* %_tmp6523, i64 %_i6521)
  %_index_ptr6524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_65076520, i32 0, i32 1, i64 %_i6521
  store i64 0, i64* %_index_ptr6524
  %_i6526 = load i64, i64* %_i6512
  %_bop6527 = add i64 %_i6526, 1
  store i64 %_bop6527, i64* %_i6512
  br label %_cond6519
_body6551:
  store i64 0, i64* %_j6553
  br label %_cond6560
_body6559:
  %_arr6561 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6505
  %_i6562 = load i64, i64* %_i6545
  %_tmp6564 = bitcast { i64, [0 x i64] }* %_arr6561 to i64*
  call void @oat_assert_array_length(i64* %_tmp6564, i64 %_i6562)
  %_index_ptr6565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6561, i32 0, i32 1, i64 %_i6562
  %_index6566 = load i64, i64* %_index_ptr6565
  %_arr6567 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6505
  %_j6568 = load i64, i64* %_j6553
  %_tmp6570 = bitcast { i64, [0 x i64] }* %_arr6567 to i64*
  call void @oat_assert_array_length(i64* %_tmp6570, i64 %_j6568)
  %_index_ptr6571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6567, i32 0, i32 1, i64 %_j6568
  %_index6572 = load i64, i64* %_index_ptr6571
  %_bop6573 = icmp sgt i64 %_index6566, %_index6572
  %_maxarr6574 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6531
  %_i6575 = load i64, i64* %_i6545
  %_tmp6577 = bitcast { i64, [0 x i64] }* %_maxarr6574 to i64*
  call void @oat_assert_array_length(i64* %_tmp6577, i64 %_i6575)
  %_index_ptr6578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6574, i32 0, i32 1, i64 %_i6575
  %_index6579 = load i64, i64* %_index_ptr6578
  %_maxarr6580 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6531
  %_j6581 = load i64, i64* %_j6553
  %_tmp6583 = bitcast { i64, [0 x i64] }* %_maxarr6580 to i64*
  call void @oat_assert_array_length(i64* %_tmp6583, i64 %_j6581)
  %_index_ptr6584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6580, i32 0, i32 1, i64 %_j6581
  %_index6585 = load i64, i64* %_index_ptr6584
  %_arr6586 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6505
  %_i6587 = load i64, i64* %_i6545
  %_tmp6589 = bitcast { i64, [0 x i64] }* %_arr6586 to i64*
  call void @oat_assert_array_length(i64* %_tmp6589, i64 %_i6587)
  %_index_ptr6590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6586, i32 0, i32 1, i64 %_i6587
  %_index6591 = load i64, i64* %_index_ptr6590
  %_bop6592 = add i64 %_index6585, %_index6591
  %_bop6593 = icmp slt i64 %_index6579, %_bop6592
  %_bop6594 = and i1 %_bop6573, %_bop6593
  br i1 %_bop6594, label %_then6616, label %_else6615
_cond6519:
  %_i6514 = load i64, i64* %_i6512
  %__bnd_65086515 = load i64, i64* %_bnd_6508
  %_bop6516 = icmp slt i64 %_i6514, %__bnd_65086515
  br i1 %_bop6516, label %_body6518, label %_post6517
_cond6552:
  %_i6547 = load i64, i64* %_i6545
  %_size6548 = load i64, i64* %_size6502
  %_bop6549 = icmp slt i64 %_i6547, %_size6548
  br i1 %_bop6549, label %_body6551, label %_post6550
_cond6560:
  %_j6555 = load i64, i64* %_j6553
  %_i6556 = load i64, i64* %_i6545
  %_bop6557 = icmp slt i64 %_j6555, %_i6556
  br i1 %_bop6557, label %_body6559, label %_post6558
_else6615:
  br label %_merge6614
_else6636:
  br label %_merge6635
_merge6614:
  %_j6617 = load i64, i64* %_j6553
  %_bop6618 = add i64 %_j6617, 1
  store i64 %_bop6618, i64* %_j6553
  br label %_cond6560
_merge6635:
  %_i6638 = load i64, i64* %_i6545
  %_bop6639 = add i64 %_i6638, 1
  store i64 %_bop6639, i64* %_i6545
  br label %_cond6552
_post6517:
  store { i64, [0 x i64] }* %_array6511, { i64, [0 x i64] }** %_maxarr6531
  store i64 0, i64* %_maxs6533
  %_maxarr6535 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6531
  %_tmp6537 = bitcast { i64, [0 x i64] }* %_maxarr6535 to i64*
  call void @oat_assert_array_length(i64* %_tmp6537, i64 0)
  %_index_ptr6538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6535, i32 0, i32 1, i32 0
  %_arr6539 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6505
  %_tmp6541 = bitcast { i64, [0 x i64] }* %_arr6539 to i64*
  call void @oat_assert_array_length(i64* %_tmp6541, i64 0)
  %_index_ptr6542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6539, i32 0, i32 1, i32 0
  %_index6543 = load i64, i64* %_index_ptr6542
  store i64 %_index6543, i64* %_index_ptr6538
  store i64 0, i64* %_i6545
  br label %_cond6552
_post6550:
  %_maxs6641 = load i64, i64* %_maxs6533
  ret i64 %_maxs6641
_post6558:
  %_maxs6620 = load i64, i64* %_maxs6533
  %_maxarr6621 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6531
  %_i6622 = load i64, i64* %_i6545
  %_tmp6624 = bitcast { i64, [0 x i64] }* %_maxarr6621 to i64*
  call void @oat_assert_array_length(i64* %_tmp6624, i64 %_i6622)
  %_index_ptr6625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6621, i32 0, i32 1, i64 %_i6622
  %_index6626 = load i64, i64* %_index_ptr6625
  %_bop6627 = icmp slt i64 %_maxs6620, %_index6626
  br i1 %_bop6627, label %_then6637, label %_else6636
_then6616:
  %_maxarr6595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6531
  %_i6596 = load i64, i64* %_i6545
  %_tmp6598 = bitcast { i64, [0 x i64] }* %_maxarr6595 to i64*
  call void @oat_assert_array_length(i64* %_tmp6598, i64 %_i6596)
  %_index_ptr6599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6595, i32 0, i32 1, i64 %_i6596
  %_maxarr6600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6531
  %_j6601 = load i64, i64* %_j6553
  %_tmp6603 = bitcast { i64, [0 x i64] }* %_maxarr6600 to i64*
  call void @oat_assert_array_length(i64* %_tmp6603, i64 %_j6601)
  %_index_ptr6604 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6600, i32 0, i32 1, i64 %_j6601
  %_index6605 = load i64, i64* %_index_ptr6604
  %_arr6606 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6505
  %_i6607 = load i64, i64* %_i6545
  %_tmp6609 = bitcast { i64, [0 x i64] }* %_arr6606 to i64*
  call void @oat_assert_array_length(i64* %_tmp6609, i64 %_i6607)
  %_index_ptr6610 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6606, i32 0, i32 1, i64 %_i6607
  %_index6611 = load i64, i64* %_index_ptr6610
  %_bop6612 = add i64 %_index6605, %_index6611
  store i64 %_bop6612, i64* %_index_ptr6599
  br label %_merge6614
_then6637:
  %_maxarr6628 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6531
  %_i6629 = load i64, i64* %_i6545
  %_tmp6631 = bitcast { i64, [0 x i64] }* %_maxarr6628 to i64*
  call void @oat_assert_array_length(i64* %_tmp6631, i64 %_i6629)
  %_index_ptr6632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6628, i32 0, i32 1, i64 %_i6629
  %_index6633 = load i64, i64* %_index_ptr6632
  store i64 %_index6633, i64* %_maxs6533
  br label %_merge6635
}

define i64 @program(i64 %_argc6475, { i64, [0 x i8*] }* %_argv6472) {
  %_array6494 = alloca { i64, [0 x i64] }*
  %_max_ans6498 = alloca i64
  %_raw_array6478 = call i64* @oat_alloc_array(i64 7)
  %_array6479 = bitcast i64* %_raw_array6478 to { i64, [0 x i64] }*
  %_ind6480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6479, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind6480
  %_ind6482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6479, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind6482
  %_ind6484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6479, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind6484
  %_ind6486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6479, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind6486
  %_ind6488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6479, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind6488
  %_ind6490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6479, i32 0, i32 1, i32 5
  store i64 4, i64* %_ind6490
  %_ind6492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6479, i32 0, i32 1, i32 6
  store i64 5, i64* %_ind6492
  store { i64, [0 x i64] }* %_array6479, { i64, [0 x i64] }** %_array6494
  %_array6496 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6494
  %_result6497 = call i64 @maxsum({ i64, [0 x i64] }* %_array6496, i64 7)
  store i64 %_result6497, i64* %_max_ans6498
  %_max_ans6500 = load i64, i64* %_max_ans6498
  ret i64 %_max_ans6500
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
