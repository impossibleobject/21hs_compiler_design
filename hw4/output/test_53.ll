; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3343 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x3380 = alloca i64
  store i64 %x, i64* %_x3380
  %_y3381 = alloca i64
  store i64 %y, i64* %_y3381
  %_id3385 = load i64*, i64** %_x3380
  %_id3386 = load i64*, i64** %_y3381
  %_bop3384 = and i64 %_id3385, %_id3386
  %_uop3383 = xor i64 -1, %_bop3384
  %_id3388 = load i64*, i64** %_x3380
  %_id3389 = load i64*, i64** %_y3381
  %_bop3387 = or i64 %_id3388, %_id3389
  %_bop3382 = and i64 %_uop3383, %_bop3387
  ret i64 %_bop3382
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s3348 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3348
  %_x3349 = alloca i64
  %_y3353 = alloca i64
  %_id3350 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_s3348
  %_index_ptr3351 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id3350, i32 0, i32 0, i32 1, i32 0
  %_idx_tmp3352 = load i64, i64* %_index_ptr3351
  store i64 %_idx_tmp3352, i64* %_x3349
  %_id3354 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_s3348
  %_index_ptr3355 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id3354, i32 0, i32 0, i32 1, i32 1
  %_idx_tmp3356 = load i64, i64* %_index_ptr3355
  store i64 %_idx_tmp3356, i64* %_y3353
  %_id3357 = load i64, i64* %_y3353
  %_id3358 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_s3348
  %_index_ptr3359 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id3358, i32 0, i32 0, i32 1, i32 0
  store i64 %_id3357, i64* %_index_ptr3359
  %_id3360 = load i64, i64* %_x3349
  %_bop3361 = shl i64 %_id3362, 23
  %_id3362 = load i64, i64* %_x3349
  %_Call_retval3363 = call i64 @xor(i64 %_id3360, i64 %_bop3361)
  store i64 %_Call_retval3363, i64* %_x3349
  %_id3364 = load i64, i64* %_x3349
  %_bop3365 = lshr i64 %_id3366, 17
  %_id3366 = load i64, i64* %_x3349
  %_Call_retval3367 = call i64 @xor(i64 %_id3364, i64 %_bop3365)
  store i64 %_Call_retval3367, i64* %_x3349
  %_id3368 = load i64, i64* %_x3349
  %_Call_retval3372 = call i64 @xor(i64 %_id3369, i64 %_bop3370)
  %_id3371 = load i64, i64* %_y3353
  %_bop3370 = lshr i64 %_id3371, 26
  %_id3369 = load i64, i64* %_y3353
  %_Call_retval3373 = call i64 @xor(i64 %_id3368, i64 %_Call_retval3372)
  store i64 %_Call_retval3373, i64* %_x3349
  %_id3374 = load i64, i64* %_x3349
  %_id3375 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_s3348
  %_index_ptr3376 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id3375, i32 0, i32 0, i32 1, i32 1
  store i64 %_id3374, i64* %_index_ptr3376
  %_id3378 = load i64, i64* %_x3349
  %_id3379 = load i64, i64* %_y3353
  %_bop3377 = add i64 %_id3378, %_id3379
  ret i64 %_bop3377
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3320 = alloca i64
  store i64 %argc, i64* %_argc3320
  %_argv3321 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3321
  %_seed3322 = alloca { i64, [0 x i64] }*
  %_i3325 = alloca i64
  %_raw_array3323 = call i64* @oat_alloc_array(i64 2)
  %_array3324 = bitcast i64* %_raw_array3323 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3324, { i64, [0 x i64] }** %_seed3322
  store i64 0, i64* %_i3325
  br label %_start3328
_start3328:
  %_id3327 = load i64, i64* %_i3325
  %_bop3326 = icmp slt i64 %_id3327, 2
  br i1 %_bop3326, label %_body3329, label %_end3330
_body3329:
  %_id3333 = load i64, i64* %_i3325
  %_bop3332 = add i64 %_id3333, 1
  %_bop3331 = mul i64 100, %_bop3332
  %_id3334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3322
  %_id3335 = load i64, i64* %_i3325
  %_index_ptr3336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3334, i32 0, i32 1, i64 %_id3335
  store i64 %_bop3331, i64* %_index_ptr3336
  %_id3338 = load i64, i64* %_i3325
  %_bop3337 = add i64 %_id3338, 1
  store i64 %_bop3337, i64* %_i3325
  br label %_start3328
_end3330:
  %_Call_retval3340 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3339)
  %_id3339 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3322
  call void @print_int(i64 %_Call_retval3340)
  %_cstr_loc3342 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3343, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3342)
  %_Call_retval3346 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3345)
  %_id3345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3322
  call void @print_int(i64 %_Call_retval3346)
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
