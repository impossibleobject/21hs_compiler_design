; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_maxarr4666 = alloca { i64, [0 x i64] }*
  %_maxs4670 = alloca i64
  %_i4676 = alloca i64
  %_j4683 = alloca i64
  %_arr4664 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4664
  %_size4665 = alloca i64
  store i64 %size, i64* %_size4665
  %_id4667 = load i64, i64* %_size4665
  %_raw_array4668 = call i64* @oat_alloc_array(i64 %_id4667)
  %_array4669 = bitcast i64* %_raw_array4668 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4669, { i64, [0 x i64] }** %_maxarr4666
  store i64 0, i64* %_maxs4670
  %_id4671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4664
  %_index_ptr4672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4671, i32 0, i32 1, i32 0
  %_idx_tmp4673 = load i64, i64* %_index_ptr4672
  %_id4674 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4666
  %_index_ptr4675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4674, i32 0, i32 1, i32 0
  store i64 %_idx_tmp4673, i64* %_index_ptr4675
  store i64 0, i64* %_i4676
  br label %_start4680
_start4680:
  %_id4678 = load i64, i64* %_i4676
  %_id4679 = load i64, i64* %_size4665
  %_bop4677 = icmp slt i64 %_id4678, %_id4679
  br i1 %_bop4677, label %_body4681, label %_end4682
_body4681:
  store i64 0, i64* %_j4683
  br label %_start4687
_start4687:
  %_id4685 = load i64, i64* %_j4683
  %_id4686 = load i64, i64* %_i4676
  %_bop4684 = icmp slt i64 %_id4685, %_id4686
  br i1 %_bop4684, label %_body4688, label %_end4689
_body4688:
  %_id4692 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4664
  %_id4693 = load i64, i64* %_i4676
  %_index_ptr4694 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4692, i32 0, i32 1, i64 %_id4693
  %_idx_tmp4698 = load i64, i64* %_index_ptr4694
  %_id4695 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4664
  %_id4696 = load i64, i64* %_j4683
  %_index_ptr4697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4695, i32 0, i32 1, i64 %_id4696
  %_idx_tmp4699 = load i64, i64* %_index_ptr4697
  %_bop4691 = icmp sgt i64 %_idx_tmp4698, %_idx_tmp4699
  %_id4701 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4666
  %_id4702 = load i64, i64* %_i4676
  %_index_ptr4703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4701, i32 0, i32 1, i64 %_id4702
  %_idx_tmp4713 = load i64, i64* %_index_ptr4703
  %_id4705 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4666
  %_id4706 = load i64, i64* %_j4683
  %_index_ptr4707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4705, i32 0, i32 1, i64 %_id4706
  %_idx_tmp4711 = load i64, i64* %_index_ptr4707
  %_id4708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4664
  %_id4709 = load i64, i64* %_i4676
  %_index_ptr4710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4708, i32 0, i32 1, i64 %_id4709
  %_idx_tmp4712 = load i64, i64* %_index_ptr4710
  %_bop4704 = add i64 %_idx_tmp4711, %_idx_tmp4712
  %_bop4700 = icmp slt i64 %_idx_tmp4713, %_bop4704
  %_bop4690 = and i1 %_bop4691, %_bop4700
  br i1 %_bop4690, label %_then4714, label %_else4715
_then4714:
  %_id4718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4666
  %_id4719 = load i64, i64* %_j4683
  %_index_ptr4720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4718, i32 0, i32 1, i64 %_id4719
  %_idx_tmp4724 = load i64, i64* %_index_ptr4720
  %_id4721 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4664
  %_id4722 = load i64, i64* %_i4676
  %_index_ptr4723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4721, i32 0, i32 1, i64 %_id4722
  %_idx_tmp4725 = load i64, i64* %_index_ptr4723
  %_bop4717 = add i64 %_idx_tmp4724, %_idx_tmp4725
  %_id4726 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4666
  %_id4727 = load i64, i64* %_i4676
  %_index_ptr4728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4726, i32 0, i32 1, i64 %_id4727
  store i64 %_bop4717, i64* %_index_ptr4728
  br label %_end4716
_else4715:
  br label %_end4716
_end4716:
  %_id4730 = load i64, i64* %_j4683
  %_bop4729 = add i64 %_id4730, 1
  store i64 %_bop4729, i64* %_j4683
  br label %_start4687
_end4689:
  %_id4732 = load i64, i64* %_maxs4670
  %_id4733 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4666
  %_id4734 = load i64, i64* %_i4676
  %_index_ptr4735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4733, i32 0, i32 1, i64 %_id4734
  %_idx_tmp4736 = load i64, i64* %_index_ptr4735
  %_bop4731 = icmp slt i64 %_id4732, %_idx_tmp4736
  br i1 %_bop4731, label %_then4737, label %_else4738
_then4737:
  %_id4740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4666
  %_id4741 = load i64, i64* %_i4676
  %_index_ptr4742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4740, i32 0, i32 1, i64 %_id4741
  %_idx_tmp4743 = load i64, i64* %_index_ptr4742
  store i64 %_idx_tmp4743, i64* %_maxs4670
  br label %_end4739
_else4738:
  br label %_end4739
_end4739:
  %_id4745 = load i64, i64* %_i4676
  %_bop4744 = add i64 %_id4745, 1
  store i64 %_bop4744, i64* %_i4676
  br label %_start4680
_end4682:
  %_id4746 = load i64, i64* %_maxs4670
  ret i64 %_id4746
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array4650 = alloca { i64, [0 x i64] }*
  %_max_ans4660 = alloca i64
  %_argc4648 = alloca i64
  store i64 %argc, i64* %_argc4648
  %_argv4649 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4649
  %_raw_array4651 = call i64* @oat_alloc_array(i64 7)
  %_array4652 = bitcast i64* %_raw_array4651 to { i64, [0 x i64] }*
  %_CArr_elem_64659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4652, i32 0, i32 1, i32 6
  store i64 5, i64* %_CArr_elem_64659
  %_CArr_elem_54658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4652, i32 0, i32 1, i32 5
  store i64 4, i64* %_CArr_elem_54658
  %_CArr_elem_44657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4652, i32 0, i32 1, i32 4
  store i64 101, i64* %_CArr_elem_44657
  %_CArr_elem_34656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4652, i32 0, i32 1, i32 3
  store i64 3, i64* %_CArr_elem_34656
  %_CArr_elem_24655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4652, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_24655
  %_CArr_elem_14654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4652, i32 0, i32 1, i32 1
  store i64 101, i64* %_CArr_elem_14654
  %_CArr_elem_04653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4652, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_04653
  store { i64, [0 x i64] }* %_array4652, { i64, [0 x i64] }** %_array4650
  %_id4661 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4650
  %_Call_retval4662 = call i64 @maxsum({ i64, [0 x i64] }* %_id4661, i64 7)
  store i64 %_Call_retval4662, i64* %_max_ans4660
  %_id4663 = load i64, i64* %_max_ans4660
  ret i64 %_id4663
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
