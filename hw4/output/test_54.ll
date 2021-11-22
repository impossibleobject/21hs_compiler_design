; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_n3395 = alloca i64
  store i64 %n, i64* %_n3395
  %_arr3396 = alloca { i64, [0 x i1] }*
  %_i3400 = alloca i64
  %_i3416 = alloca i64
  %_j3430 = alloca i64
  %_count3447 = alloca i64
  %_i3448 = alloca i64
  %_id3397 = load i64*, i64** %_n3395
  %_raw_array3398 = call i64* @oat_alloc_array(i64 %_id3397)
  %_array3399 = bitcast i64* %_raw_array3398 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3399, { i64, [0 x i1] }** %_arr3396
  store i64 0, i64* %_i3400
  br label %_start3404
_start3404:
  %_id3402 = load i64, i64* %_i3400
  %_id3403 = load i64*, i64** %_n3395
  %_bop3401 = icmp slt i64 %_id3402, %_id3403
  br i1 %_bop3401, label %_body3405, label %_end3406
_body3405:
  %_id3407 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3396
  %_id3408 = load i64, i64* %_i3400
  %_index_ptr3409 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3407, i32 0, i32 1, i64 %_id3408
  store i1 1, i1* %_index_ptr3409
  %_id3411 = load i64, i64* %_i3400
  %_bop3410 = add i64 %_id3411, 1
  store i64 %_bop3410, i64* %_i3400
  br label %_start3404
_end3406:
  %_id3412 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3396
  %_index_ptr3413 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3412, i32 0, i32 1, i32 0
  store i1 0, i1* %_index_ptr3413
  %_id3414 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3396
  %_index_ptr3415 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3414, i32 0, i32 1, i32 1
  store i1 0, i1* %_index_ptr3415
  store i64 0, i64* %_i3416
  br label %_start3420
_start3420:
  %_id3418 = load i64, i64* %_i3416
  %_id3419 = load i64*, i64** %_n3395
  %_bop3417 = icmp slt i64 %_id3418, %_id3419
  br i1 %_bop3417, label %_body3421, label %_end3422
_body3421:
  %_id3423 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3396
  %_id3424 = load i64, i64* %_i3416
  %_index_ptr3425 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3423, i32 0, i32 1, i64 %_id3424
  %_idx_tmp3426 = load i1, i1* %_index_ptr3425
  br i1 %_idx_tmp3426, label %_then3427, label %_else3428
_then3427:
  %_id3432 = load i64, i64* %_i3416
  %_bop3431 = mul i64 %_id3432, 2
  store i64 %_bop3431, i64* %_j3430
  br label %_start3436
_start3436:
  %_id3434 = load i64, i64* %_j3430
  %_id3435 = load i64*, i64** %_n3395
  %_bop3433 = icmp slt i64 %_id3434, %_id3435
  br i1 %_bop3433, label %_body3437, label %_end3438
_body3437:
  %_id3439 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3396
  %_id3440 = load i64, i64* %_j3430
  %_index_ptr3441 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3439, i32 0, i32 1, i64 %_id3440
  store i1 0, i1* %_index_ptr3441
  %_id3443 = load i64, i64* %_j3430
  %_id3444 = load i64, i64* %_i3416
  %_bop3442 = add i64 %_id3443, %_id3444
  store i64 %_bop3442, i64* %_j3430
  br label %_start3436
_end3438:
  br label %_end3429
_else3428:
  br label %_end3429
_end3429:
  %_id3446 = load i64, i64* %_i3416
  %_bop3445 = add i64 %_id3446, 1
  store i64 %_bop3445, i64* %_i3416
  br label %_start3420
_end3422:
  store i64 0, i64* %_count3447
  store i64 0, i64* %_i3448
  br label %_start3452
_start3452:
  %_id3450 = load i64, i64* %_i3448
  %_id3451 = load i64*, i64** %_n3395
  %_bop3449 = icmp slt i64 %_id3450, %_id3451
  br i1 %_bop3449, label %_body3453, label %_end3454
_body3453:
  %_id3455 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3396
  %_id3456 = load i64, i64* %_i3448
  %_index_ptr3457 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3455, i32 0, i32 1, i64 %_id3456
  %_idx_tmp3458 = load i1, i1* %_index_ptr3457
  br i1 %_idx_tmp3458, label %_then3459, label %_else3460
_then3459:
  %_id3463 = load i64, i64* %_count3447
  %_bop3462 = add i64 %_id3463, 1
  store i64 %_bop3462, i64* %_count3447
  br label %_end3461
_else3460:
  br label %_end3461
_end3461:
  %_id3465 = load i64, i64* %_i3448
  %_bop3464 = add i64 %_id3465, 1
  store i64 %_bop3464, i64* %_i3448
  br label %_start3452
_end3454:
  %_id3466 = load i64, i64* %_count3447
  ret i64 %_id3466
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3390 = alloca i64
  store i64 %argc, i64* %_argc3390
  %_argv3391 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3391
  %_n3392 = alloca i64
  store i64 100, i64* %_n3392
  %_id3393 = load i64, i64* %_n3392
  %_Call_retval3394 = call i64 @sieve(i64 %_id3393)
  ret i64 %_Call_retval3394
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
