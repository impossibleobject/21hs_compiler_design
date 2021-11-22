; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3155 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x3190 = alloca i64
  store i64 %x, i64* %_x3190
  %_y3191 = alloca i64
  store i64 %y, i64* %_y3191
  %_id3195 = load i64, i64* %_x3190
  %_id3196 = load i64, i64* %_y3191
  %_bop3194 = and i64 %_id3195, %_id3196
  %_uop3193 = xor i64 %_bop3194, -1
  %_id3198 = load i64, i64* %_x3190
  %_id3199 = load i64, i64* %_y3191
  %_bop3197 = or i64 %_id3198, %_id3199
  %_bop3192 = and i64 %_uop3193, %_bop3197
  ret i64 %_bop3192
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %x = alloca i64
  %y = alloca i64
  %_s3160 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3160
  %_id3161 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3160
  %_index_ptr3162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3161, i32 0, i32 1, i32 0
  %_idx_tmp3163 = load i64, i64* %_index_ptr3162
  store i64 %_idx_tmp3163, i64* %x
  %_id3164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3160
  %_index_ptr3165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3164, i32 0, i32 1, i32 1
  %_idx_tmp3166 = load i64, i64* %_index_ptr3165
  store i64 %_idx_tmp3166, i64* %y
  %_id3167 = load i64, i64* %y
  %_id3168 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3160
  %_index_ptr3169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3168, i32 0, i32 1, i32 0
  store i64 %_id3167, i64* %_index_ptr3169
  %_id3170 = load i64, i64* %x
  %_bop3171 = shl i64 %_id3172, 23
  %_id3172 = load i64, i64* %x
  %_Call_retval3173 = call i64 @xor(i64 %_id3170, i64 %_bop3171)
  store i64 %_Call_retval3173, i64* %x
  %_id3174 = load i64, i64* %x
  %_bop3175 = lshr i64 %_id3176, 17
  %_id3176 = load i64, i64* %x
  %_Call_retval3177 = call i64 @xor(i64 %_id3174, i64 %_bop3175)
  store i64 %_Call_retval3177, i64* %x
  %_id3178 = load i64, i64* %x
  %_Call_retval3182 = call i64 @xor(i64 %_id3179, i64 %_bop3180)
  %_id3181 = load i64, i64* %y
  %_bop3180 = lshr i64 %_id3181, 26
  %_id3179 = load i64, i64* %y
  %_Call_retval3183 = call i64 @xor(i64 %_id3178, i64 %_Call_retval3182)
  store i64 %_Call_retval3183, i64* %x
  %_id3184 = load i64, i64* %x
  %_id3185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3160
  %_index_ptr3186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3185, i32 0, i32 1, i32 1
  store i64 %_id3184, i64* %_index_ptr3186
  %_id3188 = load i64, i64* %x
  %_id3189 = load i64, i64* %y
  %_bop3187 = add i64 %_id3188, %_id3189
  ret i64 %_bop3187
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %seed = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %_argc3134 = alloca i64
  store i64 %argc, i64* %_argc3134
  %_argv3135 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3135
  %_raw_array3136 = call i64* @oat_alloc_array(i64 2)
  %_array3137 = bitcast i64* %_raw_array3136 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3137, { i64, [0 x i64] }** %seed
  store i64 0, i64* %i
  br label %_start3140
_start3140:
  %_id3139 = load i64, i64* %i
  %_bop3138 = icmp slt i64 %_id3139, 2
  br i1 %_bop3138, label %_body3141, label %_end3142
_body3141:
  %_id3145 = load i64, i64* %i
  %_bop3144 = add i64 %_id3145, 1
  %_bop3143 = mul i64 100, %_bop3144
  %_id3146 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %seed
  %_id3147 = load i64, i64* %i
  %_index_ptr3148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3146, i32 0, i32 1, i64 %_id3147
  store i64 %_bop3143, i64* %_index_ptr3148
  %_id3150 = load i64, i64* %i
  %_bop3149 = add i64 %_id3150, 1
  store i64 %_bop3149, i64* %i
  br label %_start3140
_end3142:
  %_Call_retval3152 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3151)
  %_id3151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %seed
  call void @print_int(i64 %_Call_retval3152)
  %_cstr_loc3154 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3155, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3154)
  %_Call_retval3158 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3157)
  %_id3157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %seed
  call void @print_int(i64 %_Call_retval3158)
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
