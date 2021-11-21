; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3443 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x3486 = alloca i64
  store i64 %x, i64* %_x3486
  %_y3487 = alloca i64
  store i64 %y, i64* %_y3487
  %_uop3489 = xor i64 -1, %_bop3490
  %_id3491 = load i64, i64* %_x3486
  %_id3492 = load i64, i64* %_y3487
  %_bop3490 = and i64 %_id3491, %_id3492
  %_id3494 = load i64, i64* %_x3486
  %_id3495 = load i64, i64* %_y3487
  %_bop3493 = or i64 %_id3494, %_id3495
  %_bop3488 = and i64 %_uop3489, %_bop3493
  ret i64 %_bop3488
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s3449 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s3449
  %_x3450 = alloca i64*
  %_y3453 = alloca i64*
  store i64* %_index_ptr3452, i64** %_x3450
  %_id3451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3449
  %_index_ptr3452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3451, i32 0, i32 1, i32 0
  store i64* %_index_ptr3455, i64** %_y3453
  %_id3454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3449
  %_index_ptr3455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3454, i32 0, i32 1, i32 1
  %_id3456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3449
  %_index_ptr3457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3456, i32 0, i32 1, i32 0
  %_id3458 = load i64*, i64** %_y3453
  store i64* %_id3458, i64** %_index_ptr3457
  %_id3460 = load i64*, i64** %_x3450
  %_bop3461 = shl i64 %_3463, 23
  %_3463 = load i64, i64* %_id3462
  %_id3462 = load i64*, i64** %_x3450
  %_Call_retval3464 = call i64 @xor(i64* %_id3460, i64 %_bop3461)
  store i64* %_Call_retval3464, i64** %_x3450
  %_bop3467 = lshr i64 %_Call_retval3464, 17
  %_Call_retval3469 = call i64 @xor(i64 %_Call_retval3464, i64 %_bop3467)
  store i64 %_Call_retval3469, i64* @x
  %_Call_retval3476 = call i64 @xor(i64* %_id3472, i64 %_bop3473)
  %_id3474 = load i64*, i64** %_y3453
  %_3475 = load i64, i64* %_id3474
  %_bop3473 = lshr i64 %_3475, 26
  %_id3472 = load i64*, i64** %_y3453
  %_Call_retval3477 = call i64 @xor(i64 %_Call_retval3469, i64 %_Call_retval3476)
  store i64 %_Call_retval3477, i64* @x
  %_id3478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3449
  %_index_ptr3479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3478, i32 0, i32 1, i32 1
  store i64 %_Call_retval3477, i64* %_index_ptr3479
  %_id3483 = load i64*, i64** %_y3453
  %_3484 = load i64, i64* %_id3483
  %_bop3481 = add i64 %_Call_retval3477, %_3484
  ret i64 %_bop3481
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3419 = alloca i64
  store i64 %argc, i64* %_argc3419
  %_argv3420 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3420
  %_seed3421 = alloca { i64, [0 x i64] }*
  %_i3424 = alloca i64
  store { i64, [0 x i64] }* %_array3423, { i64, [0 x i64] }** %_seed3421
  %_raw_array3422 = call i64* @oat_alloc_array(i64 2)
  %_array3423 = bitcast i64* %_raw_array3422 to { i64, [0 x i64] }*
  store i64 0, i64* %_i3424
  br label %_start3427
_start3427:
  %_id3426 = load i64, i64* %_i3424
  %_bop3425 = icmp slt i64 %_id3426, 2
  br i1 %_bop3425, label %_body3428, label %_end3429
_body3428:
  %_id3430 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3421
  %_id3431 = load i64, i64* %_i3424
  %_index_ptr3432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3430, i32 0, i32 1, i64 %_id3431
  %_id3435 = load i64, i64* %_i3424
  %_bop3434 = add i64 %_id3435, 1
  %_bop3433 = mul i64 100, %_bop3434
  store i64 %_bop3433, i64* %_index_ptr3432
  %_id3438 = load i64, i64* %_i3424
  %_bop3437 = add i64 %_id3438, 1
  store i64 %_bop3437, i64* %_i3424
  br label %_start3427
_end3429:
  %_Call_retval3440 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3439)
  %_id3439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3421
  call void @print_int(i64 %_Call_retval3440)
  %_cstr_loc3442 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3443, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3442)
  %_Call_retval3446 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id3445)
  %_id3445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3421
  call void @print_int(i64 %_Call_retval3446)
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
