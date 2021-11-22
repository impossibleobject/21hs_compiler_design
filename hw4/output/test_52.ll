; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3218 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator3265 = alloca i64
  store i64 %numerator, i64* %_numerator3265
  %_denominator3266 = alloca i64
  store i64 %denominator, i64* %_denominator3266
  %_quotient3277 = alloca i64
  %_remainder3278 = alloca i64*
  %_id3268 = load i64*, i64** %_denominator3266
  %_bop3267 = icmp slt i64 %_id3268, 0
  br i1 %_bop3267, label %_then3269, label %_else3270
_then3269:
  %_id3273 = load i64*, i64** %_numerator3265
  %_uop3274 = sub i64* 0, %_id3275
  %_id3275 = load i64*, i64** %_denominator3266
  %_Call_retval3276 = call i64 @euclid_division(i64* %_id3273, i64* %_uop3274)
  %_uop3272 = sub i64 0, %_Call_retval3276
  ret i64 %_uop3272
_else3270:
  br label %_end3271
_end3271:
  store i64 0, i64* %_quotient3277
  %_id3279 = load i64*, i64** %_numerator3265
  store i64* %_id3279, i64** %_remainder3278
  %_id3281 = load i64*, i64** %_numerator3265
  %_bop3280 = icmp slt i64 %_id3281, 0
  br i1 %_bop3280, label %_then3282, label %_else3283
_then3282:
  %_id3286 = load i64*, i64** %_numerator3265
  %_uop3285 = sub i64* 0, %_id3286
  store i64* %_uop3285, i64** %_remainder3278
  br label %_start3290
_start3290:
  %_id3288 = load i64*, i64** %_remainder3278
  %_id3289 = load i64*, i64** %_denominator3266
  %_bop3287 = icmp sge i64 %_id3288, %_id3289
  br i1 %_bop3287, label %_body3291, label %_end3292
_body3291:
  %_id3294 = load i64, i64* %_quotient3277
  %_bop3293 = add i64 %_id3294, 1
  store i64 %_bop3293, i64* %_quotient3277
  %_id3296 = load i64*, i64** %_remainder3278
  %_id3297 = load i64*, i64** %_denominator3266
  %_bop3295 = sub i64 %_id3296, %_id3297
  store i64 %_bop3295, i64* %_remainder3278
  br label %_start3290
_end3292:
  %_id3299 = load i64*, i64** %_remainder3278
  %_bop3298 = icmp eq i64 %_id3299, 0
  br i1 %_bop3298, label %_then3300, label %_else3301
_then3300:
  %_id3304 = load i64, i64* %_quotient3277
  %_uop3303 = sub i64 0, %_id3304
  ret i64 %_uop3303
_else3301:
  %_id3307 = load i64, i64* %_quotient3277
  %_uop3306 = sub i64 0, %_id3307
  %_bop3305 = sub i64 %_uop3306, 1
  ret i64 %_bop3305
_end3302:
  br label %_end3284
_else3283:
  br label %_end3284
_end3284:
  br label %_start3311
_start3311:
  %_id3309 = load i64*, i64** %_remainder3278
  %_id3310 = load i64*, i64** %_denominator3266
  %_bop3308 = icmp sge i64 %_id3309, %_id3310
  br i1 %_bop3308, label %_body3312, label %_end3313
_body3312:
  %_id3315 = load i64, i64* %_quotient3277
  %_bop3314 = add i64 %_id3315, 1
  store i64 %_bop3314, i64* %_quotient3277
  %_id3317 = load i64*, i64** %_remainder3278
  %_id3318 = load i64*, i64** %_denominator3266
  %_bop3316 = sub i64 %_id3317, %_id3318
  store i64 %_bop3316, i64* %_remainder3278
  br label %_start3311
_end3313:
  %_id3319 = load i64, i64* %_quotient3277
  ret i64 %_id3319
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input3220 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3220
  %_key3221 = alloca i64
  store i64 %key, i64* %_key3221
  %_min3222 = alloca i64
  store i64 %min, i64* %_min3222
  %_max3223 = alloca i64
  store i64 %max, i64* %_max3223
  %_midpt3230 = alloca i64
  %_id3225 = load i64*, i64** %_max3223
  %_id3226 = load i64*, i64** %_min3222
  %_bop3224 = icmp slt i64 %_id3225, %_id3226
  br i1 %_bop3224, label %_then3227, label %_else3228
_then3227:
  ret i1 0
_else3228:
  br label %_end3229
_end3229:
  %_bop3231 = add i64 %_id3232, %_id3233
  %_id3233 = load i64*, i64** %_min3222
  %_id3232 = load i64*, i64** %_max3223
  %_Call_retval3234 = call i64 @euclid_division(i64 %_bop3231, i64 2)
  store i64 %_Call_retval3234, i64* %_midpt3230
  %_id3236 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_input3220
  %_id3237 = load i64, i64* %_midpt3230
  %_index_ptr3238 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id3236, i32 0, i32 0, i32 1, i64 %_id3237
  %_idx_tmp3240 = load i64, i64* %_index_ptr3238
  %_id3239 = load i64*, i64** %_key3221
  %_bop3235 = icmp sgt i64 %_idx_tmp3240, %_id3239
  br i1 %_bop3235, label %_then3241, label %_else3242
_then3241:
  %_id3244 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_input3220
  %_id3245 = load i64*, i64** %_key3221
  %_id3246 = load i64*, i64** %_min3222
  %_bop3247 = sub i64 %_id3248, 1
  %_id3248 = load i64, i64* %_midpt3230
  %_Call_retval3249 = call i1 @binary_search({ i64, [0 x i64] }** %_id3244, i64* %_id3245, i64* %_id3246, i64 %_bop3247)
  ret i1 %_Call_retval3249
_else3242:
  br label %_end3243
_end3243:
  %_id3251 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_input3220
  %_id3252 = load i64, i64* %_midpt3230
  %_index_ptr3253 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id3251, i32 0, i32 0, i32 1, i64 %_id3252
  %_idx_tmp3255 = load i64, i64* %_index_ptr3253
  %_id3254 = load i64*, i64** %_key3221
  %_bop3250 = icmp slt i64 %_idx_tmp3255, %_id3254
  br i1 %_bop3250, label %_then3256, label %_else3257
_then3256:
  %_id3259 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_input3220
  %_id3260 = load i64*, i64** %_key3221
  %_bop3261 = add i64 %_id3262, 1
  %_id3262 = load i64, i64* %_midpt3230
  %_id3263 = load i64*, i64** %_max3223
  %_Call_retval3264 = call i1 @binary_search({ i64, [0 x i64] }** %_id3259, i64* %_id3260, i64 %_bop3261, i64* %_id3263)
  ret i1 %_Call_retval3264
_else3257:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3181 = alloca i64
  store i64 %argc, i64* %_argc3181
  %_argv3182 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3182
  %_test_array3183 = alloca { i64, [0 x i64] }*
  %_i3186 = alloca i64
  %_even3200 = alloca i1
  %_odd3203 = alloca i1
  %_raw_array3184 = call i64* @oat_alloc_array(i64 100)
  %_array3185 = bitcast i64* %_raw_array3184 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3185, { i64, [0 x i64] }** %_test_array3183
  store i64 0, i64* %_i3186
  br label %_start3189
_start3189:
  %_id3188 = load i64, i64* %_i3186
  %_bop3187 = icmp slt i64 %_id3188, 100
  br i1 %_bop3187, label %_body3190, label %_end3191
_body3190:
  %_id3194 = load i64, i64* %_i3186
  %_bop3193 = mul i64 2, %_id3194
  %_bop3192 = add i64 %_bop3193, 1
  %_id3195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3183
  %_id3196 = load i64, i64* %_i3186
  %_index_ptr3197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3195, i32 0, i32 1, i64 %_id3196
  store i64 %_bop3192, i64* %_index_ptr3197
  %_id3199 = load i64, i64* %_i3186
  %_bop3198 = add i64 %_id3199, 1
  store i64 %_bop3198, i64* %_i3186
  br label %_start3189
_end3191:
  %_id3201 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3183
  %_Call_retval3202 = call i1 @binary_search({ i64, [0 x i64] }* %_id3201, i64 80, i64 0, i64 99)
  store i1 %_Call_retval3202, i1* %_even3200
  %_id3204 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3183
  %_Call_retval3205 = call i1 @binary_search({ i64, [0 x i64] }* %_id3204, i64 81, i64 0, i64 99)
  store i1 %_Call_retval3205, i1* %_odd3203
  %_id3209 = load i1, i1* %_even3200
  %_id3210 = load i1, i1* %_odd3203
  %_bop3208 = and i1 %_id3209, %_id3210
  %_uop3207 = icmp eq i1 0, %_bop3208
  %_id3212 = load i1, i1* %_even3200
  %_id3213 = load i1, i1* %_odd3203
  %_bop3211 = or i1 %_id3212, %_id3213
  %_bop3206 = and i1 %_uop3207, %_bop3211
  br i1 %_bop3206, label %_then3214, label %_else3215
_then3214:
  %_cstr_loc3217 = getelementptr [9 x i8], [9 x i8]* @_cstr_glb3218, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3217)
  br label %_end3216
_else3215:
  br label %_end3216
_end3216:
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
