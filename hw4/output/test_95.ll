; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3287 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %min = alloca i64
  %i = alloca i64
  %_arr3403 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3403
  %_len3404 = alloca i64
  store i64 %len, i64* %_len3404
  %_id3405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3403
  %_index_ptr3406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3405, i32 0, i32 1, i32 0
  %_idx_tmp3407 = load i64, i64* %_index_ptr3406
  store i64 %_idx_tmp3407, i64* %min
  store i64 0, i64* %i
  br label %_start3411
_start3411:
  %_id3409 = load i64, i64* %i
  %_id3410 = load i64, i64* %_len3404
  %_bop3408 = icmp slt i64 %_id3409, %_id3410
  br i1 %_bop3408, label %_body3412, label %_end3413
_body3412:
  %_id3415 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3403
  %_id3416 = load i64, i64* %i
  %_index_ptr3417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3415, i32 0, i32 1, i64 %_id3416
  %_idx_tmp3419 = load i64, i64* %_index_ptr3417
  %_id3418 = load i64, i64* %min
  %_bop3414 = icmp slt i64 %_idx_tmp3419, %_id3418
  br i1 %_bop3414, label %_then3420, label %_else3421
_then3420:
  %_id3423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3403
  %_id3424 = load i64, i64* %i
  %_index_ptr3425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3423, i32 0, i32 1, i64 %_id3424
  %_idx_tmp3426 = load i64, i64* %_index_ptr3425
  store i64 %_idx_tmp3426, i64* %min
  br label %_end3422
_else3421:
  br label %_end3422
_end3422:
  %_id3428 = load i64, i64* %i
  %_bop3427 = add i64 %_id3428, 1
  store i64 %_bop3427, i64* %i
  br label %_start3411
_end3413:
  %_id3429 = load i64, i64* %min
  ret i64 %_id3429
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %max = alloca i64
  %i = alloca i64
  %_arr3376 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3376
  %_len3377 = alloca i64
  store i64 %len, i64* %_len3377
  %_id3378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3376
  %_index_ptr3379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3378, i32 0, i32 1, i32 0
  %_idx_tmp3380 = load i64, i64* %_index_ptr3379
  store i64 %_idx_tmp3380, i64* %max
  store i64 0, i64* %i
  br label %_start3384
_start3384:
  %_id3382 = load i64, i64* %i
  %_id3383 = load i64, i64* %_len3377
  %_bop3381 = icmp slt i64 %_id3382, %_id3383
  br i1 %_bop3381, label %_body3385, label %_end3386
_body3385:
  %_id3388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3376
  %_id3389 = load i64, i64* %i
  %_index_ptr3390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3388, i32 0, i32 1, i64 %_id3389
  %_idx_tmp3392 = load i64, i64* %_index_ptr3390
  %_id3391 = load i64, i64* %max
  %_bop3387 = icmp sgt i64 %_idx_tmp3392, %_id3391
  br i1 %_bop3387, label %_then3393, label %_else3394
_then3393:
  %_id3396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3376
  %_id3397 = load i64, i64* %i
  %_index_ptr3398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3396, i32 0, i32 1, i64 %_id3397
  %_idx_tmp3399 = load i64, i64* %_index_ptr3398
  store i64 %_idx_tmp3399, i64* %max
  br label %_end3395
_else3394:
  br label %_end3395
_end3395:
  %_id3401 = load i64, i64* %i
  %_bop3400 = add i64 %_id3401, 1
  store i64 %_bop3400, i64* %i
  br label %_start3384
_end3386:
  %_id3402 = load i64, i64* %max
  ret i64 %_id3402
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %min = alloca i64
  %max = alloca i64
  %counts = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %i = alloca i64
  %j = alloca i64
  %out = alloca { i64, [0 x i64] }*
  %_arr3295 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3295
  %_len3296 = alloca i64
  store i64 %len, i64* %_len3296
  %_id3297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3295
  %_id3298 = load i64, i64* %_len3296
  %_Call_retval3299 = call i64 @min({ i64, [0 x i64] }* %_id3297, i64 %_id3298)
  store i64 %_Call_retval3299, i64* %min
  %_id3300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3295
  %_id3301 = load i64, i64* %_len3296
  %_Call_retval3302 = call i64 @max({ i64, [0 x i64] }* %_id3300, i64 %_id3301)
  store i64 %_Call_retval3302, i64* %max
  %_id3305 = load i64, i64* %max
  %_id3306 = load i64, i64* %min
  %_bop3304 = sub i64 %_id3305, %_id3306
  %_bop3303 = add i64 %_bop3304, 1
  %_raw_array3307 = call i64* @oat_alloc_array(i64 %_bop3303)
  %_array3308 = bitcast i64* %_raw_array3307 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3308, { i64, [0 x i64] }** %counts
  store i64 0, i64* %i
  br label %_start3312
_start3312:
  %_id3310 = load i64, i64* %i
  %_id3311 = load i64, i64* %_len3296
  %_bop3309 = icmp slt i64 %_id3310, %_id3311
  br i1 %_bop3309, label %_body3313, label %_end3314
_body3313:
  %_id3316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_id3318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3295
  %_id3319 = load i64, i64* %i
  %_index_ptr3320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3318, i32 0, i32 1, i64 %_id3319
  %_idx_tmp3322 = load i64, i64* %_index_ptr3320
  %_id3321 = load i64, i64* %min
  %_bop3317 = sub i64 %_idx_tmp3322, %_id3321
  %_index_ptr3323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3316, i32 0, i32 1, i64 %_bop3317
  %_idx_tmp3324 = load i64, i64* %_index_ptr3323
  %_bop3315 = add i64 %_idx_tmp3324, 1
  %_id3325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_id3327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3295
  %_id3328 = load i64, i64* %i
  %_index_ptr3329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3327, i32 0, i32 1, i64 %_id3328
  %_idx_tmp3331 = load i64, i64* %_index_ptr3329
  %_id3330 = load i64, i64* %min
  %_bop3326 = sub i64 %_idx_tmp3331, %_id3330
  %_index_ptr3332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3325, i32 0, i32 1, i64 %_bop3326
  store i64 %_bop3315, i64* %_index_ptr3332
  %_id3334 = load i64, i64* %i
  %_bop3333 = add i64 %_id3334, 1
  store i64 %_bop3333, i64* %i
  br label %_start3312
_end3314:
  %_id3335 = load i64, i64* %min
  store i64 %_id3335, i64* %i
  store i64 0, i64* %j
  %_id3336 = load i64, i64* %_len3296
  %_raw_array3337 = call i64* @oat_alloc_array(i64 %_id3336)
  %_array3338 = bitcast i64* %_raw_array3337 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3338, { i64, [0 x i64] }** %out
  br label %_start3342
_start3342:
  %_id3340 = load i64, i64* %i
  %_id3341 = load i64, i64* %max
  %_bop3339 = icmp sle i64 %_id3340, %_id3341
  br i1 %_bop3339, label %_body3343, label %_end3344
_body3343:
  %_id3346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_id3348 = load i64, i64* %i
  %_id3349 = load i64, i64* %min
  %_bop3347 = sub i64 %_id3348, %_id3349
  %_index_ptr3350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3346, i32 0, i32 1, i64 %_bop3347
  %_idx_tmp3351 = load i64, i64* %_index_ptr3350
  %_bop3345 = icmp sgt i64 %_idx_tmp3351, 0
  br i1 %_bop3345, label %_then3352, label %_else3353
_then3352:
  %_id3355 = load i64, i64* %i
  %_id3356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_id3357 = load i64, i64* %j
  %_index_ptr3358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3356, i32 0, i32 1, i64 %_id3357
  store i64 %_id3355, i64* %_index_ptr3358
  %_id3360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_id3362 = load i64, i64* %i
  %_id3363 = load i64, i64* %min
  %_bop3361 = sub i64 %_id3362, %_id3363
  %_index_ptr3364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3360, i32 0, i32 1, i64 %_bop3361
  %_idx_tmp3365 = load i64, i64* %_index_ptr3364
  %_bop3359 = sub i64 %_idx_tmp3365, 1
  %_id3366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %counts
  %_id3368 = load i64, i64* %i
  %_id3369 = load i64, i64* %min
  %_bop3367 = sub i64 %_id3368, %_id3369
  %_index_ptr3370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3366, i32 0, i32 1, i64 %_bop3367
  store i64 %_bop3359, i64* %_index_ptr3370
  %_id3372 = load i64, i64* %j
  %_bop3371 = add i64 %_id3372, 1
  store i64 %_bop3371, i64* %j
  br label %_end3354
_else3353:
  %_id3374 = load i64, i64* %i
  %_bop3373 = add i64 %_id3374, 1
  store i64 %_bop3373, i64* %i
  br label %_end3354
_end3354:
  br label %_start3342
_end3344:
  %_id3375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  ret { i64, [0 x i64] }* %_id3375
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr = alloca { i64, [0 x i64] }*
  %len = alloca i64
  %sorted = alloca { i64, [0 x i64] }*
  %_argc3270 = alloca i64
  store i64 %argc, i64* %_argc3270
  %_argv3271 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3271
  %_raw_array3272 = call i64* @oat_alloc_array(i64 9)
  %_array3273 = bitcast i64* %_raw_array3272 to { i64, [0 x i64] }*
  %_CArr_elem_83282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3273, i32 0, i32 1, i32 8
  store i64 67, i64* %_CArr_elem_83282
  %_CArr_elem_73281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3273, i32 0, i32 1, i32 7
  store i64 89, i64* %_CArr_elem_73281
  %_CArr_elem_63280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3273, i32 0, i32 1, i32 6
  store i64 69, i64* %_CArr_elem_63280
  %_CArr_elem_53279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3273, i32 0, i32 1, i32 5
  store i64 65, i64* %_CArr_elem_53279
  %_CArr_elem_43278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3273, i32 0, i32 1, i32 4
  store i64 65, i64* %_CArr_elem_43278
  %_CArr_elem_33277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3273, i32 0, i32 1, i32 3
  store i64 90, i64* %_CArr_elem_33277
  %_CArr_elem_23276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3273, i32 0, i32 1, i32 2
  store i64 72, i64* %_CArr_elem_23276
  %_CArr_elem_13275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3273, i32 0, i32 1, i32 1
  store i64 70, i64* %_CArr_elem_13275
  %_CArr_elem_03274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3273, i32 0, i32 1, i32 0
  store i64 65, i64* %_CArr_elem_03274
  store { i64, [0 x i64] }* %_array3273, { i64, [0 x i64] }** %arr
  store i64 9, i64* %len
  %_Call_retval3284 = call i8* @string_of_array({ i64, [0 x i64] }* %_id3283)
  %_id3283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  call void @print_string(i8* %_Call_retval3284)
  %_cstr_loc3286 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3287, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3286)
  %_id3289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_id3290 = load i64, i64* %len
  %_Call_retval3291 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_id3289, i64 %_id3290)
  store { i64, [0 x i64] }* %_Call_retval3291, { i64, [0 x i64] }** %sorted
  %_Call_retval3293 = call i8* @string_of_array({ i64, [0 x i64] }* %_id3292)
  %_id3292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %sorted
  call void @print_string(i8* %_Call_retval3293)
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
