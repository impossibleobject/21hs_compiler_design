; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3303 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator3355 = alloca i64
  store i64 %numerator, i64* %_numerator3355
  %_denominator3356 = alloca i64
  store i64 %denominator, i64* %_denominator3356
  %_quotient3368 = alloca i64
  %_remainder3369 = alloca i64
  %_id3358 = load i64, i64* %_denominator3356
  %_bop3357 = icmp slt i64 %_id3358, 0
  br i1 %_bop3357, label %_then3359, label %_else3360
_then3359:
  %_uop3362 = sub i64 0, %_Call_retval3366
  %_id3363 = load i64, i64* %_numerator3355
  %_id3365 = load i64, i64* %_denominator3356
  %_uop3364 = sub i64 0, %_id3365
  %_Call_retval3366 = call i64 @euclid_division(i64 %_id3363, i64 %_uop3364)
  ret i64 %_uop3362
_else3360:
  br label %_end3361
_end3361:
  store i64 0, i64* %_quotient3368
  store i64 %_id3370, i64* %_remainder3369
  %_id3370 = load i64, i64* %_numerator3355
  %_id3372 = load i64, i64* %_numerator3355
  %_bop3371 = icmp slt i64 %_id3372, 0
  br i1 %_bop3371, label %_then3373, label %_else3374
_then3373:
  %_uop3377 = sub i64 0, %_id3378
  %_id3378 = load i64, i64* %_numerator3355
  store i64 %_uop3377, i64* %_remainder3369
  br label %_start3382
_start3382:
  %_id3381 = load i64, i64* %_denominator3356
  %_bop3379 = icmp sge i64 %_uop3377, %_id3381
  br i1 %_bop3379, label %_body3383, label %_end3384
_body3383:
  %_id3387 = load i64, i64* %_quotient3368
  %_bop3386 = add i64 %_id3387, 1
  store i64 %_bop3386, i64* %_quotient3368
  %_id3391 = load i64, i64* %_denominator3356
  %_bop3389 = sub i64 %_uop3377, %_id3391
  store i64 %_bop3389, i64* @remainder
  br label %_start3382
_end3384:
  %_bop3392 = icmp eq i64 %_uop3377, 0
  br i1 %_bop3392, label %_then3394, label %_else3395
_then3394:
  %_uop3397 = sub i64 0, %_id3398
  %_id3398 = load i64, i64* %_quotient3368
  ret i64 %_uop3397
_else3395:
  %_uop3401 = sub i64 0, %_id3402
  %_id3402 = load i64, i64* %_quotient3368
  %_bop3400 = sub i64 %_uop3401, 1
  ret i64 %_bop3400
_end3396:
  br label %_end3375
_else3374:
  br label %_end3375
_end3375:
  br label %_start3407
_start3407:
  %_id3405 = load i64, i64* %_remainder3369
  %_id3406 = load i64, i64* %_denominator3356
  %_bop3404 = icmp sge i64 %_id3405, %_id3406
  br i1 %_bop3404, label %_body3408, label %_end3409
_body3408:
  %_id3412 = load i64, i64* %_quotient3368
  %_bop3411 = add i64 %_id3412, 1
  store i64 %_bop3411, i64* %_quotient3368
  %_id3415 = load i64, i64* %_remainder3369
  %_id3416 = load i64, i64* %_denominator3356
  %_bop3414 = sub i64 %_id3415, %_id3416
  store i64 %_bop3414, i64* %_remainder3369
  br label %_start3407
_end3409:
  %_id3417 = load i64, i64* %_quotient3368
  ret i64 %_id3417
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input3306 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input3306
  %_key3307 = alloca i64
  store i64 %key, i64* %_key3307
  %_min3308 = alloca i64
  store i64 %min, i64* %_min3308
  %_max3309 = alloca i64
  store i64 %max, i64* %_max3309
  %_midpt3317 = alloca i64
  %_id3311 = load i64, i64* %_max3309
  %_id3312 = load i64, i64* %_min3308
  %_bop3310 = icmp slt i64 %_id3311, %_id3312
  br i1 %_bop3310, label %_then3313, label %_else3314
_then3313:
  ret i1 0
_else3314:
  br label %_end3315
_end3315:
  store i64 %_Call_retval3321, i64* %_midpt3317
  %_bop3318 = add i64 %_id3319, %_id3320
  %_id3320 = load i64, i64* %_min3308
  %_id3319 = load i64, i64* %_max3309
  %_Call_retval3321 = call i64 @euclid_division(i64 %_bop3318, i64 2)
  %_id3323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3306
  %_id3324 = load i64, i64* %_midpt3317
  %_index_ptr3325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3323, i32 0, i32 1, i64 %_id3324
  %_3327 = load i64, i64* %_index_ptr3325
  %_id3326 = load i64, i64* %_key3307
  %_bop3322 = icmp sgt i64 %_3327, %_id3326
  br i1 %_bop3322, label %_then3328, label %_else3329
_then3328:
  %_id3331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3306
  %_id3332 = load i64, i64* %_key3307
  %_id3333 = load i64, i64* %_min3308
  %_bop3334 = sub i64 %_id3335, 1
  %_id3335 = load i64, i64* %_midpt3317
  %_Call_retval3336 = call i1 @binary_search({ i64, [0 x i64] }* %_id3331, i64 %_id3332, i64 %_id3333, i64 %_bop3334)
  ret i1 %_Call_retval3336
_else3329:
  br label %_end3330
_end3330:
  %_id3339 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3306
  %_id3340 = load i64, i64* %_midpt3317
  %_index_ptr3341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3339, i32 0, i32 1, i64 %_id3340
  %_3343 = load i64, i64* %_index_ptr3341
  %_id3342 = load i64, i64* %_key3307
  %_bop3338 = icmp slt i64 %_3343, %_id3342
  br i1 %_bop3338, label %_then3344, label %_else3345
_then3344:
  %_id3347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3306
  %_id3348 = load i64, i64* %_key3307
  %_bop3349 = add i64 %_id3350, 1
  %_id3350 = load i64, i64* %_midpt3317
  %_id3351 = load i64, i64* %_max3309
  %_Call_retval3352 = call i1 @binary_search({ i64, [0 x i64] }* %_id3347, i64 %_id3348, i64 %_bop3349, i64 %_id3351)
  ret i1 %_Call_retval3352
_else3345:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3265 = alloca i64
  store i64 %argc, i64* %_argc3265
  %_argv3266 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3266
  %_test_array3267 = alloca { i64, [0 x i64] }*
  %_i3270 = alloca i64
  %_even3285 = alloca i1
  %_odd3288 = alloca i1
  store { i64, [0 x i64] }* %_array3269, { i64, [0 x i64] }** %_test_array3267
  %_raw_array3268 = call i64* @oat_alloc_array(i64 100)
  %_array3269 = bitcast i64* %_raw_array3268 to { i64, [0 x i64] }*
  store i64 0, i64* %_i3270
  br label %_start3273
_start3273:
  %_id3272 = load i64, i64* %_i3270
  %_bop3271 = icmp slt i64 %_id3272, 100
  br i1 %_bop3271, label %_body3274, label %_end3275
_body3274:
  %_id3276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3267
  %_id3277 = load i64, i64* %_i3270
  %_index_ptr3278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3276, i32 0, i32 1, i64 %_id3277
  %_id3281 = load i64, i64* %_i3270
  %_bop3280 = mul i64 2, %_id3281
  %_bop3279 = add i64 %_bop3280, 1
  store i64 %_bop3279, i64* %_index_ptr3278
  %_id3284 = load i64, i64* %_i3270
  %_bop3283 = add i64 %_id3284, 1
  store i64 %_bop3283, i64* %_i3270
  br label %_start3273
_end3275:
  store i1 %_Call_retval3287, i1* %_even3285
  %_id3286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3267
  %_Call_retval3287 = call i1 @binary_search({ i64, [0 x i64] }* %_id3286, i64 80, i64 0, i64 99)
  store i1 %_Call_retval3290, i1* %_odd3288
  %_id3289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3267
  %_Call_retval3290 = call i1 @binary_search({ i64, [0 x i64] }* %_id3289, i64 81, i64 0, i64 99)
  %_uop3292 = icmp eq i1 0, %_bop3293
  %_id3294 = load i1, i1* %_even3285
  %_id3295 = load i1, i1* %_odd3288
  %_bop3293 = and i1 %_id3294, %_id3295
  %_id3297 = load i1, i1* %_even3285
  %_id3298 = load i1, i1* %_odd3288
  %_bop3296 = or i1 %_id3297, %_id3298
  %_bop3291 = and i1 %_uop3292, %_bop3296
  br i1 %_bop3291, label %_then3299, label %_else3300
_then3299:
  %_cstr_loc3302 = getelementptr [9 x i8], [9 x i8]* @_cstr_glb3303, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3302)
  br label %_end3301
_else3300:
  br label %_end3301
_end3301:
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
