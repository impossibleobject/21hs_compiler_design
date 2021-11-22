; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %i = alloca i64
  %min = alloca i64
  %mi = alloca i64
  %_a2762 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2762
  %_s2763 = alloca i64
  store i64 %s, i64* %_s2763
  %_b2764 = alloca i64
  store i64 %b, i64* %_b2764
  %_id2765 = load i64, i64* %_s2763
  store i64 %_id2765, i64* %i
  %_id2766 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2762
  %_id2767 = load i64, i64* %_s2763
  %_index_ptr2768 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2766, i32 0, i32 1, i64 %_id2767
  %_idx_tmp2769 = load i64, i64* %_index_ptr2768
  store i64 %_idx_tmp2769, i64* %min
  %_id2770 = load i64, i64* %_s2763
  store i64 %_id2770, i64* %mi
  br label %_start2774
_start2774:
  %_id2772 = load i64, i64* %i
  %_id2773 = load i64, i64* %_b2764
  %_bop2771 = icmp slt i64 %_id2772, %_id2773
  br i1 %_bop2771, label %_body2775, label %_end2776
_body2775:
  %_id2778 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2762
  %_id2779 = load i64, i64* %i
  %_index_ptr2780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2778, i32 0, i32 1, i64 %_id2779
  %_idx_tmp2782 = load i64, i64* %_index_ptr2780
  %_id2781 = load i64, i64* %min
  %_bop2777 = icmp slt i64 %_idx_tmp2782, %_id2781
  br i1 %_bop2777, label %_then2783, label %_else2784
_then2783:
  %_id2786 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2762
  %_id2787 = load i64, i64* %i
  %_index_ptr2788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2786, i32 0, i32 1, i64 %_id2787
  %_idx_tmp2789 = load i64, i64* %_index_ptr2788
  store i64 %_idx_tmp2789, i64* %min
  %_id2790 = load i64, i64* %i
  store i64 %_id2790, i64* %mi
  br label %_end2785
_else2784:
  br label %_end2785
_end2785:
  %_id2792 = load i64, i64* %i
  %_bop2791 = add i64 %_id2792, 1
  store i64 %_bop2791, i64* %i
  br label %_start2774
_end2776:
  %_id2793 = load i64, i64* %mi
  ret i64 %_id2793
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %t = alloca i64
  %mi = alloca i64
  %i = alloca i64
  %_a2733 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2733
  %_s2734 = alloca i64
  store i64 %s, i64* %_s2734
  store i64 0, i64* %t
  store i64 0, i64* %mi
  store i64 0, i64* %i
  br label %_start2738
_start2738:
  %_id2736 = load i64, i64* %i
  %_id2737 = load i64, i64* %_s2734
  %_bop2735 = icmp slt i64 %_id2736, %_id2737
  br i1 %_bop2735, label %_body2739, label %_end2740
_body2739:
  %_id2741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2733
  %_id2742 = load i64, i64* %i
  %_id2743 = load i64, i64* %_s2734
  %_Call_retval2744 = call i64 @getminindex({ i64, [0 x i64] }* %_id2741, i64 %_id2742, i64 %_id2743)
  store i64 %_Call_retval2744, i64* %mi
  %_id2745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2733
  %_id2746 = load i64, i64* %i
  %_index_ptr2747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2745, i32 0, i32 1, i64 %_id2746
  %_idx_tmp2748 = load i64, i64* %_index_ptr2747
  store i64 %_idx_tmp2748, i64* %t
  %_id2749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2733
  %_id2750 = load i64, i64* %mi
  %_index_ptr2751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2749, i32 0, i32 1, i64 %_id2750
  %_idx_tmp2752 = load i64, i64* %_index_ptr2751
  %_id2753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2733
  %_id2754 = load i64, i64* %i
  %_index_ptr2755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2753, i32 0, i32 1, i64 %_id2754
  store i64 %_idx_tmp2752, i64* %_index_ptr2755
  %_id2756 = load i64, i64* %t
  %_id2757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2733
  %_id2758 = load i64, i64* %mi
  %_index_ptr2759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2757, i32 0, i32 1, i64 %_id2758
  store i64 %_id2756, i64* %_index_ptr2759
  %_id2761 = load i64, i64* %i
  %_bop2760 = add i64 %_id2761, 1
  store i64 %_bop2760, i64* %i
  br label %_start2738
_end2740:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %ar = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %_argc2707 = alloca i64
  store i64 %argc, i64* %_argc2707
  %_argv2708 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2708
  %_raw_array2709 = call i64* @oat_alloc_array(i64 8)
  %_array2710 = bitcast i64* %_raw_array2709 to { i64, [0 x i64] }*
  %_CArr_elem_72718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2710, i32 0, i32 1, i32 7
  store i64 0, i64* %_CArr_elem_72718
  %_CArr_elem_62717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2710, i32 0, i32 1, i32 6
  store i64 2, i64* %_CArr_elem_62717
  %_CArr_elem_52716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2710, i32 0, i32 1, i32 5
  store i64 99, i64* %_CArr_elem_52716
  %_CArr_elem_42715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2710, i32 0, i32 1, i32 4
  store i64 30, i64* %_CArr_elem_42715
  %_CArr_elem_32714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2710, i32 0, i32 1, i32 3
  store i64 65, i64* %_CArr_elem_32714
  %_CArr_elem_22713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2710, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_22713
  %_CArr_elem_12712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2710, i32 0, i32 1, i32 1
  store i64 200, i64* %_CArr_elem_12712
  %_CArr_elem_02711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2710, i32 0, i32 1, i32 0
  store i64 5, i64* %_CArr_elem_02711
  store { i64, [0 x i64] }* %_array2710, { i64, [0 x i64] }** %ar
  %_id2719 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %ar
  call void @selectionsort({ i64, [0 x i64] }* %_id2719, i64 8)
  store i64 0, i64* %i
  br label %_start2723
_start2723:
  %_id2722 = load i64, i64* %i
  %_bop2721 = icmp slt i64 %_id2722, 8
  br i1 %_bop2721, label %_body2724, label %_end2725
_body2724:
  %_idx_tmp2729 = load i64, i64* %_index_ptr2728
  %_index_ptr2728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2726, i32 0, i32 1, i64 %_id2727
  %_id2727 = load i64, i64* %i
  %_id2726 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %ar
  call void @print_int(i64 %_idx_tmp2729)
  %_id2732 = load i64, i64* %i
  %_bop2731 = add i64 %_id2732, 1
  store i64 %_bop2731, i64* %i
  br label %_start2723
_end2725:
  ret i64 0
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
