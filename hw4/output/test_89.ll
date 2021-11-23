; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2847 = global [2 x i8] c" \00"
@_cstr_glb2853 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2827 = alloca { i64, [0 x i64] }*
  %_i2840 = alloca i64
  %_argc2825 = alloca i64
  store i64 %argc, i64* %_argc2825
  %_argv2826 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2826
  %_raw_array2828 = call i64* @oat_alloc_array(i64 10)
  %_array2829 = bitcast i64* %_raw_array2828 to { i64, [0 x i64] }*
  %_CArr_elem_92839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 9
  store i64 117, i64* %_CArr_elem_92839
  %_CArr_elem_82838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 8
  store i64 118, i64* %_CArr_elem_82838
  %_CArr_elem_72837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 7
  store i64 119, i64* %_CArr_elem_72837
  %_CArr_elem_62836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 6
  store i64 120, i64* %_CArr_elem_62836
  %_CArr_elem_52835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 5
  store i64 121, i64* %_CArr_elem_52835
  %_CArr_elem_42834 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 4
  store i64 122, i64* %_CArr_elem_42834
  %_CArr_elem_32833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 3
  store i64 123, i64* %_CArr_elem_32833
  %_CArr_elem_22832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 2
  store i64 124, i64* %_CArr_elem_22832
  %_CArr_elem_12831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 1
  store i64 125, i64* %_CArr_elem_12831
  %_CArr_elem_02830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 0
  store i64 126, i64* %_CArr_elem_02830
  store { i64, [0 x i64] }* %_array2829, { i64, [0 x i64] }** %_a2827
  store i64 0, i64* %_i2840
  %_id2841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2827
  %_Call_retval2842 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2841)
  call void @print_string(i8* %_Call_retval2842)
  %_id2844 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2827
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2844, i64 0, i64 9)
  %_cstr_loc2846 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2847, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2846)
  %_id2849 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2827
  %_Call_retval2850 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2849)
  call void @print_string(i8* %_Call_retval2850)
  %_cstr_loc2852 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2853, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2852)
  %_id2855 = load i64, i64* %_i2840
  ret i64 %_id2855
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_mid2800 = alloca i64
  %_a2797 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2797
  %_low2798 = alloca i64
  store i64 %low, i64* %_low2798
  %_high2799 = alloca i64
  store i64 %high, i64* %_high2799
  store i64 0, i64* %_mid2800
  %_id2802 = load i64, i64* %_low2798
  %_id2803 = load i64, i64* %_high2799
  %_bop2801 = icmp slt i64 %_id2802, %_id2803
  br i1 %_bop2801, label %_then2804, label %_else2805
_then2804:
  %_id2809 = load i64, i64* %_low2798
  %_id2810 = load i64, i64* %_high2799
  %_bop2808 = add i64 %_id2809, %_id2810
  %_bop2807 = lshr i64 %_bop2808, 1
  store i64 %_bop2807, i64* %_mid2800
  %_id2813 = load i64, i64* %_mid2800
  %_id2812 = load i64, i64* %_low2798
  %_id2811 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2797
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2811, i64 %_id2812, i64 %_id2813)
  %_id2818 = load i64, i64* %_high2799
  %_id2817 = load i64, i64* %_mid2800
  %_bop2816 = add i64 %_id2817, 1
  %_id2815 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2797
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2815, i64 %_bop2816, i64 %_id2818)
  %_id2823 = load i64, i64* %_mid2800
  %_id2822 = load i64, i64* %_high2799
  %_id2821 = load i64, i64* %_low2798
  %_id2820 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2797
  call void @merge({ i64, [0 x i64] }* %_id2820, i64 %_id2821, i64 %_id2822, i64 %_id2823)
  br label %_end2806
_else2805:
  br label %_end2806
_end2806:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_i2693 = alloca i64
  %_j2694 = alloca i64
  %_k2695 = alloca i64
  %_c2696 = alloca { i64, [0 x i64] }*
  %_a2689 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2689
  %_low2690 = alloca i64
  store i64 %low, i64* %_low2690
  %_high2691 = alloca i64
  store i64 %high, i64* %_high2691
  %_mid2692 = alloca i64
  store i64 %mid, i64* %_mid2692
  store i64 0, i64* %_i2693
  store i64 0, i64* %_j2694
  store i64 0, i64* %_k2695
  %_raw_array2697 = call i64* @oat_alloc_array(i64 50)
  %_array2698 = bitcast i64* %_raw_array2697 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2698, { i64, [0 x i64] }** %_c2696
  %_id2699 = load i64, i64* %_low2690
  store i64 %_id2699, i64* %_i2693
  %_id2701 = load i64, i64* %_mid2692
  %_bop2700 = add i64 %_id2701, 1
  store i64 %_bop2700, i64* %_j2694
  %_id2702 = load i64, i64* %_low2690
  store i64 %_id2702, i64* %_k2695
  br label %_start2710
_start2710:
  %_id2705 = load i64, i64* %_i2693
  %_id2706 = load i64, i64* %_mid2692
  %_bop2704 = icmp sle i64 %_id2705, %_id2706
  %_id2708 = load i64, i64* %_j2694
  %_id2709 = load i64, i64* %_high2691
  %_bop2707 = icmp sle i64 %_id2708, %_id2709
  %_bop2703 = and i1 %_bop2704, %_bop2707
  br i1 %_bop2703, label %_body2711, label %_end2712
_body2711:
  %_id2714 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id2715 = load i64, i64* %_i2693
  %_index_ptr2716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2714, i32 0, i32 1, i64 %_id2715
  %_idx_tmp2720 = load i64, i64* %_index_ptr2716
  %_id2717 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id2718 = load i64, i64* %_j2694
  %_index_ptr2719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2717, i32 0, i32 1, i64 %_id2718
  %_idx_tmp2721 = load i64, i64* %_index_ptr2719
  %_bop2713 = icmp slt i64 %_idx_tmp2720, %_idx_tmp2721
  br i1 %_bop2713, label %_then2722, label %_else2723
_then2722:
  %_id2725 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id2726 = load i64, i64* %_i2693
  %_index_ptr2727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2725, i32 0, i32 1, i64 %_id2726
  %_idx_tmp2728 = load i64, i64* %_index_ptr2727
  %_id2729 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2696
  %_id2730 = load i64, i64* %_k2695
  %_index_ptr2731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2729, i32 0, i32 1, i64 %_id2730
  store i64 %_idx_tmp2728, i64* %_index_ptr2731
  %_id2733 = load i64, i64* %_k2695
  %_bop2732 = add i64 %_id2733, 1
  store i64 %_bop2732, i64* %_k2695
  %_id2735 = load i64, i64* %_i2693
  %_bop2734 = add i64 %_id2735, 1
  store i64 %_bop2734, i64* %_i2693
  br label %_end2724
_else2723:
  %_id2736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id2737 = load i64, i64* %_j2694
  %_index_ptr2738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2736, i32 0, i32 1, i64 %_id2737
  %_idx_tmp2739 = load i64, i64* %_index_ptr2738
  %_id2740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2696
  %_id2741 = load i64, i64* %_k2695
  %_index_ptr2742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2740, i32 0, i32 1, i64 %_id2741
  store i64 %_idx_tmp2739, i64* %_index_ptr2742
  %_id2744 = load i64, i64* %_k2695
  %_bop2743 = add i64 %_id2744, 1
  store i64 %_bop2743, i64* %_k2695
  %_id2746 = load i64, i64* %_j2694
  %_bop2745 = add i64 %_id2746, 1
  store i64 %_bop2745, i64* %_j2694
  br label %_end2724
_end2724:
  br label %_start2710
_end2712:
  br label %_start2750
_start2750:
  %_id2748 = load i64, i64* %_i2693
  %_id2749 = load i64, i64* %_mid2692
  %_bop2747 = icmp sle i64 %_id2748, %_id2749
  br i1 %_bop2747, label %_body2751, label %_end2752
_body2751:
  %_id2753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id2754 = load i64, i64* %_i2693
  %_index_ptr2755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2753, i32 0, i32 1, i64 %_id2754
  %_idx_tmp2756 = load i64, i64* %_index_ptr2755
  %_id2757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2696
  %_id2758 = load i64, i64* %_k2695
  %_index_ptr2759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2757, i32 0, i32 1, i64 %_id2758
  store i64 %_idx_tmp2756, i64* %_index_ptr2759
  %_id2761 = load i64, i64* %_k2695
  %_bop2760 = add i64 %_id2761, 1
  store i64 %_bop2760, i64* %_k2695
  %_id2763 = load i64, i64* %_i2693
  %_bop2762 = add i64 %_id2763, 1
  store i64 %_bop2762, i64* %_i2693
  br label %_start2750
_end2752:
  br label %_start2767
_start2767:
  %_id2765 = load i64, i64* %_j2694
  %_id2766 = load i64, i64* %_high2691
  %_bop2764 = icmp sle i64 %_id2765, %_id2766
  br i1 %_bop2764, label %_body2768, label %_end2769
_body2768:
  %_id2770 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id2771 = load i64, i64* %_j2694
  %_index_ptr2772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2770, i32 0, i32 1, i64 %_id2771
  %_idx_tmp2773 = load i64, i64* %_index_ptr2772
  %_id2774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2696
  %_id2775 = load i64, i64* %_k2695
  %_index_ptr2776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2774, i32 0, i32 1, i64 %_id2775
  store i64 %_idx_tmp2773, i64* %_index_ptr2776
  %_id2778 = load i64, i64* %_k2695
  %_bop2777 = add i64 %_id2778, 1
  store i64 %_bop2777, i64* %_k2695
  %_id2780 = load i64, i64* %_j2694
  %_bop2779 = add i64 %_id2780, 1
  store i64 %_bop2779, i64* %_j2694
  br label %_start2767
_end2769:
  %_id2781 = load i64, i64* %_low2690
  store i64 %_id2781, i64* %_i2693
  br label %_start2785
_start2785:
  %_id2783 = load i64, i64* %_i2693
  %_id2784 = load i64, i64* %_k2695
  %_bop2782 = icmp slt i64 %_id2783, %_id2784
  br i1 %_bop2782, label %_body2786, label %_end2787
_body2786:
  %_id2788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2696
  %_id2789 = load i64, i64* %_i2693
  %_index_ptr2790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2788, i32 0, i32 1, i64 %_id2789
  %_idx_tmp2791 = load i64, i64* %_index_ptr2790
  %_id2792 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2689
  %_id2793 = load i64, i64* %_i2693
  %_index_ptr2794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2792, i32 0, i32 1, i64 %_id2793
  store i64 %_idx_tmp2791, i64* %_index_ptr2794
  %_id2796 = load i64, i64* %_i2693
  %_bop2795 = add i64 %_id2796, 1
  store i64 %_bop2795, i64* %_i2693
  br label %_start2785
_end2787:
  ret void
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
