; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str_arr2878 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %_numbers2890, i64 %_array_size2887) {
  %_numbers2891 = alloca { i64, [0 x i64] }*
  %_array_size2888 = alloca i64
  %_temp2893 = alloca i64
  %_i2897 = alloca i64
  %_j2904 = alloca i64
  store { i64, [0 x i64] }* %_numbers2890, { i64, [0 x i64] }** %_numbers2891
  store i64 %_array_size2887, i64* %_array_size2888
  store i64 0, i64* %_temp2893
  %_array_size2895 = load i64, i64* %_array_size2888
  %_bop2896 = sub i64 %_array_size2895, 1
  store i64 %_bop2896, i64* %_i2897
  br label %_cond2903
_body2902:
  store i64 1, i64* %_j2904
  br label %_cond2911
_body2910:
  %_numbers2912 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2891
  %_j2913 = load i64, i64* %_j2904
  %_bop2914 = sub i64 %_j2913, 1
  %_tmp2916 = bitcast { i64, [0 x i64] }* %_numbers2912 to i64*
  call void @oat_assert_array_length(i64* %_tmp2916, i64 %_bop2914)
  %_index_ptr2917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2912, i32 0, i32 1, i64 %_bop2914
  %_index2918 = load i64, i64* %_index_ptr2917
  %_numbers2919 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2891
  %_i2920 = load i64, i64* %_i2897
  %_tmp2922 = bitcast { i64, [0 x i64] }* %_numbers2919 to i64*
  call void @oat_assert_array_length(i64* %_tmp2922, i64 %_i2920)
  %_index_ptr2923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2919, i32 0, i32 1, i64 %_i2920
  %_index2924 = load i64, i64* %_index_ptr2923
  %_bop2925 = icmp sgt i64 %_index2918, %_index2924
  br i1 %_bop2925, label %_then2956, label %_else2955
_cond2903:
  %_i2899 = load i64, i64* %_i2897
  %_bop2900 = icmp sgt i64 %_i2899, 0
  br i1 %_bop2900, label %_body2902, label %_post2901
_cond2911:
  %_j2906 = load i64, i64* %_j2904
  %_i2907 = load i64, i64* %_i2897
  %_bop2908 = icmp sle i64 %_j2906, %_i2907
  br i1 %_bop2908, label %_body2910, label %_post2909
_else2955:
  br label %_merge2954
_merge2954:
  %_j2957 = load i64, i64* %_j2904
  %_bop2958 = add i64 %_j2957, 1
  store i64 %_bop2958, i64* %_j2904
  br label %_cond2911
_post2901:
  ret void
_post2909:
  %_i2960 = load i64, i64* %_i2897
  %_bop2961 = sub i64 %_i2960, 1
  store i64 %_bop2961, i64* %_i2897
  br label %_cond2903
_then2956:
  %_numbers2926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2891
  %_j2927 = load i64, i64* %_j2904
  %_bop2928 = sub i64 %_j2927, 1
  %_tmp2930 = bitcast { i64, [0 x i64] }* %_numbers2926 to i64*
  call void @oat_assert_array_length(i64* %_tmp2930, i64 %_bop2928)
  %_index_ptr2931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2926, i32 0, i32 1, i64 %_bop2928
  %_index2932 = load i64, i64* %_index_ptr2931
  store i64 %_index2932, i64* %_temp2893
  %_numbers2934 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2891
  %_j2935 = load i64, i64* %_j2904
  %_bop2936 = sub i64 %_j2935, 1
  %_tmp2938 = bitcast { i64, [0 x i64] }* %_numbers2934 to i64*
  call void @oat_assert_array_length(i64* %_tmp2938, i64 %_bop2936)
  %_index_ptr2939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2934, i32 0, i32 1, i64 %_bop2936
  %_numbers2940 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2891
  %_i2941 = load i64, i64* %_i2897
  %_tmp2943 = bitcast { i64, [0 x i64] }* %_numbers2940 to i64*
  call void @oat_assert_array_length(i64* %_tmp2943, i64 %_i2941)
  %_index_ptr2944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2940, i32 0, i32 1, i64 %_i2941
  %_index2945 = load i64, i64* %_index_ptr2944
  store i64 %_index2945, i64* %_index_ptr2939
  %_numbers2947 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2891
  %_i2948 = load i64, i64* %_i2897
  %_tmp2950 = bitcast { i64, [0 x i64] }* %_numbers2947 to i64*
  call void @oat_assert_array_length(i64* %_tmp2950, i64 %_i2948)
  %_index_ptr2951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2947, i32 0, i32 1, i64 %_i2948
  %_temp2952 = load i64, i64* %_temp2893
  store i64 %_temp2952, i64* %_index_ptr2951
  br label %_merge2954
}

define i64 @program(i64 %_argc2807, { i64, [0 x i8*] }* %_argv2804) {
  %_i2814 = alloca i64
  %_a2833 = alloca { i64, [0 x i64] }*
  %_raw_array2812 = call i64* @oat_alloc_array(i64 8)
  %_array2813 = bitcast i64* %_raw_array2812 to { i64, [0 x i64] }*
  %_bnd_2811 = alloca i64
  store i64 8, i64* %_bnd_2811
  %_ptr_2810 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2813, { i64, [0 x i64] }** %_ptr_2810
  store i64 0, i64* %_i2814
  br label %_cond2821
_body2820:
  %__ptr_28102822 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_2810
  %_i2823 = load i64, i64* %_i2814
  %_tmp2825 = bitcast { i64, [0 x i64] }* %__ptr_28102822 to i64*
  call void @oat_assert_array_length(i64* %_tmp2825, i64 %_i2823)
  %_index_ptr2826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_28102822, i32 0, i32 1, i64 %_i2823
  store i64 0, i64* %_index_ptr2826
  %_i2828 = load i64, i64* %_i2814
  %_bop2829 = add i64 %_i2828, 1
  store i64 %_bop2829, i64* %_i2814
  br label %_cond2821
_cond2821:
  %_i2816 = load i64, i64* %_i2814
  %__bnd_28112817 = load i64, i64* %_bnd_2811
  %_bop2818 = icmp slt i64 %_i2816, %__bnd_28112817
  br i1 %_bop2818, label %_body2820, label %_post2819
_post2819:
  store { i64, [0 x i64] }* %_array2813, { i64, [0 x i64] }** %_a2833
  %_a2835 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_tmp2837 = bitcast { i64, [0 x i64] }* %_a2835 to i64*
  call void @oat_assert_array_length(i64* %_tmp2837, i64 0)
  %_index_ptr2838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2835, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2838
  %_a2840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_tmp2842 = bitcast { i64, [0 x i64] }* %_a2840 to i64*
  call void @oat_assert_array_length(i64* %_tmp2842, i64 1)
  %_index_ptr2843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2840, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2843
  %_a2845 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_tmp2847 = bitcast { i64, [0 x i64] }* %_a2845 to i64*
  call void @oat_assert_array_length(i64* %_tmp2847, i64 2)
  %_index_ptr2848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2845, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2848
  %_a2850 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_tmp2852 = bitcast { i64, [0 x i64] }* %_a2850 to i64*
  call void @oat_assert_array_length(i64* %_tmp2852, i64 3)
  %_index_ptr2853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2850, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2853
  %_a2855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_tmp2857 = bitcast { i64, [0 x i64] }* %_a2855 to i64*
  call void @oat_assert_array_length(i64* %_tmp2857, i64 4)
  %_index_ptr2858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2855, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2858
  %_a2860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_tmp2862 = bitcast { i64, [0 x i64] }* %_a2860 to i64*
  call void @oat_assert_array_length(i64* %_tmp2862, i64 5)
  %_index_ptr2863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2860, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2863
  %_a2865 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_tmp2867 = bitcast { i64, [0 x i64] }* %_a2865 to i64*
  call void @oat_assert_array_length(i64* %_tmp2867, i64 6)
  %_index_ptr2868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2865, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2868
  %_a2870 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_tmp2872 = bitcast { i64, [0 x i64] }* %_a2870 to i64*
  call void @oat_assert_array_length(i64* %_tmp2872, i64 7)
  %_index_ptr2873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2870, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2873
  %_a2875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_result2876 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2875)
  call void @print_string(i8* %_result2876)
  %_str2879 = getelementptr [2 x i8], [2 x i8]* @_str_arr2878, i32 0, i32 0
  call void @print_string(i8* %_str2879)
  %_a2881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  call void @bubble_sort({ i64, [0 x i64] }* %_a2881, i64 8)
  %_a2883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2833
  %_result2884 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2883)
  call void @print_string(i8* %_result2884)
  ret i64 -1
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
