; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %_a3598, i64 %_s3595, i64 %_b3592) {
  %_a3599 = alloca { i64, [0 x i64] }*
  %_s3596 = alloca i64
  %_b3593 = alloca i64
  %_i3602 = alloca i64
  %_min3610 = alloca i64
  %_mi3613 = alloca i64
  store { i64, [0 x i64] }* %_a3598, { i64, [0 x i64] }** %_a3599
  store i64 %_s3595, i64* %_s3596
  store i64 %_b3592, i64* %_b3593
  %_s3601 = load i64, i64* %_s3596
  store i64 %_s3601, i64* %_i3602
  %_a3604 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3599
  %_s3605 = load i64, i64* %_s3596
  %_tmp3607 = bitcast { i64, [0 x i64] }* %_a3604 to i64*
  call void @oat_assert_array_length(i64* %_tmp3607, i64 %_s3605)
  %_index_ptr3608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3604, i32 0, i32 1, i64 %_s3605
  %_index3609 = load i64, i64* %_index_ptr3608
  store i64 %_index3609, i64* %_min3610
  %_s3612 = load i64, i64* %_s3596
  store i64 %_s3612, i64* %_mi3613
  br label %_cond3620
_body3619:
  %_a3621 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3599
  %_i3622 = load i64, i64* %_i3602
  %_tmp3624 = bitcast { i64, [0 x i64] }* %_a3621 to i64*
  call void @oat_assert_array_length(i64* %_tmp3624, i64 %_i3622)
  %_index_ptr3625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3621, i32 0, i32 1, i64 %_i3622
  %_index3626 = load i64, i64* %_index_ptr3625
  %_min3627 = load i64, i64* %_min3610
  %_bop3628 = icmp slt i64 %_index3626, %_min3627
  br i1 %_bop3628, label %_then3640, label %_else3639
_cond3620:
  %_i3615 = load i64, i64* %_i3602
  %_b3616 = load i64, i64* %_b3593
  %_bop3617 = icmp slt i64 %_i3615, %_b3616
  br i1 %_bop3617, label %_body3619, label %_post3618
_else3639:
  br label %_merge3638
_merge3638:
  %_i3641 = load i64, i64* %_i3602
  %_bop3642 = add i64 %_i3641, 1
  store i64 %_bop3642, i64* %_i3602
  br label %_cond3620
_post3618:
  %_mi3644 = load i64, i64* %_mi3613
  ret i64 %_mi3644
_then3640:
  %_a3629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3599
  %_i3630 = load i64, i64* %_i3602
  %_tmp3632 = bitcast { i64, [0 x i64] }* %_a3629 to i64*
  call void @oat_assert_array_length(i64* %_tmp3632, i64 %_i3630)
  %_index_ptr3633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3629, i32 0, i32 1, i64 %_i3630
  %_index3634 = load i64, i64* %_index_ptr3633
  store i64 %_index3634, i64* %_min3610
  %_i3636 = load i64, i64* %_i3602
  store i64 %_i3636, i64* %_mi3613
  br label %_merge3638
}

define void @selectionsort({ i64, [0 x i64] }* %_a3543, i64 %_s3540) {
  %_a3544 = alloca { i64, [0 x i64] }*
  %_s3541 = alloca i64
  %_t3546 = alloca i64
  %_mi3548 = alloca i64
  %_i3550 = alloca i64
  store { i64, [0 x i64] }* %_a3543, { i64, [0 x i64] }** %_a3544
  store i64 %_s3540, i64* %_s3541
  store i64 0, i64* %_t3546
  store i64 0, i64* %_mi3548
  store i64 0, i64* %_i3550
  br label %_cond3557
_body3556:
  %_s3558 = load i64, i64* %_s3541
  %_i3559 = load i64, i64* %_i3550
  %_a3560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3544
  %_result3561 = call i64 @getminindex({ i64, [0 x i64] }* %_a3560, i64 %_i3559, i64 %_s3558)
  store i64 %_result3561, i64* %_mi3548
  %_a3563 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3544
  %_i3564 = load i64, i64* %_i3550
  %_tmp3566 = bitcast { i64, [0 x i64] }* %_a3563 to i64*
  call void @oat_assert_array_length(i64* %_tmp3566, i64 %_i3564)
  %_index_ptr3567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3563, i32 0, i32 1, i64 %_i3564
  %_index3568 = load i64, i64* %_index_ptr3567
  store i64 %_index3568, i64* %_t3546
  %_a3570 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3544
  %_i3571 = load i64, i64* %_i3550
  %_tmp3573 = bitcast { i64, [0 x i64] }* %_a3570 to i64*
  call void @oat_assert_array_length(i64* %_tmp3573, i64 %_i3571)
  %_index_ptr3574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3570, i32 0, i32 1, i64 %_i3571
  %_a3575 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3544
  %_mi3576 = load i64, i64* %_mi3548
  %_tmp3578 = bitcast { i64, [0 x i64] }* %_a3575 to i64*
  call void @oat_assert_array_length(i64* %_tmp3578, i64 %_mi3576)
  %_index_ptr3579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3575, i32 0, i32 1, i64 %_mi3576
  %_index3580 = load i64, i64* %_index_ptr3579
  store i64 %_index3580, i64* %_index_ptr3574
  %_a3582 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3544
  %_mi3583 = load i64, i64* %_mi3548
  %_tmp3585 = bitcast { i64, [0 x i64] }* %_a3582 to i64*
  call void @oat_assert_array_length(i64* %_tmp3585, i64 %_mi3583)
  %_index_ptr3586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3582, i32 0, i32 1, i64 %_mi3583
  %_t3587 = load i64, i64* %_t3546
  store i64 %_t3587, i64* %_index_ptr3586
  %_i3589 = load i64, i64* %_i3550
  %_bop3590 = add i64 %_i3589, 1
  store i64 %_bop3590, i64* %_i3550
  br label %_cond3557
_cond3557:
  %_i3552 = load i64, i64* %_i3550
  %_s3553 = load i64, i64* %_s3541
  %_bop3554 = icmp slt i64 %_i3552, %_s3553
  br i1 %_bop3554, label %_body3556, label %_post3555
_post3555:
  ret void
}

define i64 @program(i64 %_argc3498, { i64, [0 x i8*] }* %_argv3495) {
  %_ar3519 = alloca { i64, [0 x i64] }*
  %_i3523 = alloca i64
  %_raw_array3501 = call i64* @oat_alloc_array(i64 8)
  %_array3502 = bitcast i64* %_raw_array3501 to { i64, [0 x i64] }*
  %_ind3503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3502, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind3503
  %_ind3505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3502, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind3505
  %_ind3507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3502, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3507
  %_ind3509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3502, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind3509
  %_ind3511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3502, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind3511
  %_ind3513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3502, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3513
  %_ind3515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3502, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind3515
  %_ind3517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3502, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind3517
  store { i64, [0 x i64] }* %_array3502, { i64, [0 x i64] }** %_ar3519
  %_ar3521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3519
  call void @selectionsort({ i64, [0 x i64] }* %_ar3521, i64 8)
  store i64 0, i64* %_i3523
  br label %_cond3529
_body3528:
  %_ar3530 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3519
  %_i3531 = load i64, i64* %_i3523
  %_tmp3533 = bitcast { i64, [0 x i64] }* %_ar3530 to i64*
  call void @oat_assert_array_length(i64* %_tmp3533, i64 %_i3531)
  %_index_ptr3534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar3530, i32 0, i32 1, i64 %_i3531
  %_index3535 = load i64, i64* %_index_ptr3534
  call void @print_int(i64 %_index3535)
  %_i3537 = load i64, i64* %_i3523
  %_bop3538 = add i64 %_i3537, 1
  store i64 %_bop3538, i64* %_i3523
  br label %_cond3529
_cond3529:
  %_i3525 = load i64, i64* %_i3523
  %_bop3526 = icmp slt i64 %_i3525, 8
  br i1 %_bop3526, label %_body3528, label %_post3527
_post3527:
  ret i64 0
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
