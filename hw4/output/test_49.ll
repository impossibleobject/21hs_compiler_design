; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2814 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator2866 = alloca i64
  store i64 %numerator, i64* %_numerator2866
  %_denominator2867 = alloca i64
  store i64 %denominator, i64* %_denominator2867
  %_quotient2879 = alloca i64
  %_remainder2880 = alloca i64
  %_id2869 = load i64, i64* %_denominator2867
  %_bop2868 = icmp slt i64 %_id2869, 0
  br i1 %_bop2868, label %_then2870, label %_else2871
_then2870:
  %_uop2873 = sub i64 0, %_Call_retval2877
  %_id2874 = load i64, i64* %_numerator2866
  %_id2876 = load i64, i64* %_denominator2867
  %_uop2875 = sub i64 0, %_id2876
  %_Call_retval2877 = call i64 @euclid_division(i64 %_id2874, i64 %_uop2875)
  ret i64 %_uop2873
_else2871:
  br label %_end2872
_end2872:
  store i64 0, i64* %_quotient2879
  %_id2881 = load i64, i64* %_numerator2866
  store i64 %_id2881, i64* %_remainder2880
  %_id2883 = load i64, i64* %_numerator2866
  %_bop2882 = icmp slt i64 %_id2883, 0
  br i1 %_bop2882, label %_then2884, label %_else2885
_then2884:
  %_uop2888 = sub i64 0, %_id2889
  %_id2889 = load i64, i64* %_numerator2866
  store i64 %_uop2888, i64* %_remainder2880
  br label %_start2893
_start2893:
  %_id2892 = load i64, i64* %_denominator2867
  %_bop2890 = icmp sge i64 %_uop2888, %_id2892
  br i1 %_bop2890, label %_body2894, label %_end2895
_body2894:
  %_id2898 = load i64, i64* %_quotient2879
  %_bop2897 = add i64 %_id2898, 1
  store i64 %_bop2897, i64* %_quotient2879
  %_id2902 = load i64, i64* %_denominator2867
  %_bop2900 = sub i64 %_uop2888, %_id2902
  store i64 %_bop2900, i64* @remainder
  br label %_start2893
_end2895:
  %_bop2903 = icmp eq i64 %_uop2888, 0
  br i1 %_bop2903, label %_then2905, label %_else2906
_then2905:
  %_uop2908 = sub i64 0, %_id2909
  %_id2909 = load i64, i64* %_quotient2879
  ret i64 %_uop2908
_else2906:
  %_uop2912 = sub i64 0, %_id2913
  %_id2913 = load i64, i64* %_quotient2879
  %_bop2911 = sub i64 %_uop2912, 1
  ret i64 %_bop2911
_end2907:
  br label %_end2886
_else2885:
  br label %_end2886
_end2886:
  br label %_start2918
_start2918:
  %_id2916 = load i64, i64* %_remainder2880
  %_id2917 = load i64, i64* %_denominator2867
  %_bop2915 = icmp sge i64 %_id2916, %_id2917
  br i1 %_bop2915, label %_body2919, label %_end2920
_body2919:
  %_id2923 = load i64, i64* %_quotient2879
  %_bop2922 = add i64 %_id2923, 1
  store i64 %_bop2922, i64* %_quotient2879
  %_id2926 = load i64, i64* %_remainder2880
  %_id2927 = load i64, i64* %_denominator2867
  %_bop2925 = sub i64 %_id2926, %_id2927
  store i64 %_bop2925, i64* %_remainder2880
  br label %_start2918
_end2920:
  %_id2928 = load i64, i64* %_quotient2879
  ret i64 %_id2928
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input2817 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input2817
  %_key2818 = alloca i64
  store i64 %key, i64* %_key2818
  %_min2819 = alloca i64
  store i64 %min, i64* %_min2819
  %_max2820 = alloca i64
  store i64 %max, i64* %_max2820
  %_midpt2828 = alloca i64
  %_id2822 = load i64, i64* %_max2820
  %_id2823 = load i64, i64* %_min2819
  %_bop2821 = icmp slt i64 %_id2822, %_id2823
  br i1 %_bop2821, label %_then2824, label %_else2825
_then2824:
  ret i1 0
_else2825:
  br label %_end2826
_end2826:
  %_bop2829 = add i64 %_id2830, %_id2831
  %_id2831 = load i64, i64* %_min2819
  %_id2830 = load i64, i64* %_max2820
  %_Call_retval2832 = call i64 @euclid_division(i64 %_bop2829, i64 2)
  store i64 %_Call_retval2832, i64* %_midpt2828
  %_id2834 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input2817
  %_id2835 = load i64, i64* %_midpt2828
  %_index_ptr2836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2834, i32 0, i32 1, i64 %_id2835
  %_2838 = load i64, i64* %_index_ptr2836
  %_id2837 = load i64, i64* %_key2818
  %_bop2833 = icmp sgt i64 %_2838, %_id2837
  br i1 %_bop2833, label %_then2839, label %_else2840
_then2839:
  %_id2842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input2817
  %_id2843 = load i64, i64* %_key2818
  %_id2844 = load i64, i64* %_min2819
  %_bop2845 = sub i64 %_id2846, 1
  %_id2846 = load i64, i64* %_midpt2828
  %_Call_retval2847 = call i1 @binary_search({ i64, [0 x i64] }* %_id2842, i64 %_id2843, i64 %_id2844, i64 %_bop2845)
  ret i1 %_Call_retval2847
_else2840:
  br label %_end2841
_end2841:
  %_id2850 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input2817
  %_id2851 = load i64, i64* %_midpt2828
  %_index_ptr2852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2850, i32 0, i32 1, i64 %_id2851
  %_2854 = load i64, i64* %_index_ptr2852
  %_id2853 = load i64, i64* %_key2818
  %_bop2849 = icmp slt i64 %_2854, %_id2853
  br i1 %_bop2849, label %_then2855, label %_else2856
_then2855:
  %_id2858 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input2817
  %_id2859 = load i64, i64* %_key2818
  %_bop2860 = add i64 %_id2861, 1
  %_id2861 = load i64, i64* %_midpt2828
  %_id2862 = load i64, i64* %_max2820
  %_Call_retval2863 = call i1 @binary_search({ i64, [0 x i64] }* %_id2858, i64 %_id2859, i64 %_bop2860, i64 %_id2862)
  ret i1 %_Call_retval2863
_else2856:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2776 = alloca i64
  store i64 %argc, i64* %_argc2776
  %_argv2777 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2777
  %_test_array2778 = alloca { i64, [0 x i64] }*
  %_i2781 = alloca i64
  %_even2796 = alloca i1
  %_odd2799 = alloca i1
  %_raw_array2779 = call i64* @oat_alloc_array(i64 100)
  %_array2780 = bitcast i64* %_raw_array2779 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2780, { i64, [0 x i64] }** %_test_array2778
  store i64 0, i64* %_i2781
  br label %_start2784
_start2784:
  %_id2783 = load i64, i64* %_i2781
  %_bop2782 = icmp slt i64 %_id2783, 100
  br i1 %_bop2782, label %_body2785, label %_end2786
_body2785:
  %_id2787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array2778
  %_id2788 = load i64, i64* %_i2781
  %_index_ptr2789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2787, i32 0, i32 1, i64 %_id2788
  %_id2792 = load i64, i64* %_i2781
  %_bop2791 = mul i64 2, %_id2792
  %_bop2790 = add i64 %_bop2791, 1
  store i64 %_bop2790, i64* %_index_ptr2789
  %_id2795 = load i64, i64* %_i2781
  %_bop2794 = add i64 %_id2795, 1
  store i64 %_bop2794, i64* %_i2781
  br label %_start2784
_end2786:
  %_id2797 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array2778
  %_Call_retval2798 = call i1 @binary_search({ i64, [0 x i64] }* %_id2797, i64 80, i64 0, i64 99)
  store i1 %_Call_retval2798, i1* %_even2796
  %_id2800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array2778
  %_Call_retval2801 = call i1 @binary_search({ i64, [0 x i64] }* %_id2800, i64 81, i64 0, i64 99)
  store i1 %_Call_retval2801, i1* %_odd2799
  %_uop2803 = icmp eq i1 0, %_bop2804
  %_id2805 = load i1, i1* %_even2796
  %_id2806 = load i1, i1* %_odd2799
  %_bop2804 = and i1 %_id2805, %_id2806
  %_id2808 = load i1, i1* %_even2796
  %_id2809 = load i1, i1* %_odd2799
  %_bop2807 = or i1 %_id2808, %_id2809
  %_bop2802 = and i1 %_uop2803, %_bop2807
  br i1 %_bop2802, label %_then2810, label %_else2811
_then2810:
  %_cstr_loc2813 = getelementptr [9 x i8], [9 x i8]* @_cstr_glb2814, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2813)
  br label %_end2812
_else2811:
  br label %_end2812
_end2812:
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
