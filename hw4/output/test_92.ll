; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3035 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %quotient = alloca i64
  %remainder = alloca i64
  %_numerator3081 = alloca i64
  store i64 %numerator, i64* %_numerator3081
  %_denominator3082 = alloca i64
  store i64 %denominator, i64* %_denominator3082
  %_id3084 = load i64, i64* %_denominator3082
  %_bop3083 = icmp slt i64 %_id3084, 0
  br i1 %_bop3083, label %_then3085, label %_else3086
_then3085:
  %_id3089 = load i64, i64* %_numerator3081
  %_uop3090 = sub i64 0, %_id3091
  %_id3091 = load i64, i64* %_denominator3082
  %_Call_retval3092 = call i64 @euclid_division(i64 %_id3089, i64 %_uop3090)
  %_uop3088 = sub i64 0, %_Call_retval3092
  ret i64 %_uop3088
_else3086:
  br label %_end3087
_end3087:
  store i64 0, i64* %quotient
  %_id3093 = load i64, i64* %_numerator3081
  store i64 %_id3093, i64* %remainder
  %_id3095 = load i64, i64* %_numerator3081
  %_bop3094 = icmp slt i64 %_id3095, 0
  br i1 %_bop3094, label %_then3096, label %_else3097
_then3096:
  %_id3100 = load i64, i64* %_numerator3081
  %_uop3099 = sub i64 0, %_id3100
  store i64 %_uop3099, i64* %remainder
  br label %_start3104
_start3104:
  %_id3102 = load i64, i64* %remainder
  %_id3103 = load i64, i64* %_denominator3082
  %_bop3101 = icmp sge i64 %_id3102, %_id3103
  br i1 %_bop3101, label %_body3105, label %_end3106
_body3105:
  %_id3108 = load i64, i64* %quotient
  %_bop3107 = add i64 %_id3108, 1
  store i64 %_bop3107, i64* %quotient
  %_id3110 = load i64, i64* %remainder
  %_id3111 = load i64, i64* %_denominator3082
  %_bop3109 = sub i64 %_id3110, %_id3111
  store i64 %_bop3109, i64* %remainder
  br label %_start3104
_end3106:
  %_id3113 = load i64, i64* %remainder
  %_bop3112 = icmp eq i64 %_id3113, 0
  br i1 %_bop3112, label %_then3114, label %_else3115
_then3114:
  %_id3118 = load i64, i64* %quotient
  %_uop3117 = sub i64 0, %_id3118
  ret i64 %_uop3117
_else3115:
  %_id3121 = load i64, i64* %quotient
  %_uop3120 = sub i64 0, %_id3121
  %_bop3119 = sub i64 %_uop3120, 1
  ret i64 %_bop3119
_end3116:
  br label %_end3098
_else3097:
  br label %_end3098
_end3098:
  br label %_start3125
_start3125:
  %_id3123 = load i64, i64* %remainder
  %_id3124 = load i64, i64* %_denominator3082
  %_bop3122 = icmp sge i64 %_id3123, %_id3124
  br i1 %_bop3122, label %_body3126, label %_end3127
_body3126:
  %_id3129 = load i64, i64* %quotient
  %_bop3128 = add i64 %_id3129, 1
  store i64 %_bop3128, i64* %quotient
  %_id3131 = load i64, i64* %remainder
  %_id3132 = load i64, i64* %_denominator3082
  %_bop3130 = sub i64 %_id3131, %_id3132
  store i64 %_bop3130, i64* %remainder
  br label %_start3125
_end3127:
  %_id3133 = load i64, i64* %quotient
  ret i64 %_id3133
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %midpt = alloca i64
  %_input3037 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3037
  %_key3038 = alloca i64
  store i64 %key, i64* %_key3038
  %_min3039 = alloca i64
  store i64 %min, i64* %_min3039
  %_max3040 = alloca i64
  store i64 %max, i64* %_max3040
  %_id3042 = load i64, i64* %_max3040
  %_id3043 = load i64, i64* %_min3039
  %_bop3041 = icmp slt i64 %_id3042, %_id3043
  br i1 %_bop3041, label %_then3044, label %_else3045
_then3044:
  ret i1 0
_else3045:
  br label %_end3046
_end3046:
  %_bop3047 = add i64 %_id3048, %_id3049
  %_id3049 = load i64, i64* %_min3039
  %_id3048 = load i64, i64* %_max3040
  %_Call_retval3050 = call i64 @euclid_division(i64 %_bop3047, i64 2)
  store i64 %_Call_retval3050, i64* %midpt
  %_id3052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3037
  %_id3053 = load i64, i64* %midpt
  %_index_ptr3054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3052, i32 0, i32 1, i64 %_id3053
  %_idx_tmp3056 = load i64, i64* %_index_ptr3054
  %_id3055 = load i64, i64* %_key3038
  %_bop3051 = icmp sgt i64 %_idx_tmp3056, %_id3055
  br i1 %_bop3051, label %_then3057, label %_else3058
_then3057:
  %_id3060 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3037
  %_id3061 = load i64, i64* %_key3038
  %_id3062 = load i64, i64* %_min3039
  %_bop3063 = sub i64 %_id3064, 1
  %_id3064 = load i64, i64* %midpt
  %_Call_retval3065 = call i1 @binary_search({ i64, [0 x i64] }* %_id3060, i64 %_id3061, i64 %_id3062, i64 %_bop3063)
  ret i1 %_Call_retval3065
_else3058:
  br label %_end3059
_end3059:
  %_id3067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3037
  %_id3068 = load i64, i64* %midpt
  %_index_ptr3069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3067, i32 0, i32 1, i64 %_id3068
  %_idx_tmp3071 = load i64, i64* %_index_ptr3069
  %_id3070 = load i64, i64* %_key3038
  %_bop3066 = icmp slt i64 %_idx_tmp3071, %_id3070
  br i1 %_bop3066, label %_then3072, label %_else3073
_then3072:
  %_id3075 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3037
  %_id3076 = load i64, i64* %_key3038
  %_bop3077 = add i64 %_id3078, 1
  %_id3078 = load i64, i64* %midpt
  %_id3079 = load i64, i64* %_max3040
  %_Call_retval3080 = call i1 @binary_search({ i64, [0 x i64] }* %_id3075, i64 %_id3076, i64 %_bop3077, i64 %_id3079)
  ret i1 %_Call_retval3080
_else3073:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %test_array = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %even = alloca i1
  %odd = alloca i1
  %_argc3002 = alloca i64
  store i64 %argc, i64* %_argc3002
  %_argv3003 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3003
  %_raw_array3004 = call i64* @oat_alloc_array(i64 100)
  %_array3005 = bitcast i64* %_raw_array3004 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3005, { i64, [0 x i64] }** %test_array
  store i64 0, i64* %i
  br label %_start3008
_start3008:
  %_id3007 = load i64, i64* %i
  %_bop3006 = icmp slt i64 %_id3007, 100
  br i1 %_bop3006, label %_body3009, label %_end3010
_body3009:
  %_id3013 = load i64, i64* %i
  %_bop3012 = mul i64 2, %_id3013
  %_bop3011 = add i64 %_bop3012, 1
  %_id3014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %test_array
  %_id3015 = load i64, i64* %i
  %_index_ptr3016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3014, i32 0, i32 1, i64 %_id3015
  store i64 %_bop3011, i64* %_index_ptr3016
  %_id3018 = load i64, i64* %i
  %_bop3017 = add i64 %_id3018, 1
  store i64 %_bop3017, i64* %i
  br label %_start3008
_end3010:
  %_id3019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %test_array
  %_Call_retval3020 = call i1 @binary_search({ i64, [0 x i64] }* %_id3019, i64 80, i64 0, i64 99)
  store i1 %_Call_retval3020, i1* %even
  %_id3021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %test_array
  %_Call_retval3022 = call i1 @binary_search({ i64, [0 x i64] }* %_id3021, i64 81, i64 0, i64 99)
  store i1 %_Call_retval3022, i1* %odd
  %_id3026 = load i1, i1* %even
  %_id3027 = load i1, i1* %odd
  %_bop3025 = and i1 %_id3026, %_id3027
  %_uop3024 = icmp eq i1 0, %_bop3025
  %_id3029 = load i1, i1* %even
  %_id3030 = load i1, i1* %odd
  %_bop3028 = or i1 %_id3029, %_id3030
  %_bop3023 = and i1 %_uop3024, %_bop3028
  br i1 %_bop3023, label %_then3031, label %_else3032
_then3031:
  %_cstr_loc3034 = getelementptr [9 x i8], [9 x i8]* @_cstr_glb3035, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3034)
  br label %_end3033
_else3032:
  br label %_end3033
_end3033:
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
