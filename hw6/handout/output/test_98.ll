; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %_a7830, i64 %_l7827, i64 %_r7824) {
  %_a7831 = alloca { i64, [0 x i64] }*
  %_l7828 = alloca i64
  %_r7825 = alloca i64
  %_j7833 = alloca i64
  store { i64, [0 x i64] }* %_a7830, { i64, [0 x i64] }** %_a7831
  store i64 %_l7827, i64* %_l7828
  store i64 %_r7824, i64* %_r7825
  store i64 0, i64* %_j7833
  %_l7835 = load i64, i64* %_l7828
  %_r7836 = load i64, i64* %_r7825
  %_bop7837 = icmp slt i64 %_l7835, %_r7836
  br i1 %_bop7837, label %_then7855, label %_else7854
_else7854:
  br label %_merge7853
_merge7853:
  ret void
_then7855:
  %_r7838 = load i64, i64* %_r7825
  %_l7839 = load i64, i64* %_l7828
  %_a7840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7831
  %_result7841 = call i64 @partition({ i64, [0 x i64] }* %_a7840, i64 %_l7839, i64 %_r7838)
  store i64 %_result7841, i64* %_j7833
  %_j7843 = load i64, i64* %_j7833
  %_bop7844 = sub i64 %_j7843, 1
  %_l7845 = load i64, i64* %_l7828
  %_a7846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7831
  call void @quick_sort({ i64, [0 x i64] }* %_a7846, i64 %_l7845, i64 %_bop7844)
  %_r7848 = load i64, i64* %_r7825
  %_j7849 = load i64, i64* %_j7833
  %_bop7850 = add i64 %_j7849, 1
  %_a7851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7831
  call void @quick_sort({ i64, [0 x i64] }* %_a7851, i64 %_bop7850, i64 %_r7848)
  br label %_merge7853
}

define i64 @partition({ i64, [0 x i64] }* %_a7694, i64 %_l7691, i64 %_r7688) {
  %_a7695 = alloca { i64, [0 x i64] }*
  %_l7692 = alloca i64
  %_r7689 = alloca i64
  %_pivot7703 = alloca i64
  %_i7706 = alloca i64
  %_j7710 = alloca i64
  %_t7712 = alloca i64
  %_done7714 = alloca i64
  store { i64, [0 x i64] }* %_a7694, { i64, [0 x i64] }** %_a7695
  store i64 %_l7691, i64* %_l7692
  store i64 %_r7688, i64* %_r7689
  %_a7697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_l7698 = load i64, i64* %_l7692
  %_tmp7700 = bitcast { i64, [0 x i64] }* %_a7697 to i64*
  call void @oat_assert_array_length(i64* %_tmp7700, i64 %_l7698)
  %_index_ptr7701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7697, i32 0, i32 1, i64 %_l7698
  %_index7702 = load i64, i64* %_index_ptr7701
  store i64 %_index7702, i64* %_pivot7703
  %_l7705 = load i64, i64* %_l7692
  store i64 %_l7705, i64* %_i7706
  %_r7708 = load i64, i64* %_r7689
  %_bop7709 = add i64 %_r7708, 1
  store i64 %_bop7709, i64* %_j7710
  store i64 0, i64* %_t7712
  store i64 0, i64* %_done7714
  br label %_cond7720
_body7719:
  %_i7721 = load i64, i64* %_i7706
  %_bop7722 = add i64 %_i7721, 1
  store i64 %_bop7722, i64* %_i7706
  br label %_cond7738
_body7737:
  %_i7739 = load i64, i64* %_i7706
  %_bop7740 = add i64 %_i7739, 1
  store i64 %_bop7740, i64* %_i7706
  br label %_cond7738
_body7754:
  %_j7756 = load i64, i64* %_j7710
  %_bop7757 = sub i64 %_j7756, 1
  store i64 %_bop7757, i64* %_j7710
  br label %_cond7755
_cond7720:
  %_done7716 = load i64, i64* %_done7714
  %_bop7717 = icmp eq i64 %_done7716, 0
  br i1 %_bop7717, label %_body7719, label %_post7718
_cond7738:
  %_a7724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_i7725 = load i64, i64* %_i7706
  %_tmp7727 = bitcast { i64, [0 x i64] }* %_a7724 to i64*
  call void @oat_assert_array_length(i64* %_tmp7727, i64 %_i7725)
  %_index_ptr7728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7724, i32 0, i32 1, i64 %_i7725
  %_index7729 = load i64, i64* %_index_ptr7728
  %_pivot7730 = load i64, i64* %_pivot7703
  %_bop7731 = icmp sle i64 %_index7729, %_pivot7730
  %_i7732 = load i64, i64* %_i7706
  %_r7733 = load i64, i64* %_r7689
  %_bop7734 = icmp sle i64 %_i7732, %_r7733
  %_bop7735 = and i1 %_bop7731, %_bop7734
  br i1 %_bop7735, label %_body7737, label %_post7736
_cond7755:
  %_a7745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_j7746 = load i64, i64* %_j7710
  %_tmp7748 = bitcast { i64, [0 x i64] }* %_a7745 to i64*
  call void @oat_assert_array_length(i64* %_tmp7748, i64 %_j7746)
  %_index_ptr7749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7745, i32 0, i32 1, i64 %_j7746
  %_index7750 = load i64, i64* %_index_ptr7749
  %_pivot7751 = load i64, i64* %_pivot7703
  %_bop7752 = icmp sgt i64 %_index7750, %_pivot7751
  br i1 %_bop7752, label %_body7754, label %_post7753
_else7764:
  br label %_merge7763
_else7795:
  br label %_merge7794
_merge7763:
  %_done7766 = load i64, i64* %_done7714
  %_bop7767 = icmp eq i64 %_done7766, 0
  br i1 %_bop7767, label %_then7796, label %_else7795
_merge7794:
  br label %_cond7720
_post7718:
  %_a7797 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_l7798 = load i64, i64* %_l7692
  %_tmp7800 = bitcast { i64, [0 x i64] }* %_a7797 to i64*
  call void @oat_assert_array_length(i64* %_tmp7800, i64 %_l7798)
  %_index_ptr7801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7797, i32 0, i32 1, i64 %_l7798
  %_index7802 = load i64, i64* %_index_ptr7801
  store i64 %_index7802, i64* %_t7712
  %_a7804 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_l7805 = load i64, i64* %_l7692
  %_tmp7807 = bitcast { i64, [0 x i64] }* %_a7804 to i64*
  call void @oat_assert_array_length(i64* %_tmp7807, i64 %_l7805)
  %_index_ptr7808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7804, i32 0, i32 1, i64 %_l7805
  %_a7809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_j7810 = load i64, i64* %_j7710
  %_tmp7812 = bitcast { i64, [0 x i64] }* %_a7809 to i64*
  call void @oat_assert_array_length(i64* %_tmp7812, i64 %_j7810)
  %_index_ptr7813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7809, i32 0, i32 1, i64 %_j7810
  %_index7814 = load i64, i64* %_index_ptr7813
  store i64 %_index7814, i64* %_index_ptr7808
  %_a7816 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_j7817 = load i64, i64* %_j7710
  %_tmp7819 = bitcast { i64, [0 x i64] }* %_a7816 to i64*
  call void @oat_assert_array_length(i64* %_tmp7819, i64 %_j7817)
  %_index_ptr7820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7816, i32 0, i32 1, i64 %_j7817
  %_t7821 = load i64, i64* %_t7712
  store i64 %_t7821, i64* %_index_ptr7820
  %_j7823 = load i64, i64* %_j7710
  ret i64 %_j7823
_post7736:
  %_j7742 = load i64, i64* %_j7710
  %_bop7743 = sub i64 %_j7742, 1
  store i64 %_bop7743, i64* %_j7710
  br label %_cond7755
_post7753:
  %_i7759 = load i64, i64* %_i7706
  %_j7760 = load i64, i64* %_j7710
  %_bop7761 = icmp sge i64 %_i7759, %_j7760
  br i1 %_bop7761, label %_then7765, label %_else7764
_then7765:
  store i64 1, i64* %_done7714
  br label %_merge7763
_then7796:
  %_a7768 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_i7769 = load i64, i64* %_i7706
  %_tmp7771 = bitcast { i64, [0 x i64] }* %_a7768 to i64*
  call void @oat_assert_array_length(i64* %_tmp7771, i64 %_i7769)
  %_index_ptr7772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7768, i32 0, i32 1, i64 %_i7769
  %_index7773 = load i64, i64* %_index_ptr7772
  store i64 %_index7773, i64* %_t7712
  %_a7775 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_i7776 = load i64, i64* %_i7706
  %_tmp7778 = bitcast { i64, [0 x i64] }* %_a7775 to i64*
  call void @oat_assert_array_length(i64* %_tmp7778, i64 %_i7776)
  %_index_ptr7779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7775, i32 0, i32 1, i64 %_i7776
  %_a7780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_j7781 = load i64, i64* %_j7710
  %_tmp7783 = bitcast { i64, [0 x i64] }* %_a7780 to i64*
  call void @oat_assert_array_length(i64* %_tmp7783, i64 %_j7781)
  %_index_ptr7784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7780, i32 0, i32 1, i64 %_j7781
  %_index7785 = load i64, i64* %_index_ptr7784
  store i64 %_index7785, i64* %_index_ptr7779
  %_a7787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7695
  %_j7788 = load i64, i64* %_j7710
  %_tmp7790 = bitcast { i64, [0 x i64] }* %_a7787 to i64*
  call void @oat_assert_array_length(i64* %_tmp7790, i64 %_j7788)
  %_index_ptr7791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a7787, i32 0, i32 1, i64 %_j7788
  %_t7792 = load i64, i64* %_t7712
  store i64 %_t7792, i64* %_index_ptr7791
  br label %_merge7794
}

define i64 @program(i64 %_argc7655, { i64, [0 x i8*] }* %_argv7652) {
  %_a7678 = alloca { i64, [0 x i64] }*
  %_raw_array7658 = call i64* @oat_alloc_array(i64 9)
  %_array7659 = bitcast i64* %_raw_array7658 to { i64, [0 x i64] }*
  %_ind7660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7659, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind7660
  %_ind7662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7659, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind7662
  %_ind7664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7659, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind7664
  %_ind7666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7659, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind7666
  %_ind7668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7659, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind7668
  %_ind7670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7659, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind7670
  %_ind7672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7659, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind7672
  %_ind7674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7659, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind7674
  %_ind7676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7659, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind7676
  store { i64, [0 x i64] }* %_array7659, { i64, [0 x i64] }** %_a7678
  %_a7680 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7678
  %_result7681 = call i8* @string_of_array({ i64, [0 x i64] }* %_a7680)
  call void @print_string(i8* %_result7681)
  %_a7683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7678
  call void @quick_sort({ i64, [0 x i64] }* %_a7683, i64 0, i64 8)
  %_a7685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a7678
  %_result7686 = call i8* @string_of_array({ i64, [0 x i64] }* %_a7685)
  call void @print_string(i8* %_result7686)
  ret i64 255
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
