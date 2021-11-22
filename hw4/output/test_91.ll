; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2816 = global [2 x i8] c" \00"
@_cstr_glb2821 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %b = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %c = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc2935 = alloca i64
  store i64 %argc, i64* %_argc2935
  %_argv2936 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2936
  %_raw_array2937 = call i64* @oat_alloc_array(i64 2)
  %_array2938 = bitcast i64* %_raw_array2937 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array2944 = call i64* @oat_alloc_array(i64 3)
  %_array2945 = bitcast i64* %_raw_array2944 to { i64, [0 x i64] }*
  %_CArr_elem_22948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2945, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_22948
  %_CArr_elem_12947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2945, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_12947
  %_CArr_elem_02946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2945, i32 0, i32 1, i32 0
  store i64 2, i64* %_CArr_elem_02946
  %_CArr_elem_12950 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2938, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array2945, { i64, [0 x i64] }** %_CArr_elem_12950
  %_raw_array2939 = call i64* @oat_alloc_array(i64 3)
  %_array2940 = bitcast i64* %_raw_array2939 to { i64, [0 x i64] }*
  %_CArr_elem_22943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2940, i32 0, i32 1, i32 2
  store i64 4, i64* %_CArr_elem_22943
  %_CArr_elem_12942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2940, i32 0, i32 1, i32 1
  store i64 3, i64* %_CArr_elem_12942
  %_CArr_elem_02941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2940, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_02941
  %_CArr_elem_02949 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2938, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array2940, { i64, [0 x i64] }** %_CArr_elem_02949
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2938, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_raw_array2951 = call i64* @oat_alloc_array(i64 3)
  %_array2952 = bitcast i64* %_raw_array2951 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array2965 = call i64* @oat_alloc_array(i64 4)
  %_array2966 = bitcast i64* %_raw_array2965 to { i64, [0 x i64] }*
  %_CArr_elem_32970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2966, i32 0, i32 1, i32 3
  store i64 4, i64* %_CArr_elem_32970
  %_CArr_elem_22969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2966, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_22969
  %_CArr_elem_12968 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2966, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_12968
  %_CArr_elem_02967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2966, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_02967
  %_CArr_elem_22973 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2952, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array2966, { i64, [0 x i64] }** %_CArr_elem_22973
  %_raw_array2959 = call i64* @oat_alloc_array(i64 4)
  %_array2960 = bitcast i64* %_raw_array2959 to { i64, [0 x i64] }*
  %_CArr_elem_32964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2960, i32 0, i32 1, i32 3
  store i64 2, i64* %_CArr_elem_32964
  %_CArr_elem_22963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2960, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_22963
  %_CArr_elem_12962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2960, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_12962
  %_CArr_elem_02961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2960, i32 0, i32 1, i32 0
  store i64 2, i64* %_CArr_elem_02961
  %_CArr_elem_12972 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2952, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array2960, { i64, [0 x i64] }** %_CArr_elem_12972
  %_raw_array2953 = call i64* @oat_alloc_array(i64 4)
  %_array2954 = bitcast i64* %_raw_array2953 to { i64, [0 x i64] }*
  %_CArr_elem_32958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2954, i32 0, i32 1, i32 3
  store i64 1, i64* %_CArr_elem_32958
  %_CArr_elem_22957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2954, i32 0, i32 1, i32 2
  store i64 3, i64* %_CArr_elem_22957
  %_CArr_elem_12956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2954, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_12956
  %_CArr_elem_02955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2954, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_02955
  %_CArr_elem_02971 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2952, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array2954, { i64, [0 x i64] }** %_CArr_elem_02971
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2952, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_raw_array2974 = call i64* @oat_alloc_array(i64 2)
  %_array2975 = bitcast i64* %_raw_array2974 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array2982 = call i64* @oat_alloc_array(i64 4)
  %_array2983 = bitcast i64* %_raw_array2982 to { i64, [0 x i64] }*
  %_CArr_elem_32987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2983, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_32987
  %_CArr_elem_22986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2983, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_22986
  %_CArr_elem_12985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2983, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_12985
  %_CArr_elem_02984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2983, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_02984
  %_CArr_elem_12989 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2975, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array2983, { i64, [0 x i64] }** %_CArr_elem_12989
  %_raw_array2976 = call i64* @oat_alloc_array(i64 4)
  %_array2977 = bitcast i64* %_raw_array2976 to { i64, [0 x i64] }*
  %_CArr_elem_32981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2977, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_32981
  %_CArr_elem_22980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2977, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_22980
  %_CArr_elem_12979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2977, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_12979
  %_CArr_elem_02978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2977, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_02978
  %_CArr_elem_02988 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array2975, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array2977, { i64, [0 x i64] }** %_CArr_elem_02988
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array2975, { i64, [0 x { i64, [0 x i64] }*] }** %c
  %_id2990 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_id2991 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_id2992 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_id2990, { i64, [0 x { i64, [0 x i64] }*] }* %_id2991, { i64, [0 x { i64, [0 x i64] }*] }* %_id2992)
  %_id2994 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id2994, i64 2)
  %_id2996 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_id2997 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_id2998 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_id2996, { i64, [0 x { i64, [0 x i64] }*] }* %_id2997, { i64, [0 x { i64, [0 x i64] }*] }* %_id2998)
  %_id3000 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %c
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id3000, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %i = alloca i64
  %j = alloca i64
  %k = alloca i64
  %_a12882 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a12882
  %_a22883 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a22883
  %_a32884 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a32884
  store i64 0, i64* %i
  br label %_start2887
_start2887:
  %_id2886 = load i64, i64* %i
  %_bop2885 = icmp slt i64 %_id2886, 2
  br i1 %_bop2885, label %_body2888, label %_end2889
_body2888:
  store i64 0, i64* %j
  br label %_start2892
_start2892:
  %_id2891 = load i64, i64* %j
  %_bop2890 = icmp slt i64 %_id2891, 4
  br i1 %_bop2890, label %_body2893, label %_end2894
_body2893:
  store i64 0, i64* %k
  br label %_start2897
_start2897:
  %_id2896 = load i64, i64* %k
  %_bop2895 = icmp slt i64 %_id2896, 3
  br i1 %_bop2895, label %_body2898, label %_end2899
_body2898:
  %_id2901 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a32884
  %_id2902 = load i64, i64* %i
  %_index_ptr2903 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2901, i32 0, i32 1, i64 %_id2902
  %_idx_tmp2904 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr2903
  %_id2905 = load i64, i64* %j
  %_index_ptr2906 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp2904, i32 0, i32 1, i64 %_id2905
  %_idx_tmp2922 = load i64, i64* %_index_ptr2906
  %_id2908 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a12882
  %_id2909 = load i64, i64* %i
  %_index_ptr2910 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2908, i32 0, i32 1, i64 %_id2909
  %_idx_tmp2911 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr2910
  %_id2912 = load i64, i64* %k
  %_index_ptr2913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp2911, i32 0, i32 1, i64 %_id2912
  %_idx_tmp2920 = load i64, i64* %_index_ptr2913
  %_id2914 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a22883
  %_id2915 = load i64, i64* %k
  %_index_ptr2916 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2914, i32 0, i32 1, i64 %_id2915
  %_idx_tmp2917 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr2916
  %_id2918 = load i64, i64* %j
  %_index_ptr2919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp2917, i32 0, i32 1, i64 %_id2918
  %_idx_tmp2921 = load i64, i64* %_index_ptr2919
  %_bop2907 = mul i64 %_idx_tmp2920, %_idx_tmp2921
  %_bop2900 = add i64 %_idx_tmp2922, %_bop2907
  %_id2923 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a32884
  %_id2924 = load i64, i64* %i
  %_index_ptr2925 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2923, i32 0, i32 1, i64 %_id2924
  %_idx_tmp2926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr2925
  %_id2927 = load i64, i64* %j
  %_index_ptr2928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp2926, i32 0, i32 1, i64 %_id2927
  store i64 %_bop2900, i64* %_index_ptr2928
  %_id2930 = load i64, i64* %k
  %_bop2929 = add i64 %_id2930, 1
  store i64 %_bop2929, i64* %k
  br label %_start2897
_end2899:
  %_id2932 = load i64, i64* %j
  %_bop2931 = add i64 %_id2932, 1
  store i64 %_bop2931, i64* %j
  br label %_start2892
_end2894:
  %_id2934 = load i64, i64* %i
  %_bop2933 = add i64 %_id2934, 1
  store i64 %_bop2933, i64* %i
  br label %_start2887
_end2889:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %i = alloca i64
  %j = alloca i64
  %_a12854 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a12854
  %_a22855 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a22855
  %_a32856 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a32856
  store i64 0, i64* %i
  br label %_start2859
_start2859:
  %_id2858 = load i64, i64* %i
  %_bop2857 = icmp slt i64 %_id2858, 2
  br i1 %_bop2857, label %_body2860, label %_end2861
_body2860:
  store i64 0, i64* %j
  br label %_start2864
_start2864:
  %_id2863 = load i64, i64* %j
  %_bop2862 = icmp slt i64 %_id2863, 4
  br i1 %_bop2862, label %_body2865, label %_end2866
_body2865:
  %_id2867 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a12854
  %_id2868 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a22855
  %_id2869 = load i64, i64* %i
  %_id2870 = load i64, i64* %j
  %_Call_retval2871 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_id2867, { i64, [0 x { i64, [0 x i64] }*] }* %_id2868, i64 %_id2869, i64 %_id2870)
  %_id2872 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a32856
  %_id2873 = load i64, i64* %i
  %_index_ptr2874 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2872, i32 0, i32 1, i64 %_id2873
  %_idx_tmp2875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr2874
  %_id2876 = load i64, i64* %j
  %_index_ptr2877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp2875, i32 0, i32 1, i64 %_id2876
  store i64 %_Call_retval2871, i64* %_index_ptr2877
  %_id2879 = load i64, i64* %j
  %_bop2878 = add i64 %_id2879, 1
  store i64 %_bop2878, i64* %j
  br label %_start2864
_end2866:
  %_id2881 = load i64, i64* %i
  %_bop2880 = add i64 %_id2881, 1
  store i64 %_bop2880, i64* %i
  br label %_start2859
_end2861:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %sum = alloca i64
  %k = alloca i64
  %_a12825 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a12825
  %_a22826 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a22826
  %_row2827 = alloca i64
  store i64 %row, i64* %_row2827
  %_col2828 = alloca i64
  store i64 %col, i64* %_col2828
  store i64 0, i64* %sum
  store i64 0, i64* %k
  br label %_start2831
_start2831:
  %_id2830 = load i64, i64* %k
  %_bop2829 = icmp slt i64 %_id2830, 3
  br i1 %_bop2829, label %_body2832, label %_end2833
_body2832:
  %_id2835 = load i64, i64* %sum
  %_id2837 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a12825
  %_id2838 = load i64, i64* %_row2827
  %_index_ptr2839 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2837, i32 0, i32 1, i64 %_id2838
  %_idx_tmp2840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr2839
  %_id2841 = load i64, i64* %k
  %_index_ptr2842 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp2840, i32 0, i32 1, i64 %_id2841
  %_idx_tmp2849 = load i64, i64* %_index_ptr2842
  %_id2843 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a22826
  %_id2844 = load i64, i64* %k
  %_index_ptr2845 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2843, i32 0, i32 1, i64 %_id2844
  %_idx_tmp2846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr2845
  %_id2847 = load i64, i64* %_col2828
  %_index_ptr2848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp2846, i32 0, i32 1, i64 %_id2847
  %_idx_tmp2850 = load i64, i64* %_index_ptr2848
  %_bop2836 = mul i64 %_idx_tmp2849, %_idx_tmp2850
  %_bop2834 = add i64 %_id2835, %_bop2836
  store i64 %_bop2834, i64* %sum
  %_id2852 = load i64, i64* %k
  %_bop2851 = add i64 %_id2852, 1
  store i64 %_bop2851, i64* %k
  br label %_start2831
_end2833:
  %_id2853 = load i64, i64* %sum
  ret i64 %_id2853
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %i = alloca i64
  %j = alloca i64
  %_ar2794 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar2794
  %_n2795 = alloca i64
  store i64 %n, i64* %_n2795
  store i64 0, i64* %i
  br label %_start2799
_start2799:
  %_id2797 = load i64, i64* %i
  %_id2798 = load i64, i64* %_n2795
  %_bop2796 = icmp slt i64 %_id2797, %_id2798
  br i1 %_bop2796, label %_body2800, label %_end2801
_body2800:
  store i64 0, i64* %j
  br label %_start2804
_start2804:
  %_id2803 = load i64, i64* %j
  %_bop2802 = icmp slt i64 %_id2803, 4
  br i1 %_bop2802, label %_body2805, label %_end2806
_body2805:
  %_idx_tmp2813 = load i64, i64* %_index_ptr2812
  %_index_ptr2812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp2810, i32 0, i32 1, i64 %_id2811
  %_id2811 = load i64, i64* %j
  %_idx_tmp2810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr2809
  %_index_ptr2809 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2807, i32 0, i32 1, i64 %_id2808
  %_id2808 = load i64, i64* %i
  %_id2807 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar2794
  call void @print_int(i64 %_idx_tmp2813)
  %_cstr_loc2815 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2816, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2815)
  %_id2819 = load i64, i64* %j
  %_bop2818 = add i64 %_id2819, 1
  store i64 %_bop2818, i64* %j
  br label %_start2804
_end2806:
  %_cstr_loc2820 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2821, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2820)
  %_id2824 = load i64, i64* %i
  %_bop2823 = add i64 %_id2824, 1
  store i64 %_bop2823, i64* %i
  br label %_start2799
_end2801:
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
