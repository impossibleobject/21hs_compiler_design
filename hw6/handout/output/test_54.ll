; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_str_arr3219 = global [2 x i8] c" \00"
@_str_arr3225 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3185, { i64, [0 x i8*] }* %_argv3182) {
  %_i3188 = alloca i64
  %_a3212 = alloca { i64, [0 x i64] }*
  store i64 0, i64* %_i3188
  %_raw_array3190 = call i64* @oat_alloc_array(i64 10)
  %_array3191 = bitcast i64* %_raw_array3190 to { i64, [0 x i64] }*
  %_ind3192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3192
  %_ind3194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3194
  %_ind3196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3196
  %_ind3198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3198
  %_ind3200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3200
  %_ind3202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3202
  %_ind3204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3204
  %_ind3206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3206
  %_ind3208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3208
  %_ind3210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3191, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3210
  store { i64, [0 x i64] }* %_array3191, { i64, [0 x i64] }** %_a3212
  %_a3214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3212
  %_result3215 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3214)
  call void @print_string(i8* %_result3215)
  %_a3217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3212
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3217, i64 0, i64 9)
  %_str3220 = getelementptr [2 x i8], [2 x i8]* @_str_arr3219, i32 0, i32 0
  call void @print_string(i8* %_str3220)
  %_a3222 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3212
  %_result3223 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3222)
  call void @print_string(i8* %_result3223)
  %_str3226 = getelementptr [2 x i8], [2 x i8]* @_str_arr3225, i32 0, i32 0
  call void @print_string(i8* %_str3226)
  %_i3228 = load i64, i64* %_i3188
  ret i64 %_i3228
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3152, i64 %_low3149, i64 %_high3146) {
  %_a3153 = alloca { i64, [0 x i64] }*
  %_low3150 = alloca i64
  %_high3147 = alloca i64
  %_mid3155 = alloca i64
  store { i64, [0 x i64] }* %_a3152, { i64, [0 x i64] }** %_a3153
  store i64 %_low3149, i64* %_low3150
  store i64 %_high3146, i64* %_high3147
  store i64 0, i64* %_mid3155
  %_low3157 = load i64, i64* %_low3150
  %_high3158 = load i64, i64* %_high3147
  %_bop3159 = icmp slt i64 %_low3157, %_high3158
  br i1 %_bop3159, label %_then3181, label %_else3180
_else3180:
  br label %_merge3179
_merge3179:
  ret void
_then3181:
  %_low3160 = load i64, i64* %_low3150
  %_high3161 = load i64, i64* %_high3147
  %_bop3162 = add i64 %_low3160, %_high3161
  %_bop3163 = lshr i64 %_bop3162, 1
  store i64 %_bop3163, i64* %_mid3155
  %_mid3165 = load i64, i64* %_mid3155
  %_low3166 = load i64, i64* %_low3150
  %_a3167 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3153
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3167, i64 %_low3166, i64 %_mid3165)
  %_high3169 = load i64, i64* %_high3147
  %_mid3170 = load i64, i64* %_mid3155
  %_bop3171 = add i64 %_mid3170, 1
  %_a3172 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3153
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3172, i64 %_bop3171, i64 %_high3169)
  %_mid3174 = load i64, i64* %_mid3155
  %_high3175 = load i64, i64* %_high3147
  %_low3176 = load i64, i64* %_low3150
  %_a3177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3153
  call void @merge({ i64, [0 x i64] }* %_a3177, i64 %_low3176, i64 %_high3175, i64 %_mid3174)
  br label %_merge3179
}

define void @merge({ i64, [0 x i64] }* %_a2972, i64 %_low2969, i64 %_high2966, i64 %_mid2963) {
  %_a2973 = alloca { i64, [0 x i64] }*
  %_low2970 = alloca i64
  %_high2967 = alloca i64
  %_mid2964 = alloca i64
  %_i2975 = alloca i64
  %_j2977 = alloca i64
  %_k2979 = alloca i64
  %_i12985 = alloca i64
  %_c3004 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2972, { i64, [0 x i64] }** %_a2973
  store i64 %_low2969, i64* %_low2970
  store i64 %_high2966, i64* %_high2967
  store i64 %_mid2963, i64* %_mid2964
  store i64 0, i64* %_i2975
  store i64 0, i64* %_j2977
  store i64 0, i64* %_k2979
  %_raw_array2983 = call i64* @oat_alloc_array(i64 50)
  %_array2984 = bitcast i64* %_raw_array2983 to { i64, [0 x i64] }*
  %_bnd_2982 = alloca i64
  store i64 50, i64* %_bnd_2982
  %_ptr_2981 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2984, { i64, [0 x i64] }** %_ptr_2981
  store i64 0, i64* %_i12985
  br label %_cond2992
_body2991:
  %__ptr_29812993 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_2981
  %_i12994 = load i64, i64* %_i12985
  %_tmp2996 = bitcast { i64, [0 x i64] }* %__ptr_29812993 to i64*
  call void @oat_assert_array_length(i64* %_tmp2996, i64 %_i12994)
  %_index_ptr2997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_29812993, i32 0, i32 1, i64 %_i12994
  store i64 0, i64* %_index_ptr2997
  %_i12999 = load i64, i64* %_i12985
  %_bop3000 = add i64 %_i12999, 1
  store i64 %_bop3000, i64* %_i12985
  br label %_cond2992
_body3021:
  %_a3023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2973
  %_i3024 = load i64, i64* %_i2975
  %_tmp3026 = bitcast { i64, [0 x i64] }* %_a3023 to i64*
  call void @oat_assert_array_length(i64* %_tmp3026, i64 %_i3024)
  %_index_ptr3027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3023, i32 0, i32 1, i64 %_i3024
  %_index3028 = load i64, i64* %_index_ptr3027
  %_a3029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2973
  %_j3030 = load i64, i64* %_j2977
  %_tmp3032 = bitcast { i64, [0 x i64] }* %_a3029 to i64*
  call void @oat_assert_array_length(i64* %_tmp3032, i64 %_j3030)
  %_index_ptr3033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3029, i32 0, i32 1, i64 %_j3030
  %_index3034 = load i64, i64* %_index_ptr3033
  %_bop3035 = icmp slt i64 %_index3028, %_index3034
  br i1 %_bop3035, label %_then3074, label %_else3073
_body3079:
  %_c3081 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3004
  %_k3082 = load i64, i64* %_k2979
  %_tmp3084 = bitcast { i64, [0 x i64] }* %_c3081 to i64*
  call void @oat_assert_array_length(i64* %_tmp3084, i64 %_k3082)
  %_index_ptr3085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3081, i32 0, i32 1, i64 %_k3082
  %_a3086 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2973
  %_i3087 = load i64, i64* %_i2975
  %_tmp3089 = bitcast { i64, [0 x i64] }* %_a3086 to i64*
  call void @oat_assert_array_length(i64* %_tmp3089, i64 %_i3087)
  %_index_ptr3090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3086, i32 0, i32 1, i64 %_i3087
  %_index3091 = load i64, i64* %_index_ptr3090
  store i64 %_index3091, i64* %_index_ptr3085
  %_k3093 = load i64, i64* %_k2979
  %_bop3094 = add i64 %_k3093, 1
  store i64 %_bop3094, i64* %_k2979
  %_i3096 = load i64, i64* %_i2975
  %_bop3097 = add i64 %_i3096, 1
  store i64 %_bop3097, i64* %_i2975
  br label %_cond3080
_body3103:
  %_c3105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3004
  %_k3106 = load i64, i64* %_k2979
  %_tmp3108 = bitcast { i64, [0 x i64] }* %_c3105 to i64*
  call void @oat_assert_array_length(i64* %_tmp3108, i64 %_k3106)
  %_index_ptr3109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3105, i32 0, i32 1, i64 %_k3106
  %_a3110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2973
  %_j3111 = load i64, i64* %_j2977
  %_tmp3113 = bitcast { i64, [0 x i64] }* %_a3110 to i64*
  call void @oat_assert_array_length(i64* %_tmp3113, i64 %_j3111)
  %_index_ptr3114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3110, i32 0, i32 1, i64 %_j3111
  %_index3115 = load i64, i64* %_index_ptr3114
  store i64 %_index3115, i64* %_index_ptr3109
  %_k3117 = load i64, i64* %_k2979
  %_bop3118 = add i64 %_k3117, 1
  store i64 %_bop3118, i64* %_k2979
  %_j3120 = load i64, i64* %_j2977
  %_bop3121 = add i64 %_j3120, 1
  store i64 %_bop3121, i64* %_j2977
  br label %_cond3104
_body3129:
  %_a3131 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2973
  %_i3132 = load i64, i64* %_i2975
  %_tmp3134 = bitcast { i64, [0 x i64] }* %_a3131 to i64*
  call void @oat_assert_array_length(i64* %_tmp3134, i64 %_i3132)
  %_index_ptr3135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3131, i32 0, i32 1, i64 %_i3132
  %_c3136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3004
  %_i3137 = load i64, i64* %_i2975
  %_tmp3139 = bitcast { i64, [0 x i64] }* %_c3136 to i64*
  call void @oat_assert_array_length(i64* %_tmp3139, i64 %_i3137)
  %_index_ptr3140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3136, i32 0, i32 1, i64 %_i3137
  %_index3141 = load i64, i64* %_index_ptr3140
  store i64 %_index3141, i64* %_index_ptr3135
  %_i3143 = load i64, i64* %_i2975
  %_bop3144 = add i64 %_i3143, 1
  store i64 %_bop3144, i64* %_i2975
  br label %_cond3130
_cond2992:
  %_i12987 = load i64, i64* %_i12985
  %__bnd_29822988 = load i64, i64* %_bnd_2982
  %_bop2989 = icmp slt i64 %_i12987, %__bnd_29822988
  br i1 %_bop2989, label %_body2991, label %_post2990
_cond3022:
  %_i3013 = load i64, i64* %_i2975
  %_mid3014 = load i64, i64* %_mid2964
  %_bop3015 = icmp sle i64 %_i3013, %_mid3014
  %_j3016 = load i64, i64* %_j2977
  %_high3017 = load i64, i64* %_high2967
  %_bop3018 = icmp sle i64 %_j3016, %_high3017
  %_bop3019 = and i1 %_bop3015, %_bop3018
  br i1 %_bop3019, label %_body3021, label %_post3020
_cond3080:
  %_i3075 = load i64, i64* %_i2975
  %_mid3076 = load i64, i64* %_mid2964
  %_bop3077 = icmp sle i64 %_i3075, %_mid3076
  br i1 %_bop3077, label %_body3079, label %_post3078
_cond3104:
  %_j3099 = load i64, i64* %_j2977
  %_high3100 = load i64, i64* %_high2967
  %_bop3101 = icmp sle i64 %_j3099, %_high3100
  br i1 %_bop3101, label %_body3103, label %_post3102
_cond3130:
  %_i3125 = load i64, i64* %_i2975
  %_k3126 = load i64, i64* %_k2979
  %_bop3127 = icmp slt i64 %_i3125, %_k3126
  br i1 %_bop3127, label %_body3129, label %_post3128
_else3073:
  %_c3054 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3004
  %_k3055 = load i64, i64* %_k2979
  %_tmp3057 = bitcast { i64, [0 x i64] }* %_c3054 to i64*
  call void @oat_assert_array_length(i64* %_tmp3057, i64 %_k3055)
  %_index_ptr3058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3054, i32 0, i32 1, i64 %_k3055
  %_a3059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2973
  %_j3060 = load i64, i64* %_j2977
  %_tmp3062 = bitcast { i64, [0 x i64] }* %_a3059 to i64*
  call void @oat_assert_array_length(i64* %_tmp3062, i64 %_j3060)
  %_index_ptr3063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3059, i32 0, i32 1, i64 %_j3060
  %_index3064 = load i64, i64* %_index_ptr3063
  store i64 %_index3064, i64* %_index_ptr3058
  %_k3066 = load i64, i64* %_k2979
  %_bop3067 = add i64 %_k3066, 1
  store i64 %_bop3067, i64* %_k2979
  %_j3069 = load i64, i64* %_j2977
  %_bop3070 = add i64 %_j3069, 1
  store i64 %_bop3070, i64* %_j2977
  br label %_merge3072
_merge3072:
  br label %_cond3022
_post2990:
  store { i64, [0 x i64] }* %_array2984, { i64, [0 x i64] }** %_c3004
  %_low3006 = load i64, i64* %_low2970
  store i64 %_low3006, i64* %_i2975
  %_mid3008 = load i64, i64* %_mid2964
  %_bop3009 = add i64 %_mid3008, 1
  store i64 %_bop3009, i64* %_j2977
  %_low3011 = load i64, i64* %_low2970
  store i64 %_low3011, i64* %_k2979
  br label %_cond3022
_post3020:
  br label %_cond3080
_post3078:
  br label %_cond3104
_post3102:
  %_low3123 = load i64, i64* %_low2970
  store i64 %_low3123, i64* %_i2975
  br label %_cond3130
_post3128:
  ret void
_then3074:
  %_c3036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3004
  %_k3037 = load i64, i64* %_k2979
  %_tmp3039 = bitcast { i64, [0 x i64] }* %_c3036 to i64*
  call void @oat_assert_array_length(i64* %_tmp3039, i64 %_k3037)
  %_index_ptr3040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3036, i32 0, i32 1, i64 %_k3037
  %_a3041 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2973
  %_i3042 = load i64, i64* %_i2975
  %_tmp3044 = bitcast { i64, [0 x i64] }* %_a3041 to i64*
  call void @oat_assert_array_length(i64* %_tmp3044, i64 %_i3042)
  %_index_ptr3045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3041, i32 0, i32 1, i64 %_i3042
  %_index3046 = load i64, i64* %_index_ptr3045
  store i64 %_index3046, i64* %_index_ptr3040
  %_k3048 = load i64, i64* %_k2979
  %_bop3049 = add i64 %_k3048, 1
  store i64 %_bop3049, i64* %_k2979
  %_i3051 = load i64, i64* %_i2975
  %_bop3052 = add i64 %_i3051, 1
  store i64 %_bop3052, i64* %_i2975
  br label %_merge3072
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
