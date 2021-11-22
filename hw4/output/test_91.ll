; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2975 = global [2 x i8] c" \00"
@_cstr_glb2980 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a3103 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b3118 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c3142 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc3101 = alloca i64
  store i64 %argc, i64* %_argc3101
  %_argv3102 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3102
  %_raw_array3104 = call i64* @oat_alloc_array(i64 2)
  %_array3105 = bitcast i64* %_raw_array3104 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3111 = call i64* @oat_alloc_array(i64 3)
  %_array3112 = bitcast i64* %_raw_array3111 to { i64, [0 x i64] }*
  %_CArr_elem_23115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3112, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_23115
  %_CArr_elem_13114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3112, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_13114
  %_CArr_elem_03113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3112, i32 0, i32 1, i32 0
  store i64 2, i64* %_CArr_elem_03113
  %_CArr_elem_13117 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3105, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3112, { i64, [0 x i64] }** %_CArr_elem_13117
  %_raw_array3106 = call i64* @oat_alloc_array(i64 3)
  %_array3107 = bitcast i64* %_raw_array3106 to { i64, [0 x i64] }*
  %_CArr_elem_23110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3107, i32 0, i32 1, i32 2
  store i64 4, i64* %_CArr_elem_23110
  %_CArr_elem_13109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3107, i32 0, i32 1, i32 1
  store i64 3, i64* %_CArr_elem_13109
  %_CArr_elem_03108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3107, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_03108
  %_CArr_elem_03116 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3105, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3107, { i64, [0 x i64] }** %_CArr_elem_03116
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3105, { i64, [0 x { i64, [0 x i64] }*] }** %_a3103
  %_raw_array3119 = call i64* @oat_alloc_array(i64 3)
  %_array3120 = bitcast i64* %_raw_array3119 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3133 = call i64* @oat_alloc_array(i64 4)
  %_array3134 = bitcast i64* %_raw_array3133 to { i64, [0 x i64] }*
  %_CArr_elem_33138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3134, i32 0, i32 1, i32 3
  store i64 4, i64* %_CArr_elem_33138
  %_CArr_elem_23137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3134, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_23137
  %_CArr_elem_13136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3134, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_13136
  %_CArr_elem_03135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3134, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_03135
  %_CArr_elem_23141 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3120, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3134, { i64, [0 x i64] }** %_CArr_elem_23141
  %_raw_array3127 = call i64* @oat_alloc_array(i64 4)
  %_array3128 = bitcast i64* %_raw_array3127 to { i64, [0 x i64] }*
  %_CArr_elem_33132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 3
  store i64 2, i64* %_CArr_elem_33132
  %_CArr_elem_23131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_23131
  %_CArr_elem_13130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_13130
  %_CArr_elem_03129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3128, i32 0, i32 1, i32 0
  store i64 2, i64* %_CArr_elem_03129
  %_CArr_elem_13140 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3120, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3128, { i64, [0 x i64] }** %_CArr_elem_13140
  %_raw_array3121 = call i64* @oat_alloc_array(i64 4)
  %_array3122 = bitcast i64* %_raw_array3121 to { i64, [0 x i64] }*
  %_CArr_elem_33126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3122, i32 0, i32 1, i32 3
  store i64 1, i64* %_CArr_elem_33126
  %_CArr_elem_23125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3122, i32 0, i32 1, i32 2
  store i64 3, i64* %_CArr_elem_23125
  %_CArr_elem_13124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3122, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_13124
  %_CArr_elem_03123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3122, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_03123
  %_CArr_elem_03139 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3120, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3122, { i64, [0 x i64] }** %_CArr_elem_03139
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3120, { i64, [0 x { i64, [0 x i64] }*] }** %_b3118
  %_raw_array3143 = call i64* @oat_alloc_array(i64 2)
  %_array3144 = bitcast i64* %_raw_array3143 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3151 = call i64* @oat_alloc_array(i64 4)
  %_array3152 = bitcast i64* %_raw_array3151 to { i64, [0 x i64] }*
  %_CArr_elem_33156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3152, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_33156
  %_CArr_elem_23155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3152, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_23155
  %_CArr_elem_13154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3152, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_13154
  %_CArr_elem_03153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3152, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03153
  %_CArr_elem_13158 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3144, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3152, { i64, [0 x i64] }** %_CArr_elem_13158
  %_raw_array3145 = call i64* @oat_alloc_array(i64 4)
  %_array3146 = bitcast i64* %_raw_array3145 to { i64, [0 x i64] }*
  %_CArr_elem_33150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3146, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_33150
  %_CArr_elem_23149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3146, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_23149
  %_CArr_elem_13148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3146, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_13148
  %_CArr_elem_03147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3146, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03147
  %_CArr_elem_03157 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3144, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3146, { i64, [0 x i64] }** %_CArr_elem_03157
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3144, { i64, [0 x { i64, [0 x i64] }*] }** %_c3142
  %_id3161 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3142
  %_id3160 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3118
  %_id3159 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3103
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_id3159, { i64, [0 x { i64, [0 x i64] }*] }* %_id3160, { i64, [0 x { i64, [0 x i64] }*] }* %_id3161)
  %_id3163 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3142
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id3163, i64 2)
  %_id3167 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3142
  %_id3166 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3118
  %_id3165 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3103
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_id3165, { i64, [0 x { i64, [0 x i64] }*] }* %_id3166, { i64, [0 x { i64, [0 x i64] }*] }* %_id3167)
  %_id3169 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3142
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_id3169, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i3048 = alloca i64
  %_j3054 = alloca i64
  %_k3060 = alloca i64
  %_a13045 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13045
  %_a23046 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23046
  %_a33047 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33047
  store i64 0, i64* %_i3048
  br label %_start3051
_start3051:
  %_id3050 = load i64, i64* %_i3048
  %_bop3049 = icmp slt i64 %_id3050, 2
  br i1 %_bop3049, label %_body3052, label %_end3053
_body3052:
  store i64 0, i64* %_j3054
  br label %_start3057
_start3057:
  %_id3056 = load i64, i64* %_j3054
  %_bop3055 = icmp slt i64 %_id3056, 4
  br i1 %_bop3055, label %_body3058, label %_end3059
_body3058:
  store i64 0, i64* %_k3060
  br label %_start3063
_start3063:
  %_id3062 = load i64, i64* %_k3060
  %_bop3061 = icmp slt i64 %_id3062, 3
  br i1 %_bop3061, label %_body3064, label %_end3065
_body3064:
  %_id3067 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33047
  %_id3068 = load i64, i64* %_i3048
  %_index_ptr3069 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id3067, i32 0, i32 1, i64 %_id3068
  %_idx_tmp3070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3069
  %_id3071 = load i64, i64* %_j3054
  %_index_ptr3072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp3070, i32 0, i32 1, i64 %_id3071
  %_idx_tmp3088 = load i64, i64* %_index_ptr3072
  %_id3074 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13045
  %_id3075 = load i64, i64* %_i3048
  %_index_ptr3076 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id3074, i32 0, i32 1, i64 %_id3075
  %_idx_tmp3077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3076
  %_id3078 = load i64, i64* %_k3060
  %_index_ptr3079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp3077, i32 0, i32 1, i64 %_id3078
  %_idx_tmp3086 = load i64, i64* %_index_ptr3079
  %_id3080 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23046
  %_id3081 = load i64, i64* %_k3060
  %_index_ptr3082 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id3080, i32 0, i32 1, i64 %_id3081
  %_idx_tmp3083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3082
  %_id3084 = load i64, i64* %_j3054
  %_index_ptr3085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp3083, i32 0, i32 1, i64 %_id3084
  %_idx_tmp3087 = load i64, i64* %_index_ptr3085
  %_bop3073 = mul i64 %_idx_tmp3086, %_idx_tmp3087
  %_bop3066 = add i64 %_idx_tmp3088, %_bop3073
  %_id3089 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33047
  %_id3090 = load i64, i64* %_i3048
  %_index_ptr3091 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id3089, i32 0, i32 1, i64 %_id3090
  %_idx_tmp3092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3091
  %_id3093 = load i64, i64* %_j3054
  %_index_ptr3094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp3092, i32 0, i32 1, i64 %_id3093
  store i64 %_bop3066, i64* %_index_ptr3094
  %_id3096 = load i64, i64* %_k3060
  %_bop3095 = add i64 %_id3096, 1
  store i64 %_bop3095, i64* %_k3060
  br label %_start3063
_end3065:
  %_id3098 = load i64, i64* %_j3054
  %_bop3097 = add i64 %_id3098, 1
  store i64 %_bop3097, i64* %_j3054
  br label %_start3057
_end3059:
  %_id3100 = load i64, i64* %_i3048
  %_bop3099 = add i64 %_id3100, 1
  store i64 %_bop3099, i64* %_i3048
  br label %_start3051
_end3053:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i3018 = alloca i64
  %_j3024 = alloca i64
  %_a13015 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13015
  %_a23016 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23016
  %_a33017 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33017
  store i64 0, i64* %_i3018
  br label %_start3021
_start3021:
  %_id3020 = load i64, i64* %_i3018
  %_bop3019 = icmp slt i64 %_id3020, 2
  br i1 %_bop3019, label %_body3022, label %_end3023
_body3022:
  store i64 0, i64* %_j3024
  br label %_start3027
_start3027:
  %_id3026 = load i64, i64* %_j3024
  %_bop3025 = icmp slt i64 %_id3026, 4
  br i1 %_bop3025, label %_body3028, label %_end3029
_body3028:
  %_id3033 = load i64, i64* %_j3024
  %_id3032 = load i64, i64* %_i3018
  %_id3031 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23016
  %_id3030 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13015
  %_Call_retval3034 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_id3030, { i64, [0 x { i64, [0 x i64] }*] }* %_id3031, i64 %_id3032, i64 %_id3033)
  %_id3035 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33017
  %_id3036 = load i64, i64* %_i3018
  %_index_ptr3037 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id3035, i32 0, i32 1, i64 %_id3036
  %_idx_tmp3038 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3037
  %_id3039 = load i64, i64* %_j3024
  %_index_ptr3040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp3038, i32 0, i32 1, i64 %_id3039
  store i64 %_Call_retval3034, i64* %_index_ptr3040
  %_id3042 = load i64, i64* %_j3024
  %_bop3041 = add i64 %_id3042, 1
  store i64 %_bop3041, i64* %_j3024
  br label %_start3027
_end3029:
  %_id3044 = load i64, i64* %_i3018
  %_bop3043 = add i64 %_id3044, 1
  store i64 %_bop3043, i64* %_i3018
  br label %_start3021
_end3023:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_sum2988 = alloca i64
  %_k2989 = alloca i64
  %_a12984 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a12984
  %_a22985 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a22985
  %_row2986 = alloca i64
  store i64 %row, i64* %_row2986
  %_col2987 = alloca i64
  store i64 %col, i64* %_col2987
  store i64 0, i64* %_sum2988
  store i64 0, i64* %_k2989
  br label %_start2992
_start2992:
  %_id2991 = load i64, i64* %_k2989
  %_bop2990 = icmp slt i64 %_id2991, 3
  br i1 %_bop2990, label %_body2993, label %_end2994
_body2993:
  %_id2996 = load i64, i64* %_sum2988
  %_id2998 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a12984
  %_id2999 = load i64, i64* %_row2986
  %_index_ptr3000 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2998, i32 0, i32 1, i64 %_id2999
  %_idx_tmp3001 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3000
  %_id3002 = load i64, i64* %_k2989
  %_index_ptr3003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp3001, i32 0, i32 1, i64 %_id3002
  %_idx_tmp3010 = load i64, i64* %_index_ptr3003
  %_id3004 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a22985
  %_id3005 = load i64, i64* %_k2989
  %_index_ptr3006 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id3004, i32 0, i32 1, i64 %_id3005
  %_idx_tmp3007 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3006
  %_id3008 = load i64, i64* %_col2987
  %_index_ptr3009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp3007, i32 0, i32 1, i64 %_id3008
  %_idx_tmp3011 = load i64, i64* %_index_ptr3009
  %_bop2997 = mul i64 %_idx_tmp3010, %_idx_tmp3011
  %_bop2995 = add i64 %_id2996, %_bop2997
  store i64 %_bop2995, i64* %_sum2988
  %_id3013 = load i64, i64* %_k2989
  %_bop3012 = add i64 %_id3013, 1
  store i64 %_bop3012, i64* %_k2989
  br label %_start2992
_end2994:
  %_id3014 = load i64, i64* %_sum2988
  ret i64 %_id3014
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_i2953 = alloca i64
  %_j2960 = alloca i64
  %_ar2951 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar2951
  %_n2952 = alloca i64
  store i64 %n, i64* %_n2952
  store i64 0, i64* %_i2953
  br label %_start2957
_start2957:
  %_id2955 = load i64, i64* %_i2953
  %_id2956 = load i64, i64* %_n2952
  %_bop2954 = icmp slt i64 %_id2955, %_id2956
  br i1 %_bop2954, label %_body2958, label %_end2959
_body2958:
  store i64 0, i64* %_j2960
  br label %_start2963
_start2963:
  %_id2962 = load i64, i64* %_j2960
  %_bop2961 = icmp slt i64 %_id2962, 4
  br i1 %_bop2961, label %_body2964, label %_end2965
_body2964:
  %_id2966 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar2951
  %_id2967 = load i64, i64* %_i2953
  %_index_ptr2968 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id2966, i32 0, i32 1, i64 %_id2967
  %_idx_tmp2969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr2968
  %_id2970 = load i64, i64* %_j2960
  %_index_ptr2971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp2969, i32 0, i32 1, i64 %_id2970
  %_idx_tmp2972 = load i64, i64* %_index_ptr2971
  call void @print_int(i64 %_idx_tmp2972)
  %_cstr_loc2974 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2975, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2974)
  %_id2978 = load i64, i64* %_j2960
  %_bop2977 = add i64 %_id2978, 1
  store i64 %_bop2977, i64* %_j2960
  br label %_start2963
_end2965:
  %_cstr_loc2979 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2980, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2979)
  %_id2983 = load i64, i64* %_i2953
  %_bop2982 = add i64 %_id2983, 1
  store i64 %_bop2982, i64* %_i2953
  br label %_start2957
_end2959:
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
