; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_str_arr3485 = global [2 x i8] c" \00"
@_str_arr3491 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3451, { i64, [0 x i8*] }* %_argv3448) {
  %_a3476 = alloca { i64, [0 x i64] }*
  %_i3478 = alloca i64
  %_raw_array3454 = call i64* @oat_alloc_array(i64 10)
  %_array3455 = bitcast i64* %_raw_array3454 to { i64, [0 x i64] }*
  %_ind3456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3456
  %_ind3458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3458
  %_ind3460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3460
  %_ind3462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3462
  %_ind3464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3464
  %_ind3466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3466
  %_ind3468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3468
  %_ind3470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3470
  %_ind3472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3472
  %_ind3474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3455, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3474
  store { i64, [0 x i64] }* %_array3455, { i64, [0 x i64] }** %_a3476
  store i64 0, i64* %_i3478
  %_a3480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3476
  %_result3481 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3480)
  call void @print_string(i8* %_result3481)
  %_a3483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3476
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3483, i64 0, i64 9)
  %_str3486 = getelementptr [2 x i8], [2 x i8]* @_str_arr3485, i32 0, i32 0
  call void @print_string(i8* %_str3486)
  %_a3488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3476
  %_result3489 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3488)
  call void @print_string(i8* %_result3489)
  %_str3492 = getelementptr [2 x i8], [2 x i8]* @_str_arr3491, i32 0, i32 0
  call void @print_string(i8* %_str3492)
  %_i3494 = load i64, i64* %_i3478
  ret i64 %_i3494
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3418, i64 %_low3415, i64 %_high3412) {
  %_a3419 = alloca { i64, [0 x i64] }*
  %_low3416 = alloca i64
  %_high3413 = alloca i64
  %_mid3421 = alloca i64
  store { i64, [0 x i64] }* %_a3418, { i64, [0 x i64] }** %_a3419
  store i64 %_low3415, i64* %_low3416
  store i64 %_high3412, i64* %_high3413
  store i64 0, i64* %_mid3421
  %_low3423 = load i64, i64* %_low3416
  %_high3424 = load i64, i64* %_high3413
  %_bop3425 = icmp slt i64 %_low3423, %_high3424
  br i1 %_bop3425, label %_then3447, label %_else3446
_else3446:
  br label %_merge3445
_merge3445:
  ret void
_then3447:
  %_low3426 = load i64, i64* %_low3416
  %_high3427 = load i64, i64* %_high3413
  %_bop3428 = add i64 %_low3426, %_high3427
  %_bop3429 = lshr i64 %_bop3428, 1
  store i64 %_bop3429, i64* %_mid3421
  %_mid3431 = load i64, i64* %_mid3421
  %_low3432 = load i64, i64* %_low3416
  %_a3433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3419
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3433, i64 %_low3432, i64 %_mid3431)
  %_high3435 = load i64, i64* %_high3413
  %_mid3436 = load i64, i64* %_mid3421
  %_bop3437 = add i64 %_mid3436, 1
  %_a3438 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3419
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3438, i64 %_bop3437, i64 %_high3435)
  %_mid3440 = load i64, i64* %_mid3421
  %_high3441 = load i64, i64* %_high3413
  %_low3442 = load i64, i64* %_low3416
  %_a3443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3419
  call void @merge({ i64, [0 x i64] }* %_a3443, i64 %_low3442, i64 %_high3441, i64 %_mid3440)
  br label %_merge3445
}

define void @merge({ i64, [0 x i64] }* %_a3238, i64 %_low3235, i64 %_high3232, i64 %_mid3229) {
  %_a3239 = alloca { i64, [0 x i64] }*
  %_low3236 = alloca i64
  %_high3233 = alloca i64
  %_mid3230 = alloca i64
  %_i3241 = alloca i64
  %_j3243 = alloca i64
  %_k3245 = alloca i64
  %_i23251 = alloca i64
  %_c3270 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3238, { i64, [0 x i64] }** %_a3239
  store i64 %_low3235, i64* %_low3236
  store i64 %_high3232, i64* %_high3233
  store i64 %_mid3229, i64* %_mid3230
  store i64 0, i64* %_i3241
  store i64 0, i64* %_j3243
  store i64 0, i64* %_k3245
  %_raw_array3249 = call i64* @oat_alloc_array(i64 50)
  %_array3250 = bitcast i64* %_raw_array3249 to { i64, [0 x i64] }*
  %_bnd_3248 = alloca i64
  store i64 50, i64* %_bnd_3248
  %_ptr_3247 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3250, { i64, [0 x i64] }** %_ptr_3247
  store i64 0, i64* %_i23251
  br label %_cond3258
_body3257:
  %__ptr_32473259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_3247
  %_i23260 = load i64, i64* %_i23251
  %_tmp3262 = bitcast { i64, [0 x i64] }* %__ptr_32473259 to i64*
  call void @oat_assert_array_length(i64* %_tmp3262, i64 %_i23260)
  %_index_ptr3263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_32473259, i32 0, i32 1, i64 %_i23260
  store i64 0, i64* %_index_ptr3263
  %_i23265 = load i64, i64* %_i23251
  %_bop3266 = add i64 %_i23265, 1
  store i64 %_bop3266, i64* %_i23251
  br label %_cond3258
_body3287:
  %_a3289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3239
  %_i3290 = load i64, i64* %_i3241
  %_tmp3292 = bitcast { i64, [0 x i64] }* %_a3289 to i64*
  call void @oat_assert_array_length(i64* %_tmp3292, i64 %_i3290)
  %_index_ptr3293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3289, i32 0, i32 1, i64 %_i3290
  %_index3294 = load i64, i64* %_index_ptr3293
  %_a3295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3239
  %_j3296 = load i64, i64* %_j3243
  %_tmp3298 = bitcast { i64, [0 x i64] }* %_a3295 to i64*
  call void @oat_assert_array_length(i64* %_tmp3298, i64 %_j3296)
  %_index_ptr3299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3295, i32 0, i32 1, i64 %_j3296
  %_index3300 = load i64, i64* %_index_ptr3299
  %_bop3301 = icmp slt i64 %_index3294, %_index3300
  br i1 %_bop3301, label %_then3340, label %_else3339
_body3345:
  %_c3347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3270
  %_k3348 = load i64, i64* %_k3245
  %_tmp3350 = bitcast { i64, [0 x i64] }* %_c3347 to i64*
  call void @oat_assert_array_length(i64* %_tmp3350, i64 %_k3348)
  %_index_ptr3351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3347, i32 0, i32 1, i64 %_k3348
  %_a3352 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3239
  %_i3353 = load i64, i64* %_i3241
  %_tmp3355 = bitcast { i64, [0 x i64] }* %_a3352 to i64*
  call void @oat_assert_array_length(i64* %_tmp3355, i64 %_i3353)
  %_index_ptr3356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3352, i32 0, i32 1, i64 %_i3353
  %_index3357 = load i64, i64* %_index_ptr3356
  store i64 %_index3357, i64* %_index_ptr3351
  %_k3359 = load i64, i64* %_k3245
  %_bop3360 = add i64 %_k3359, 1
  store i64 %_bop3360, i64* %_k3245
  %_i3362 = load i64, i64* %_i3241
  %_bop3363 = add i64 %_i3362, 1
  store i64 %_bop3363, i64* %_i3241
  br label %_cond3346
_body3369:
  %_c3371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3270
  %_k3372 = load i64, i64* %_k3245
  %_tmp3374 = bitcast { i64, [0 x i64] }* %_c3371 to i64*
  call void @oat_assert_array_length(i64* %_tmp3374, i64 %_k3372)
  %_index_ptr3375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3371, i32 0, i32 1, i64 %_k3372
  %_a3376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3239
  %_j3377 = load i64, i64* %_j3243
  %_tmp3379 = bitcast { i64, [0 x i64] }* %_a3376 to i64*
  call void @oat_assert_array_length(i64* %_tmp3379, i64 %_j3377)
  %_index_ptr3380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3376, i32 0, i32 1, i64 %_j3377
  %_index3381 = load i64, i64* %_index_ptr3380
  store i64 %_index3381, i64* %_index_ptr3375
  %_k3383 = load i64, i64* %_k3245
  %_bop3384 = add i64 %_k3383, 1
  store i64 %_bop3384, i64* %_k3245
  %_j3386 = load i64, i64* %_j3243
  %_bop3387 = add i64 %_j3386, 1
  store i64 %_bop3387, i64* %_j3243
  br label %_cond3370
_body3395:
  %_a3397 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3239
  %_i3398 = load i64, i64* %_i3241
  %_tmp3400 = bitcast { i64, [0 x i64] }* %_a3397 to i64*
  call void @oat_assert_array_length(i64* %_tmp3400, i64 %_i3398)
  %_index_ptr3401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3397, i32 0, i32 1, i64 %_i3398
  %_c3402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3270
  %_i3403 = load i64, i64* %_i3241
  %_tmp3405 = bitcast { i64, [0 x i64] }* %_c3402 to i64*
  call void @oat_assert_array_length(i64* %_tmp3405, i64 %_i3403)
  %_index_ptr3406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3402, i32 0, i32 1, i64 %_i3403
  %_index3407 = load i64, i64* %_index_ptr3406
  store i64 %_index3407, i64* %_index_ptr3401
  %_i3409 = load i64, i64* %_i3241
  %_bop3410 = add i64 %_i3409, 1
  store i64 %_bop3410, i64* %_i3241
  br label %_cond3396
_cond3258:
  %_i23253 = load i64, i64* %_i23251
  %__bnd_32483254 = load i64, i64* %_bnd_3248
  %_bop3255 = icmp slt i64 %_i23253, %__bnd_32483254
  br i1 %_bop3255, label %_body3257, label %_post3256
_cond3288:
  %_i3279 = load i64, i64* %_i3241
  %_mid3280 = load i64, i64* %_mid3230
  %_bop3281 = icmp sle i64 %_i3279, %_mid3280
  %_j3282 = load i64, i64* %_j3243
  %_high3283 = load i64, i64* %_high3233
  %_bop3284 = icmp sle i64 %_j3282, %_high3283
  %_bop3285 = and i1 %_bop3281, %_bop3284
  br i1 %_bop3285, label %_body3287, label %_post3286
_cond3346:
  %_i3341 = load i64, i64* %_i3241
  %_mid3342 = load i64, i64* %_mid3230
  %_bop3343 = icmp sle i64 %_i3341, %_mid3342
  br i1 %_bop3343, label %_body3345, label %_post3344
_cond3370:
  %_j3365 = load i64, i64* %_j3243
  %_high3366 = load i64, i64* %_high3233
  %_bop3367 = icmp sle i64 %_j3365, %_high3366
  br i1 %_bop3367, label %_body3369, label %_post3368
_cond3396:
  %_i3391 = load i64, i64* %_i3241
  %_k3392 = load i64, i64* %_k3245
  %_bop3393 = icmp slt i64 %_i3391, %_k3392
  br i1 %_bop3393, label %_body3395, label %_post3394
_else3339:
  %_c3320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3270
  %_k3321 = load i64, i64* %_k3245
  %_tmp3323 = bitcast { i64, [0 x i64] }* %_c3320 to i64*
  call void @oat_assert_array_length(i64* %_tmp3323, i64 %_k3321)
  %_index_ptr3324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3320, i32 0, i32 1, i64 %_k3321
  %_a3325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3239
  %_j3326 = load i64, i64* %_j3243
  %_tmp3328 = bitcast { i64, [0 x i64] }* %_a3325 to i64*
  call void @oat_assert_array_length(i64* %_tmp3328, i64 %_j3326)
  %_index_ptr3329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3325, i32 0, i32 1, i64 %_j3326
  %_index3330 = load i64, i64* %_index_ptr3329
  store i64 %_index3330, i64* %_index_ptr3324
  %_k3332 = load i64, i64* %_k3245
  %_bop3333 = add i64 %_k3332, 1
  store i64 %_bop3333, i64* %_k3245
  %_j3335 = load i64, i64* %_j3243
  %_bop3336 = add i64 %_j3335, 1
  store i64 %_bop3336, i64* %_j3243
  br label %_merge3338
_merge3338:
  br label %_cond3288
_post3256:
  store { i64, [0 x i64] }* %_array3250, { i64, [0 x i64] }** %_c3270
  %_low3272 = load i64, i64* %_low3236
  store i64 %_low3272, i64* %_i3241
  %_mid3274 = load i64, i64* %_mid3230
  %_bop3275 = add i64 %_mid3274, 1
  store i64 %_bop3275, i64* %_j3243
  %_low3277 = load i64, i64* %_low3236
  store i64 %_low3277, i64* %_k3245
  br label %_cond3288
_post3286:
  br label %_cond3346
_post3344:
  br label %_cond3370
_post3368:
  %_low3389 = load i64, i64* %_low3236
  store i64 %_low3389, i64* %_i3241
  br label %_cond3396
_post3394:
  ret void
_then3340:
  %_c3302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3270
  %_k3303 = load i64, i64* %_k3245
  %_tmp3305 = bitcast { i64, [0 x i64] }* %_c3302 to i64*
  call void @oat_assert_array_length(i64* %_tmp3305, i64 %_k3303)
  %_index_ptr3306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3302, i32 0, i32 1, i64 %_k3303
  %_a3307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3239
  %_i3308 = load i64, i64* %_i3241
  %_tmp3310 = bitcast { i64, [0 x i64] }* %_a3307 to i64*
  call void @oat_assert_array_length(i64* %_tmp3310, i64 %_i3308)
  %_index_ptr3311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3307, i32 0, i32 1, i64 %_i3308
  %_index3312 = load i64, i64* %_index_ptr3311
  store i64 %_index3312, i64* %_index_ptr3306
  %_k3314 = load i64, i64* %_k3245
  %_bop3315 = add i64 %_k3314, 1
  store i64 %_bop3315, i64* %_k3245
  %_i3317 = load i64, i64* %_i3241
  %_bop3318 = add i64 %_i3317, 1
  store i64 %_bop3318, i64* %_i3241
  br label %_merge3338
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
