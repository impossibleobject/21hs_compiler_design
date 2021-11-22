; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb3476 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_min3604 = alloca i64
  %_i3608 = alloca i64
  %_arr3602 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3602
  %_len3603 = alloca i64
  store i64 %len, i64* %_len3603
  %_id3605 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3602
  %_index_ptr3606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3605, i32 0, i32 1, i32 0
  %_idx_tmp3607 = load i64, i64* %_index_ptr3606
  store i64 %_idx_tmp3607, i64* %_min3604
  store i64 0, i64* %_i3608
  br label %_start3612
_start3612:
  %_id3610 = load i64, i64* %_i3608
  %_id3611 = load i64, i64* %_len3603
  %_bop3609 = icmp slt i64 %_id3610, %_id3611
  br i1 %_bop3609, label %_body3613, label %_end3614
_body3613:
  %_id3616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3602
  %_id3617 = load i64, i64* %_i3608
  %_index_ptr3618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3616, i32 0, i32 1, i64 %_id3617
  %_idx_tmp3620 = load i64, i64* %_index_ptr3618
  %_id3619 = load i64, i64* %_min3604
  %_bop3615 = icmp slt i64 %_idx_tmp3620, %_id3619
  br i1 %_bop3615, label %_then3621, label %_else3622
_then3621:
  %_id3624 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3602
  %_id3625 = load i64, i64* %_i3608
  %_index_ptr3626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3624, i32 0, i32 1, i64 %_id3625
  %_idx_tmp3627 = load i64, i64* %_index_ptr3626
  store i64 %_idx_tmp3627, i64* %_min3604
  br label %_end3623
_else3622:
  br label %_end3623
_end3623:
  %_id3629 = load i64, i64* %_i3608
  %_bop3628 = add i64 %_id3629, 1
  store i64 %_bop3628, i64* %_i3608
  br label %_start3612
_end3614:
  %_id3630 = load i64, i64* %_min3604
  ret i64 %_id3630
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_max3575 = alloca i64
  %_i3579 = alloca i64
  %_arr3573 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3573
  %_len3574 = alloca i64
  store i64 %len, i64* %_len3574
  %_id3576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3573
  %_index_ptr3577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3576, i32 0, i32 1, i32 0
  %_idx_tmp3578 = load i64, i64* %_index_ptr3577
  store i64 %_idx_tmp3578, i64* %_max3575
  store i64 0, i64* %_i3579
  br label %_start3583
_start3583:
  %_id3581 = load i64, i64* %_i3579
  %_id3582 = load i64, i64* %_len3574
  %_bop3580 = icmp slt i64 %_id3581, %_id3582
  br i1 %_bop3580, label %_body3584, label %_end3585
_body3584:
  %_id3587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3573
  %_id3588 = load i64, i64* %_i3579
  %_index_ptr3589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3587, i32 0, i32 1, i64 %_id3588
  %_idx_tmp3591 = load i64, i64* %_index_ptr3589
  %_id3590 = load i64, i64* %_max3575
  %_bop3586 = icmp sgt i64 %_idx_tmp3591, %_id3590
  br i1 %_bop3586, label %_then3592, label %_else3593
_then3592:
  %_id3595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3573
  %_id3596 = load i64, i64* %_i3579
  %_index_ptr3597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3595, i32 0, i32 1, i64 %_id3596
  %_idx_tmp3598 = load i64, i64* %_index_ptr3597
  store i64 %_idx_tmp3598, i64* %_max3575
  br label %_end3594
_else3593:
  br label %_end3594
_end3594:
  %_id3600 = load i64, i64* %_i3579
  %_bop3599 = add i64 %_id3600, 1
  store i64 %_bop3599, i64* %_i3579
  br label %_start3583
_end3585:
  %_id3601 = load i64, i64* %_max3575
  ret i64 %_id3601
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_min3487 = alloca i64
  %_max3491 = alloca i64
  %_counts3495 = alloca { i64, [0 x i64] }*
  %_i3502 = alloca i64
  %_i3529 = alloca i64
  %_j3531 = alloca i64
  %_out3532 = alloca { i64, [0 x i64] }*
  %_arr3485 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr3485
  %_len3486 = alloca i64
  store i64 %len, i64* %_len3486
  %_id3489 = load i64, i64* %_len3486
  %_id3488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3485
  %_Call_retval3490 = call i64 @min({ i64, [0 x i64] }* %_id3488, i64 %_id3489)
  store i64 %_Call_retval3490, i64* %_min3487
  %_id3493 = load i64, i64* %_len3486
  %_id3492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3485
  %_Call_retval3494 = call i64 @max({ i64, [0 x i64] }* %_id3492, i64 %_id3493)
  store i64 %_Call_retval3494, i64* %_max3491
  %_id3498 = load i64, i64* %_max3491
  %_id3499 = load i64, i64* %_min3487
  %_bop3497 = sub i64 %_id3498, %_id3499
  %_bop3496 = add i64 %_bop3497, 1
  %_raw_array3500 = call i64* @oat_alloc_array(i64 %_bop3496)
  %_array3501 = bitcast i64* %_raw_array3500 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3501, { i64, [0 x i64] }** %_counts3495
  store i64 0, i64* %_i3502
  br label %_start3506
_start3506:
  %_id3504 = load i64, i64* %_i3502
  %_id3505 = load i64, i64* %_len3486
  %_bop3503 = icmp slt i64 %_id3504, %_id3505
  br i1 %_bop3503, label %_body3507, label %_end3508
_body3507:
  %_id3510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3495
  %_id3512 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3485
  %_id3513 = load i64, i64* %_i3502
  %_index_ptr3514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3512, i32 0, i32 1, i64 %_id3513
  %_idx_tmp3516 = load i64, i64* %_index_ptr3514
  %_id3515 = load i64, i64* %_min3487
  %_bop3511 = sub i64 %_idx_tmp3516, %_id3515
  %_index_ptr3517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3510, i32 0, i32 1, i64 %_bop3511
  %_idx_tmp3518 = load i64, i64* %_index_ptr3517
  %_bop3509 = add i64 %_idx_tmp3518, 1
  %_id3519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3495
  %_id3521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3485
  %_id3522 = load i64, i64* %_i3502
  %_index_ptr3523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3521, i32 0, i32 1, i64 %_id3522
  %_idx_tmp3525 = load i64, i64* %_index_ptr3523
  %_id3524 = load i64, i64* %_min3487
  %_bop3520 = sub i64 %_idx_tmp3525, %_id3524
  %_index_ptr3526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3519, i32 0, i32 1, i64 %_bop3520
  store i64 %_bop3509, i64* %_index_ptr3526
  %_id3528 = load i64, i64* %_i3502
  %_bop3527 = add i64 %_id3528, 1
  store i64 %_bop3527, i64* %_i3502
  br label %_start3506
_end3508:
  %_id3530 = load i64, i64* %_min3487
  store i64 %_id3530, i64* %_i3529
  store i64 0, i64* %_j3531
  %_id3533 = load i64, i64* %_len3486
  %_raw_array3534 = call i64* @oat_alloc_array(i64 %_id3533)
  %_array3535 = bitcast i64* %_raw_array3534 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3535, { i64, [0 x i64] }** %_out3532
  br label %_start3539
_start3539:
  %_id3537 = load i64, i64* %_i3529
  %_id3538 = load i64, i64* %_max3491
  %_bop3536 = icmp sle i64 %_id3537, %_id3538
  br i1 %_bop3536, label %_body3540, label %_end3541
_body3540:
  %_id3543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3495
  %_id3545 = load i64, i64* %_i3529
  %_id3546 = load i64, i64* %_min3487
  %_bop3544 = sub i64 %_id3545, %_id3546
  %_index_ptr3547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3543, i32 0, i32 1, i64 %_bop3544
  %_idx_tmp3548 = load i64, i64* %_index_ptr3547
  %_bop3542 = icmp sgt i64 %_idx_tmp3548, 0
  br i1 %_bop3542, label %_then3549, label %_else3550
_then3549:
  %_id3552 = load i64, i64* %_i3529
  %_id3553 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out3532
  %_id3554 = load i64, i64* %_j3531
  %_index_ptr3555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3553, i32 0, i32 1, i64 %_id3554
  store i64 %_id3552, i64* %_index_ptr3555
  %_id3557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3495
  %_id3559 = load i64, i64* %_i3529
  %_id3560 = load i64, i64* %_min3487
  %_bop3558 = sub i64 %_id3559, %_id3560
  %_index_ptr3561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3557, i32 0, i32 1, i64 %_bop3558
  %_idx_tmp3562 = load i64, i64* %_index_ptr3561
  %_bop3556 = sub i64 %_idx_tmp3562, 1
  %_id3563 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3495
  %_id3565 = load i64, i64* %_i3529
  %_id3566 = load i64, i64* %_min3487
  %_bop3564 = sub i64 %_id3565, %_id3566
  %_index_ptr3567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3563, i32 0, i32 1, i64 %_bop3564
  store i64 %_bop3556, i64* %_index_ptr3567
  %_id3569 = load i64, i64* %_j3531
  %_bop3568 = add i64 %_id3569, 1
  store i64 %_bop3568, i64* %_j3531
  br label %_end3551
_else3550:
  %_id3571 = load i64, i64* %_i3529
  %_bop3570 = add i64 %_id3571, 1
  store i64 %_bop3570, i64* %_i3529
  br label %_end3551
_end3551:
  br label %_start3539
_end3541:
  %_id3572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out3532
  ret { i64, [0 x i64] }* %_id3572
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr3459 = alloca { i64, [0 x i64] }*
  %_len3471 = alloca i64
  %_sorted3478 = alloca { i64, [0 x i64] }*
  %_argc3457 = alloca i64
  store i64 %argc, i64* %_argc3457
  %_argv3458 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3458
  %_raw_array3460 = call i64* @oat_alloc_array(i64 9)
  %_array3461 = bitcast i64* %_raw_array3460 to { i64, [0 x i64] }*
  %_CArr_elem_83470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3461, i32 0, i32 1, i32 8
  store i64 67, i64* %_CArr_elem_83470
  %_CArr_elem_73469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3461, i32 0, i32 1, i32 7
  store i64 89, i64* %_CArr_elem_73469
  %_CArr_elem_63468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3461, i32 0, i32 1, i32 6
  store i64 69, i64* %_CArr_elem_63468
  %_CArr_elem_53467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3461, i32 0, i32 1, i32 5
  store i64 65, i64* %_CArr_elem_53467
  %_CArr_elem_43466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3461, i32 0, i32 1, i32 4
  store i64 65, i64* %_CArr_elem_43466
  %_CArr_elem_33465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3461, i32 0, i32 1, i32 3
  store i64 90, i64* %_CArr_elem_33465
  %_CArr_elem_23464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3461, i32 0, i32 1, i32 2
  store i64 72, i64* %_CArr_elem_23464
  %_CArr_elem_13463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3461, i32 0, i32 1, i32 1
  store i64 70, i64* %_CArr_elem_13463
  %_CArr_elem_03462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3461, i32 0, i32 1, i32 0
  store i64 65, i64* %_CArr_elem_03462
  store { i64, [0 x i64] }* %_array3461, { i64, [0 x i64] }** %_arr3459
  store i64 9, i64* %_len3471
  %_id3472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3459
  %_Call_retval3473 = call i8* @string_of_array({ i64, [0 x i64] }* %_id3472)
  call void @print_string(i8* %_Call_retval3473)
  %_cstr_loc3475 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3476, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3475)
  %_id3480 = load i64, i64* %_len3471
  %_id3479 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3459
  %_Call_retval3481 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_id3479, i64 %_id3480)
  store { i64, [0 x i64] }* %_Call_retval3481, { i64, [0 x i64] }** %_sorted3478
  %_id3482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted3478
  %_Call_retval3483 = call i8* @string_of_array({ i64, [0 x i64] }* %_id3482)
  call void @print_string(i8* %_Call_retval3483)
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
