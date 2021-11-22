; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3330 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x3367 = alloca i64
  store i64 %x, i64* %_x3367
  %_y3368 = alloca i64
  store i64 %y, i64* %_y3368
  %_id3372 = load i64, i64* %_x3367
  %_id3373 = load i64, i64* %_y3368
  %_bop3371 = and i64 %_id3372, %_id3373
  %_uop3370 = xor i64 %_bop3371, -1
  %_id3375 = load i64, i64* %_x3367
  %_id3376 = load i64, i64* %_y3368
  %_bop3374 = or i64 %_id3375, %_id3376
  %_bop3369 = and i64 %_uop3370, %_bop3374
  ret i64 %_bop3369
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_x3336 = alloca i64
  %_y3340 = alloca i64
  %_s3335 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3335
  %_id3337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3335
  %_index_ptr3338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3337, i32 0, i32 1, i32 0
  %_idx_tmp3339 = load i64, i64* %_index_ptr3338
  store i64 %_idx_tmp3339, i64* %_x3336
  %_id3341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3335
  %_index_ptr3342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3341, i32 0, i32 1, i32 1
  %_idx_tmp3343 = load i64, i64* %_index_ptr3342
  store i64 %_idx_tmp3343, i64* %_y3340
  %_id3344 = load i64, i64* %_y3340
  %_id3345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3335
  %_index_ptr3346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3345, i32 0, i32 1, i32 0
  store i64 %_id3344, i64* %_index_ptr3346
  %_id3347 = load i64, i64* %_x3336
  %_bop3348 = shl i64 %_id3349, 23
  %_id3349 = load i64, i64* %_x3336
  %_Call_retval3350 = call i64 @xor(i64 %_id3347, i64 %_bop3348)
  store i64 %_Call_retval3350, i64* %_x3336
  %_id3351 = load i64, i64* %_x3336
  %_bop3352 = lshr i64 %_id3353, 17
  %_id3353 = load i64, i64* %_x3336
  %_Call_retval3354 = call i64 @xor(i64 %_id3351, i64 %_bop3352)
  store i64 %_Call_retval3354, i64* %_x3336
  %_id3355 = load i64, i64* %_x3336
  %_Call_retval3359 = call i64 @xor(i64 %_id3356, i64 %_bop3357)
  %_id3358 = load i64, i64* %_y3340
  %_bop3357 = lshr i64 %_id3358, 26
  %_id3356 = load i64, i64* %_y3340
  %_Call_retval3360 = call i64 @xor(i64 %_id3355, i64 %_Call_retval3359)
  store i64 %_Call_retval3360, i64* %_x3336
  %_id3361 = load i64, i64* %_x3336
  %_id3362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3335
  %_index_ptr3363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3362, i32 0, i32 1, i32 1
  store i64 %_id3361, i64* %_index_ptr3363
  %_id3365 = load i64, i64* %_x3336
  %_id3366 = load i64, i64* %_y3340
  %_bop3364 = add i64 %_id3365, %_id3366
  ret i64 %_bop3364
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_seed3309 = alloca { i64, [0 x i64] }*
  %_i3312 = alloca i64
  %_argc3307 = alloca i64
  store i64 %argc, i64* %_argc3307
  %_argv3308 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3308
  %_raw_array3310 = call i64* @oat_alloc_array(i64 2)
  %_array3311 = bitcast i64* %_raw_array3310 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3311, { i64, [0 x i64] }** %_seed3309
  store i64 0, i64* %_i3312
  br label %_start3315
_start3315:
  %_id3314 = load i64, i64* %_i3312
  %_bop3313 = icmp slt i64 %_id3314, 2
  br i1 %_bop3313, label %_body3316, label %_end3317
_body3316:
  %_id3320 = load i64, i64* %_i3312
  %_bop3319 = add i64 %_id3320, 1
  %_bop3318 = mul i64 100, %_bop3319
  %_id3321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3309
  %_id3322 = load i64, i64* %_i3312
  %_index_ptr3323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3321, i32 0, i32 1, i64 %_id3322
  store i64 %_bop3318, i64* %_index_ptr3323
  %_id3325 = load i64, i64* %_i3312
  %_bop3324 = add i64 %_id3325, 1
  store i64 %_bop3324, i64* %_i3312
  br label %_start3315
_end3317:
  %_Call_retval3327 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3326)
  %_id3326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3309
  call void @print_int(i64 %_Call_retval3327)
  %_cstr_loc3329 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3330, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3329)
  %_Call_retval3333 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3332)
  %_id3332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3309
  call void @print_int(i64 %_Call_retval3333)
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
