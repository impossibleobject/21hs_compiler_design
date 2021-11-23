; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_l3765 = alloca i64
  %_r3768 = alloca i64
  %_tmp3771 = alloca i64
  %_m3772 = alloca i64
  %_array3762 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array3762
  %_i3763 = alloca i64
  store i64 %i, i64* %_i3763
  %_len3764 = alloca i64
  store i64 %len, i64* %_len3764
  %_id3767 = load i64, i64* %_i3763
  %_bop3766 = mul i64 %_id3767, 2
  store i64 %_bop3766, i64* %_l3765
  %_id3770 = load i64, i64* %_i3763
  %_bop3769 = add i64 %_id3770, 1
  store i64 %_bop3769, i64* %_r3768
  store i64 0, i64* %_tmp3771
  %_id3773 = load i64, i64* %_i3763
  store i64 %_id3773, i64* %_m3772
  %_id3775 = load i64, i64* %_l3765
  %_id3776 = load i64, i64* %_len3764
  %_bop3774 = icmp slt i64 %_id3775, %_id3776
  br i1 %_bop3774, label %_then3777, label %_else3778
_then3777:
  %_id3781 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3762
  %_id3782 = load i64, i64* %_l3765
  %_index_ptr3783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3781, i32 0, i32 1, i64 %_id3782
  %_idx_tmp3787 = load i64, i64* %_index_ptr3783
  %_id3784 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3762
  %_id3785 = load i64, i64* %_m3772
  %_index_ptr3786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3784, i32 0, i32 1, i64 %_id3785
  %_idx_tmp3788 = load i64, i64* %_index_ptr3786
  %_bop3780 = icmp sgt i64 %_idx_tmp3787, %_idx_tmp3788
  br i1 %_bop3780, label %_then3789, label %_else3790
_then3789:
  %_id3792 = load i64, i64* %_l3765
  store i64 %_id3792, i64* %_m3772
  br label %_end3791
_else3790:
  br label %_end3791
_end3791:
  br label %_end3779
_else3778:
  br label %_end3779
_end3779:
  %_id3794 = load i64, i64* %_r3768
  %_id3795 = load i64, i64* %_len3764
  %_bop3793 = icmp slt i64 %_id3794, %_id3795
  br i1 %_bop3793, label %_then3796, label %_else3797
_then3796:
  %_id3800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3762
  %_id3801 = load i64, i64* %_r3768
  %_index_ptr3802 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3800, i32 0, i32 1, i64 %_id3801
  %_idx_tmp3806 = load i64, i64* %_index_ptr3802
  %_id3803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3762
  %_id3804 = load i64, i64* %_m3772
  %_index_ptr3805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3803, i32 0, i32 1, i64 %_id3804
  %_idx_tmp3807 = load i64, i64* %_index_ptr3805
  %_bop3799 = icmp sgt i64 %_idx_tmp3806, %_idx_tmp3807
  br i1 %_bop3799, label %_then3808, label %_else3809
_then3808:
  %_id3811 = load i64, i64* %_r3768
  store i64 %_id3811, i64* %_m3772
  br label %_end3810
_else3809:
  br label %_end3810
_end3810:
  br label %_end3798
_else3797:
  br label %_end3798
_end3798:
  %_id3813 = load i64, i64* %_m3772
  %_id3814 = load i64, i64* %_i3763
  %_bop3812 = icmp ne i64 %_id3813, %_id3814
  br i1 %_bop3812, label %_then3815, label %_else3816
_then3815:
  %_id3818 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3762
  %_id3819 = load i64, i64* %_i3763
  %_index_ptr3820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3818, i32 0, i32 1, i64 %_id3819
  %_idx_tmp3821 = load i64, i64* %_index_ptr3820
  store i64 %_idx_tmp3821, i64* %_tmp3771
  %_id3822 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3762
  %_id3823 = load i64, i64* %_m3772
  %_index_ptr3824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3822, i32 0, i32 1, i64 %_id3823
  %_idx_tmp3825 = load i64, i64* %_index_ptr3824
  %_id3826 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3762
  %_id3827 = load i64, i64* %_i3763
  %_index_ptr3828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3826, i32 0, i32 1, i64 %_id3827
  store i64 %_idx_tmp3825, i64* %_index_ptr3828
  %_id3829 = load i64, i64* %_tmp3771
  %_id3830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3762
  %_id3831 = load i64, i64* %_m3772
  %_index_ptr3832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3830, i32 0, i32 1, i64 %_id3831
  store i64 %_id3829, i64* %_index_ptr3832
  %_id3835 = load i64, i64* %_len3764
  %_id3834 = load i64, i64* %_m3772
  %_id3833 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3762
  call void @min_heapify({ i64, [0 x i64] }* %_id3833, i64 %_id3834, i64 %_id3835)
  br label %_end3817
_else3816:
  br label %_end3817
_end3817:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_i3749 = alloca i64
  %_array3747 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array3747
  %_len3748 = alloca i64
  store i64 %len, i64* %_len3748
  %_id3750 = load i64, i64* %_len3748
  store i64 %_id3750, i64* %_i3749
  br label %_start3753
_start3753:
  %_id3752 = load i64, i64* %_i3749
  %_bop3751 = icmp sge i64 %_id3752, 1
  br i1 %_bop3751, label %_body3754, label %_end3755
_body3754:
  %_id3758 = load i64, i64* %_len3748
  %_id3757 = load i64, i64* %_i3749
  %_id3756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3747
  call void @min_heapify({ i64, [0 x i64] }* %_id3756, i64 %_id3757, i64 %_id3758)
  %_id3761 = load i64, i64* %_i3749
  %_bop3760 = sub i64 %_id3761, 1
  store i64 %_bop3760, i64* %_i3749
  br label %_start3753
_end3755:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_array3695 = alloca { i64, [0 x i64] }*
  %_end_result3709 = alloca { i64, [0 x i64] }*
  %_same3725 = alloca i64
  %_i3726 = alloca i64
  %_argc3693 = alloca i64
  store i64 %argc, i64* %_argc3693
  %_argv3694 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3694
  %_raw_array3696 = call i64* @oat_alloc_array(i64 11)
  %_array3697 = bitcast i64* %_raw_array3696 to { i64, [0 x i64] }*
  %_CArr_elem_103708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 10
  store i64 5, i64* %_CArr_elem_103708
  %_CArr_elem_93707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 9
  store i64 4, i64* %_CArr_elem_93707
  %_CArr_elem_83706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 8
  store i64 6, i64* %_CArr_elem_83706
  %_CArr_elem_73705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 7
  store i64 3, i64* %_CArr_elem_73705
  %_CArr_elem_63704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 6
  store i64 7, i64* %_CArr_elem_63704
  %_CArr_elem_53703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 5
  store i64 10, i64* %_CArr_elem_53703
  %_CArr_elem_43702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 4
  store i64 8, i64* %_CArr_elem_43702
  %_CArr_elem_33701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 3
  store i64 2, i64* %_CArr_elem_33701
  %_CArr_elem_23700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_23700
  %_CArr_elem_13699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 1
  store i64 9, i64* %_CArr_elem_13699
  %_CArr_elem_03698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3697, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03698
  store { i64, [0 x i64] }* %_array3697, { i64, [0 x i64] }** %_array3695
  %_raw_array3710 = call i64* @oat_alloc_array(i64 11)
  %_array3711 = bitcast i64* %_raw_array3710 to { i64, [0 x i64] }*
  %_CArr_elem_103722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 10
  store i64 10, i64* %_CArr_elem_103722
  %_CArr_elem_93721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 9
  store i64 9, i64* %_CArr_elem_93721
  %_CArr_elem_83720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 8
  store i64 6, i64* %_CArr_elem_83720
  %_CArr_elem_73719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 7
  store i64 3, i64* %_CArr_elem_73719
  %_CArr_elem_63718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 6
  store i64 7, i64* %_CArr_elem_63718
  %_CArr_elem_53717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 5
  store i64 5, i64* %_CArr_elem_53717
  %_CArr_elem_43716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 4
  store i64 8, i64* %_CArr_elem_43716
  %_CArr_elem_33715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 3
  store i64 2, i64* %_CArr_elem_33715
  %_CArr_elem_23714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 2
  store i64 4, i64* %_CArr_elem_23714
  %_CArr_elem_13713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_13713
  %_CArr_elem_03712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3711, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03712
  store { i64, [0 x i64] }* %_array3711, { i64, [0 x i64] }** %_end_result3709
  %_id3723 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3695
  call void @make_min_heap({ i64, [0 x i64] }* %_id3723, i64 10)
  store i64 0, i64* %_same3725
  store i64 0, i64* %_i3726
  br label %_start3729
_start3729:
  %_id3728 = load i64, i64* %_i3726
  %_bop3727 = icmp slt i64 %_id3728, 11
  br i1 %_bop3727, label %_body3730, label %_end3731
_body3730:
  %_id3733 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3695
  %_id3734 = load i64, i64* %_i3726
  %_index_ptr3735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3733, i32 0, i32 1, i64 %_id3734
  %_idx_tmp3739 = load i64, i64* %_index_ptr3735
  %_id3736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result3709
  %_id3737 = load i64, i64* %_i3726
  %_index_ptr3738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3736, i32 0, i32 1, i64 %_id3737
  %_idx_tmp3740 = load i64, i64* %_index_ptr3738
  %_bop3732 = icmp ne i64 %_idx_tmp3739, %_idx_tmp3740
  br i1 %_bop3732, label %_then3741, label %_else3742
_then3741:
  store i64 1, i64* %_same3725
  br label %_end3743
_else3742:
  br label %_end3743
_end3743:
  %_id3745 = load i64, i64* %_i3726
  %_bop3744 = add i64 %_id3745, 1
  store i64 %_bop3744, i64* %_i3726
  br label %_start3729
_end3731:
  %_id3746 = load i64, i64* %_same3725
  ret i64 %_id3746
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
