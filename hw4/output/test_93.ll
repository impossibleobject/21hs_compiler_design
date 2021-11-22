; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3333 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x3370 = alloca i64
  store i64 %x, i64* %_x3370
  %_y3371 = alloca i64
  store i64 %y, i64* %_y3371
  %_id3375 = load i64, i64* %_x3370
  %_id3376 = load i64, i64* %_y3371
  %_bop3374 = and i64 %_id3375, %_id3376
  %_uop3373 = xor i64 %_bop3374, -1
  %_id3378 = load i64, i64* %_x3370
  %_id3379 = load i64, i64* %_y3371
  %_bop3377 = or i64 %_id3378, %_id3379
  %_bop3372 = and i64 %_uop3373, %_bop3377
  ret i64 %_bop3372
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_x3339 = alloca i64
  %_y3343 = alloca i64
  %_s3338 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3338
  %_id3340 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3338
  %_index_ptr3341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3340, i32 0, i32 1, i32 0
  %_idx_tmp3342 = load i64, i64* %_index_ptr3341
  store i64 %_idx_tmp3342, i64* %_x3339
  %_id3344 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3338
  %_index_ptr3345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3344, i32 0, i32 1, i32 1
  %_idx_tmp3346 = load i64, i64* %_index_ptr3345
  store i64 %_idx_tmp3346, i64* %_y3343
  %_id3347 = load i64, i64* %_y3343
  %_id3348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3338
  %_index_ptr3349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3348, i32 0, i32 1, i32 0
  store i64 %_id3347, i64* %_index_ptr3349
  %_id3352 = load i64, i64* %_x3339
  %_bop3351 = shl i64 %_id3352, 23
  %_id3350 = load i64, i64* %_x3339
  %_Call_retval3353 = call i64 @xor(i64 %_id3350, i64 %_bop3351)
  store i64 %_Call_retval3353, i64* %_x3339
  %_id3356 = load i64, i64* %_x3339
  %_bop3355 = lshr i64 %_id3356, 17
  %_id3354 = load i64, i64* %_x3339
  %_Call_retval3357 = call i64 @xor(i64 %_id3354, i64 %_bop3355)
  store i64 %_Call_retval3357, i64* %_x3339
  %_id3361 = load i64, i64* %_y3343
  %_bop3360 = lshr i64 %_id3361, 26
  %_id3359 = load i64, i64* %_y3343
  %_Call_retval3362 = call i64 @xor(i64 %_id3359, i64 %_bop3360)
  %_id3358 = load i64, i64* %_x3339
  %_Call_retval3363 = call i64 @xor(i64 %_id3358, i64 %_Call_retval3362)
  store i64 %_Call_retval3363, i64* %_x3339
  %_id3364 = load i64, i64* %_x3339
  %_id3365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3338
  %_index_ptr3366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3365, i32 0, i32 1, i32 1
  store i64 %_id3364, i64* %_index_ptr3366
  %_id3368 = load i64, i64* %_x3339
  %_id3369 = load i64, i64* %_y3343
  %_bop3367 = add i64 %_id3368, %_id3369
  ret i64 %_bop3367
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_seed3312 = alloca { i64, [0 x i64] }*
  %_i3315 = alloca i64
  %_argc3310 = alloca i64
  store i64 %argc, i64* %_argc3310
  %_argv3311 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3311
  %_raw_array3313 = call i64* @oat_alloc_array(i64 2)
  %_array3314 = bitcast i64* %_raw_array3313 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3314, { i64, [0 x i64] }** %_seed3312
  store i64 0, i64* %_i3315
  br label %_start3318
_start3318:
  %_id3317 = load i64, i64* %_i3315
  %_bop3316 = icmp slt i64 %_id3317, 2
  br i1 %_bop3316, label %_body3319, label %_end3320
_body3319:
  %_id3323 = load i64, i64* %_i3315
  %_bop3322 = add i64 %_id3323, 1
  %_bop3321 = mul i64 100, %_bop3322
  %_id3324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3312
  %_id3325 = load i64, i64* %_i3315
  %_index_ptr3326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3324, i32 0, i32 1, i64 %_id3325
  store i64 %_bop3321, i64* %_index_ptr3326
  %_id3328 = load i64, i64* %_i3315
  %_bop3327 = add i64 %_id3328, 1
  store i64 %_bop3327, i64* %_i3315
  br label %_start3318
_end3320:
  %_id3329 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3312
  %_Call_retval3330 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3329)
  call void @print_int(i64 %_Call_retval3330)
  %_cstr_loc3332 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3333, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3332)
  %_id3335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3312
  %_Call_retval3336 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3335)
  call void @print_int(i64 %_Call_retval3336)
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
