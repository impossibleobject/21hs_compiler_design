; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_i2919 = alloca i64
  %_min2921 = alloca i64
  %_mi2926 = alloca i64
  %_a2916 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2916
  %_s2917 = alloca i64
  store i64 %s, i64* %_s2917
  %_b2918 = alloca i64
  store i64 %b, i64* %_b2918
  %_id2920 = load i64, i64* %_s2917
  store i64 %_id2920, i64* %_i2919
  %_id2922 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2916
  %_id2923 = load i64, i64* %_s2917
  %_index_ptr2924 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2922, i32 0, i32 1, i64 %_id2923
  %_idx_tmp2925 = load i64, i64* %_index_ptr2924
  store i64 %_idx_tmp2925, i64* %_min2921
  %_id2927 = load i64, i64* %_s2917
  store i64 %_id2927, i64* %_mi2926
  br label %_start2931
_start2931:
  %_id2929 = load i64, i64* %_i2919
  %_id2930 = load i64, i64* %_b2918
  %_bop2928 = icmp slt i64 %_id2929, %_id2930
  br i1 %_bop2928, label %_body2932, label %_end2933
_body2932:
  %_id2935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2916
  %_id2936 = load i64, i64* %_i2919
  %_index_ptr2937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2935, i32 0, i32 1, i64 %_id2936
  %_idx_tmp2939 = load i64, i64* %_index_ptr2937
  %_id2938 = load i64, i64* %_min2921
  %_bop2934 = icmp slt i64 %_idx_tmp2939, %_id2938
  br i1 %_bop2934, label %_then2940, label %_else2941
_then2940:
  %_id2943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2916
  %_id2944 = load i64, i64* %_i2919
  %_index_ptr2945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2943, i32 0, i32 1, i64 %_id2944
  %_idx_tmp2946 = load i64, i64* %_index_ptr2945
  store i64 %_idx_tmp2946, i64* %_min2921
  %_id2947 = load i64, i64* %_i2919
  store i64 %_id2947, i64* %_mi2926
  br label %_end2942
_else2941:
  br label %_end2942
_end2942:
  %_id2949 = load i64, i64* %_i2919
  %_bop2948 = add i64 %_id2949, 1
  store i64 %_bop2948, i64* %_i2919
  br label %_start2931
_end2933:
  %_id2950 = load i64, i64* %_mi2926
  ret i64 %_id2950
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_t2886 = alloca i64
  %_mi2887 = alloca i64
  %_i2888 = alloca i64
  %_a2884 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2884
  %_s2885 = alloca i64
  store i64 %s, i64* %_s2885
  store i64 0, i64* %_t2886
  store i64 0, i64* %_mi2887
  store i64 0, i64* %_i2888
  br label %_start2892
_start2892:
  %_id2890 = load i64, i64* %_i2888
  %_id2891 = load i64, i64* %_s2885
  %_bop2889 = icmp slt i64 %_id2890, %_id2891
  br i1 %_bop2889, label %_body2893, label %_end2894
_body2893:
  %_id2897 = load i64, i64* %_s2885
  %_id2896 = load i64, i64* %_i2888
  %_id2895 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2884
  %_Call_retval2898 = call i64 @getminindex({ i64, [0 x i64] }* %_id2895, i64 %_id2896, i64 %_id2897)
  store i64 %_Call_retval2898, i64* %_mi2887
  %_id2899 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2884
  %_id2900 = load i64, i64* %_i2888
  %_index_ptr2901 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2899, i32 0, i32 1, i64 %_id2900
  %_idx_tmp2902 = load i64, i64* %_index_ptr2901
  store i64 %_idx_tmp2902, i64* %_t2886
  %_id2903 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2884
  %_id2904 = load i64, i64* %_mi2887
  %_index_ptr2905 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2903, i32 0, i32 1, i64 %_id2904
  %_idx_tmp2906 = load i64, i64* %_index_ptr2905
  %_id2907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2884
  %_id2908 = load i64, i64* %_i2888
  %_index_ptr2909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2907, i32 0, i32 1, i64 %_id2908
  store i64 %_idx_tmp2906, i64* %_index_ptr2909
  %_id2910 = load i64, i64* %_t2886
  %_id2911 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2884
  %_id2912 = load i64, i64* %_mi2887
  %_index_ptr2913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2911, i32 0, i32 1, i64 %_id2912
  store i64 %_id2910, i64* %_index_ptr2913
  %_id2915 = load i64, i64* %_i2888
  %_bop2914 = add i64 %_id2915, 1
  store i64 %_bop2914, i64* %_i2888
  br label %_start2892
_end2894:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_ar2858 = alloca { i64, [0 x i64] }*
  %_i2871 = alloca i64
  %_argc2856 = alloca i64
  store i64 %argc, i64* %_argc2856
  %_argv2857 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2857
  %_raw_array2859 = call i64* @oat_alloc_array(i64 8)
  %_array2860 = bitcast i64* %_raw_array2859 to { i64, [0 x i64] }*
  %_CArr_elem_72868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2860, i32 0, i32 1, i32 7
  store i64 0, i64* %_CArr_elem_72868
  %_CArr_elem_62867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2860, i32 0, i32 1, i32 6
  store i64 2, i64* %_CArr_elem_62867
  %_CArr_elem_52866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2860, i32 0, i32 1, i32 5
  store i64 99, i64* %_CArr_elem_52866
  %_CArr_elem_42865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2860, i32 0, i32 1, i32 4
  store i64 30, i64* %_CArr_elem_42865
  %_CArr_elem_32864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2860, i32 0, i32 1, i32 3
  store i64 65, i64* %_CArr_elem_32864
  %_CArr_elem_22863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2860, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_22863
  %_CArr_elem_12862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2860, i32 0, i32 1, i32 1
  store i64 200, i64* %_CArr_elem_12862
  %_CArr_elem_02861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2860, i32 0, i32 1, i32 0
  store i64 5, i64* %_CArr_elem_02861
  store { i64, [0 x i64] }* %_array2860, { i64, [0 x i64] }** %_ar2858
  %_id2869 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar2858
  call void @selectionsort({ i64, [0 x i64] }* %_id2869, i64 8)
  store i64 0, i64* %_i2871
  br label %_start2874
_start2874:
  %_id2873 = load i64, i64* %_i2871
  %_bop2872 = icmp slt i64 %_id2873, 8
  br i1 %_bop2872, label %_body2875, label %_end2876
_body2875:
  %_id2877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar2858
  %_id2878 = load i64, i64* %_i2871
  %_index_ptr2879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2877, i32 0, i32 1, i64 %_id2878
  %_idx_tmp2880 = load i64, i64* %_index_ptr2879
  call void @print_int(i64 %_idx_tmp2880)
  %_id2883 = load i64, i64* %_i2871
  %_bop2882 = add i64 %_id2883, 1
  store i64 %_bop2882, i64* %_i2871
  br label %_start2874
_end2876:
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
