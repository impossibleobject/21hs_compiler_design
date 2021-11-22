; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_arr3386 = alloca { i64, [0 x i1] }*
  %_i3390 = alloca i64
  %_i3406 = alloca i64
  %_j3420 = alloca i64
  %_count3437 = alloca i64
  %_i3438 = alloca i64
  %_n3385 = alloca i64
  store i64 %n, i64* %_n3385
  %_id3387 = load i64, i64* %_n3385
  %_raw_array3388 = call i64* @oat_alloc_array(i64 %_id3387)
  %_array3389 = bitcast i64* %_raw_array3388 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3389, { i64, [0 x i1] }** %_arr3386
  store i64 0, i64* %_i3390
  br label %_start3394
_start3394:
  %_id3392 = load i64, i64* %_i3390
  %_id3393 = load i64, i64* %_n3385
  %_bop3391 = icmp slt i64 %_id3392, %_id3393
  br i1 %_bop3391, label %_body3395, label %_end3396
_body3395:
  %_id3397 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3386
  %_id3398 = load i64, i64* %_i3390
  %_index_ptr3399 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3397, i32 0, i32 1, i64 %_id3398
  store i1 1, i1* %_index_ptr3399
  %_id3401 = load i64, i64* %_i3390
  %_bop3400 = add i64 %_id3401, 1
  store i64 %_bop3400, i64* %_i3390
  br label %_start3394
_end3396:
  %_id3402 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3386
  %_index_ptr3403 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3402, i32 0, i32 1, i32 0
  store i1 0, i1* %_index_ptr3403
  %_id3404 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3386
  %_index_ptr3405 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3404, i32 0, i32 1, i32 1
  store i1 0, i1* %_index_ptr3405
  store i64 0, i64* %_i3406
  br label %_start3410
_start3410:
  %_id3408 = load i64, i64* %_i3406
  %_id3409 = load i64, i64* %_n3385
  %_bop3407 = icmp slt i64 %_id3408, %_id3409
  br i1 %_bop3407, label %_body3411, label %_end3412
_body3411:
  %_id3413 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3386
  %_id3414 = load i64, i64* %_i3406
  %_index_ptr3415 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3413, i32 0, i32 1, i64 %_id3414
  %_idx_tmp3416 = load i1, i1* %_index_ptr3415
  br i1 %_idx_tmp3416, label %_then3417, label %_else3418
_then3417:
  %_id3422 = load i64, i64* %_i3406
  %_bop3421 = mul i64 %_id3422, 2
  store i64 %_bop3421, i64* %_j3420
  br label %_start3426
_start3426:
  %_id3424 = load i64, i64* %_j3420
  %_id3425 = load i64, i64* %_n3385
  %_bop3423 = icmp slt i64 %_id3424, %_id3425
  br i1 %_bop3423, label %_body3427, label %_end3428
_body3427:
  %_id3429 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3386
  %_id3430 = load i64, i64* %_j3420
  %_index_ptr3431 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3429, i32 0, i32 1, i64 %_id3430
  store i1 0, i1* %_index_ptr3431
  %_id3433 = load i64, i64* %_j3420
  %_id3434 = load i64, i64* %_i3406
  %_bop3432 = add i64 %_id3433, %_id3434
  store i64 %_bop3432, i64* %_j3420
  br label %_start3426
_end3428:
  br label %_end3419
_else3418:
  br label %_end3419
_end3419:
  %_id3436 = load i64, i64* %_i3406
  %_bop3435 = add i64 %_id3436, 1
  store i64 %_bop3435, i64* %_i3406
  br label %_start3410
_end3412:
  store i64 0, i64* %_count3437
  store i64 0, i64* %_i3438
  br label %_start3442
_start3442:
  %_id3440 = load i64, i64* %_i3438
  %_id3441 = load i64, i64* %_n3385
  %_bop3439 = icmp slt i64 %_id3440, %_id3441
  br i1 %_bop3439, label %_body3443, label %_end3444
_body3443:
  %_id3445 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3386
  %_id3446 = load i64, i64* %_i3438
  %_index_ptr3447 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3445, i32 0, i32 1, i64 %_id3446
  %_idx_tmp3448 = load i1, i1* %_index_ptr3447
  br i1 %_idx_tmp3448, label %_then3449, label %_else3450
_then3449:
  %_id3453 = load i64, i64* %_count3437
  %_bop3452 = add i64 %_id3453, 1
  store i64 %_bop3452, i64* %_count3437
  br label %_end3451
_else3450:
  br label %_end3451
_end3451:
  %_id3455 = load i64, i64* %_i3438
  %_bop3454 = add i64 %_id3455, 1
  store i64 %_bop3454, i64* %_i3438
  br label %_start3442
_end3444:
  %_id3456 = load i64, i64* %_count3437
  ret i64 %_id3456
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_n3382 = alloca i64
  %_argc3380 = alloca i64
  store i64 %argc, i64* %_argc3380
  %_argv3381 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3381
  store i64 100, i64* %_n3382
  %_id3383 = load i64, i64* %_n3382
  %_Call_retval3384 = call i64 @sieve(i64 %_id3383)
  ret i64 %_Call_retval3384
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
