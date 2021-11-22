; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3208 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_quotient3267 = alloca i64
  %_remainder3268 = alloca i64
  %_numerator3255 = alloca i64
  store i64 %numerator, i64* %_numerator3255
  %_denominator3256 = alloca i64
  store i64 %denominator, i64* %_denominator3256
  %_id3258 = load i64, i64* %_denominator3256
  %_bop3257 = icmp slt i64 %_id3258, 0
  br i1 %_bop3257, label %_then3259, label %_else3260
_then3259:
  %_id3265 = load i64, i64* %_denominator3256
  %_uop3264 = sub i64 0, %_id3265
  %_id3263 = load i64, i64* %_numerator3255
  %_Call_retval3266 = call i64 @euclid_division(i64 %_id3263, i64 %_uop3264)
  %_uop3262 = sub i64 0, %_Call_retval3266
  ret i64 %_uop3262
_else3260:
  br label %_end3261
_end3261:
  store i64 0, i64* %_quotient3267
  %_id3269 = load i64, i64* %_numerator3255
  store i64 %_id3269, i64* %_remainder3268
  %_id3271 = load i64, i64* %_numerator3255
  %_bop3270 = icmp slt i64 %_id3271, 0
  br i1 %_bop3270, label %_then3272, label %_else3273
_then3272:
  %_id3276 = load i64, i64* %_numerator3255
  %_uop3275 = sub i64 0, %_id3276
  store i64 %_uop3275, i64* %_remainder3268
  br label %_start3280
_start3280:
  %_id3278 = load i64, i64* %_remainder3268
  %_id3279 = load i64, i64* %_denominator3256
  %_bop3277 = icmp sge i64 %_id3278, %_id3279
  br i1 %_bop3277, label %_body3281, label %_end3282
_body3281:
  %_id3284 = load i64, i64* %_quotient3267
  %_bop3283 = add i64 %_id3284, 1
  store i64 %_bop3283, i64* %_quotient3267
  %_id3286 = load i64, i64* %_remainder3268
  %_id3287 = load i64, i64* %_denominator3256
  %_bop3285 = sub i64 %_id3286, %_id3287
  store i64 %_bop3285, i64* %_remainder3268
  br label %_start3280
_end3282:
  %_id3289 = load i64, i64* %_remainder3268
  %_bop3288 = icmp eq i64 %_id3289, 0
  br i1 %_bop3288, label %_then3290, label %_else3291
_then3290:
  %_id3294 = load i64, i64* %_quotient3267
  %_uop3293 = sub i64 0, %_id3294
  ret i64 %_uop3293
_else3291:
  %_id3297 = load i64, i64* %_quotient3267
  %_uop3296 = sub i64 0, %_id3297
  %_bop3295 = sub i64 %_uop3296, 1
  ret i64 %_bop3295
_end3292:
  br label %_end3274
_else3273:
  br label %_end3274
_end3274:
  br label %_start3301
_start3301:
  %_id3299 = load i64, i64* %_remainder3268
  %_id3300 = load i64, i64* %_denominator3256
  %_bop3298 = icmp sge i64 %_id3299, %_id3300
  br i1 %_bop3298, label %_body3302, label %_end3303
_body3302:
  %_id3305 = load i64, i64* %_quotient3267
  %_bop3304 = add i64 %_id3305, 1
  store i64 %_bop3304, i64* %_quotient3267
  %_id3307 = load i64, i64* %_remainder3268
  %_id3308 = load i64, i64* %_denominator3256
  %_bop3306 = sub i64 %_id3307, %_id3308
  store i64 %_bop3306, i64* %_remainder3268
  br label %_start3301
_end3303:
  %_id3309 = load i64, i64* %_quotient3267
  ret i64 %_id3309
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_midpt3220 = alloca i64
  %_input3210 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3210
  %_key3211 = alloca i64
  store i64 %key, i64* %_key3211
  %_min3212 = alloca i64
  store i64 %min, i64* %_min3212
  %_max3213 = alloca i64
  store i64 %max, i64* %_max3213
  %_id3215 = load i64, i64* %_max3213
  %_id3216 = load i64, i64* %_min3212
  %_bop3214 = icmp slt i64 %_id3215, %_id3216
  br i1 %_bop3214, label %_then3217, label %_else3218
_then3217:
  ret i1 0
_else3218:
  br label %_end3219
_end3219:
  %_id3222 = load i64, i64* %_max3213
  %_id3223 = load i64, i64* %_min3212
  %_bop3221 = add i64 %_id3222, %_id3223
  %_Call_retval3224 = call i64 @euclid_division(i64 %_bop3221, i64 2)
  store i64 %_Call_retval3224, i64* %_midpt3220
  %_id3226 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3210
  %_id3227 = load i64, i64* %_midpt3220
  %_index_ptr3228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3226, i32 0, i32 1, i64 %_id3227
  %_idx_tmp3230 = load i64, i64* %_index_ptr3228
  %_id3229 = load i64, i64* %_key3211
  %_bop3225 = icmp sgt i64 %_idx_tmp3230, %_id3229
  br i1 %_bop3225, label %_then3231, label %_else3232
_then3231:
  %_id3238 = load i64, i64* %_midpt3220
  %_bop3237 = sub i64 %_id3238, 1
  %_id3236 = load i64, i64* %_min3212
  %_id3235 = load i64, i64* %_key3211
  %_id3234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3210
  %_Call_retval3239 = call i1 @binary_search({ i64, [0 x i64] }* %_id3234, i64 %_id3235, i64 %_id3236, i64 %_bop3237)
  ret i1 %_Call_retval3239
_else3232:
  br label %_end3233
_end3233:
  %_id3241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3210
  %_id3242 = load i64, i64* %_midpt3220
  %_index_ptr3243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3241, i32 0, i32 1, i64 %_id3242
  %_idx_tmp3245 = load i64, i64* %_index_ptr3243
  %_id3244 = load i64, i64* %_key3211
  %_bop3240 = icmp slt i64 %_idx_tmp3245, %_id3244
  br i1 %_bop3240, label %_then3246, label %_else3247
_then3246:
  %_id3253 = load i64, i64* %_max3213
  %_id3252 = load i64, i64* %_midpt3220
  %_bop3251 = add i64 %_id3252, 1
  %_id3250 = load i64, i64* %_key3211
  %_id3249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3210
  %_Call_retval3254 = call i1 @binary_search({ i64, [0 x i64] }* %_id3249, i64 %_id3250, i64 %_bop3251, i64 %_id3253)
  ret i1 %_Call_retval3254
_else3247:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_test_array3173 = alloca { i64, [0 x i64] }*
  %_i3176 = alloca i64
  %_even3190 = alloca i1
  %_odd3193 = alloca i1
  %_argc3171 = alloca i64
  store i64 %argc, i64* %_argc3171
  %_argv3172 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3172
  %_raw_array3174 = call i64* @oat_alloc_array(i64 100)
  %_array3175 = bitcast i64* %_raw_array3174 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3175, { i64, [0 x i64] }** %_test_array3173
  store i64 0, i64* %_i3176
  br label %_start3179
_start3179:
  %_id3178 = load i64, i64* %_i3176
  %_bop3177 = icmp slt i64 %_id3178, 100
  br i1 %_bop3177, label %_body3180, label %_end3181
_body3180:
  %_id3184 = load i64, i64* %_i3176
  %_bop3183 = mul i64 2, %_id3184
  %_bop3182 = add i64 %_bop3183, 1
  %_id3185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3173
  %_id3186 = load i64, i64* %_i3176
  %_index_ptr3187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3185, i32 0, i32 1, i64 %_id3186
  store i64 %_bop3182, i64* %_index_ptr3187
  %_id3189 = load i64, i64* %_i3176
  %_bop3188 = add i64 %_id3189, 1
  store i64 %_bop3188, i64* %_i3176
  br label %_start3179
_end3181:
  %_id3191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3173
  %_Call_retval3192 = call i1 @binary_search({ i64, [0 x i64] }* %_id3191, i64 80, i64 0, i64 99)
  store i1 %_Call_retval3192, i1* %_even3190
  %_id3194 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3173
  %_Call_retval3195 = call i1 @binary_search({ i64, [0 x i64] }* %_id3194, i64 81, i64 0, i64 99)
  store i1 %_Call_retval3195, i1* %_odd3193
  %_id3199 = load i1, i1* %_even3190
  %_id3200 = load i1, i1* %_odd3193
  %_bop3198 = and i1 %_id3199, %_id3200
  %_uop3197 = icmp eq i1 0, %_bop3198
  %_id3202 = load i1, i1* %_even3190
  %_id3203 = load i1, i1* %_odd3193
  %_bop3201 = or i1 %_id3202, %_id3203
  %_bop3196 = and i1 %_uop3197, %_bop3201
  br i1 %_bop3196, label %_then3204, label %_else3205
_then3204:
  %_cstr_loc3207 = getelementptr [9 x i8], [9 x i8]* @_cstr_glb3208, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3207)
  br label %_end3206
_else3205:
  br label %_end3206
_end3206:
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
