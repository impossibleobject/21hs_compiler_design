; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_arr3383 = alloca { i64, [0 x i1] }*
  %_i3387 = alloca i64
  %_i3403 = alloca i64
  %_j3417 = alloca i64
  %_count3434 = alloca i64
  %_i3435 = alloca i64
  %_n3382 = alloca i64
  store i64 %n, i64* %_n3382
  %_id3384 = load i64, i64* %_n3382
  %_raw_array3385 = call i64* @oat_alloc_array(i64 %_id3384)
  %_array3386 = bitcast i64* %_raw_array3385 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3386, { i64, [0 x i1] }** %_arr3383
  store i64 0, i64* %_i3387
  br label %_start3391
_start3391:
  %_id3389 = load i64, i64* %_i3387
  %_id3390 = load i64, i64* %_n3382
  %_bop3388 = icmp slt i64 %_id3389, %_id3390
  br i1 %_bop3388, label %_body3392, label %_end3393
_body3392:
  %_id3394 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3383
  %_id3395 = load i64, i64* %_i3387
  %_index_ptr3396 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3394, i32 0, i32 1, i64 %_id3395
  store i1 1, i1* %_index_ptr3396
  %_id3398 = load i64, i64* %_i3387
  %_bop3397 = add i64 %_id3398, 1
  store i64 %_bop3397, i64* %_i3387
  br label %_start3391
_end3393:
  %_id3399 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3383
  %_index_ptr3400 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3399, i32 0, i32 1, i32 0
  store i1 0, i1* %_index_ptr3400
  %_id3401 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3383
  %_index_ptr3402 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3401, i32 0, i32 1, i32 1
  store i1 0, i1* %_index_ptr3402
  store i64 0, i64* %_i3403
  br label %_start3407
_start3407:
  %_id3405 = load i64, i64* %_i3403
  %_id3406 = load i64, i64* %_n3382
  %_bop3404 = icmp slt i64 %_id3405, %_id3406
  br i1 %_bop3404, label %_body3408, label %_end3409
_body3408:
  %_id3410 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3383
  %_id3411 = load i64, i64* %_i3403
  %_index_ptr3412 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3410, i32 0, i32 1, i64 %_id3411
  %_idx_tmp3413 = load i1, i1* %_index_ptr3412
  br i1 %_idx_tmp3413, label %_then3414, label %_else3415
_then3414:
  %_id3419 = load i64, i64* %_i3403
  %_bop3418 = mul i64 %_id3419, 2
  store i64 %_bop3418, i64* %_j3417
  br label %_start3423
_start3423:
  %_id3421 = load i64, i64* %_j3417
  %_id3422 = load i64, i64* %_n3382
  %_bop3420 = icmp slt i64 %_id3421, %_id3422
  br i1 %_bop3420, label %_body3424, label %_end3425
_body3424:
  %_id3426 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3383
  %_id3427 = load i64, i64* %_j3417
  %_index_ptr3428 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3426, i32 0, i32 1, i64 %_id3427
  store i1 0, i1* %_index_ptr3428
  %_id3430 = load i64, i64* %_j3417
  %_id3431 = load i64, i64* %_i3403
  %_bop3429 = add i64 %_id3430, %_id3431
  store i64 %_bop3429, i64* %_j3417
  br label %_start3423
_end3425:
  br label %_end3416
_else3415:
  br label %_end3416
_end3416:
  %_id3433 = load i64, i64* %_i3403
  %_bop3432 = add i64 %_id3433, 1
  store i64 %_bop3432, i64* %_i3403
  br label %_start3407
_end3409:
  store i64 0, i64* %_count3434
  store i64 0, i64* %_i3435
  br label %_start3439
_start3439:
  %_id3437 = load i64, i64* %_i3435
  %_id3438 = load i64, i64* %_n3382
  %_bop3436 = icmp slt i64 %_id3437, %_id3438
  br i1 %_bop3436, label %_body3440, label %_end3441
_body3440:
  %_id3442 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3383
  %_id3443 = load i64, i64* %_i3435
  %_index_ptr3444 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3442, i32 0, i32 1, i64 %_id3443
  %_idx_tmp3445 = load i1, i1* %_index_ptr3444
  br i1 %_idx_tmp3445, label %_then3446, label %_else3447
_then3446:
  %_id3450 = load i64, i64* %_count3434
  %_bop3449 = add i64 %_id3450, 1
  store i64 %_bop3449, i64* %_count3434
  br label %_end3448
_else3447:
  br label %_end3448
_end3448:
  %_id3452 = load i64, i64* %_i3435
  %_bop3451 = add i64 %_id3452, 1
  store i64 %_bop3451, i64* %_i3435
  br label %_start3439
_end3441:
  %_id3453 = load i64, i64* %_count3434
  ret i64 %_id3453
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_n3379 = alloca i64
  %_argc3377 = alloca i64
  store i64 %argc, i64* %_argc3377
  %_argv3378 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3378
  store i64 100, i64* %_n3379
  %_id3380 = load i64, i64* %_n3379
  %_Call_retval3381 = call i64 @sieve(i64 %_id3380)
  ret i64 %_Call_retval3381
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
