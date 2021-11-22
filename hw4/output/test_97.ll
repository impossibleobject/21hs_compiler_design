; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %l = alloca i64
  %r = alloca i64
  %tmp = alloca i64
  %m = alloca i64
  %_array3552 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array3552
  %_i3553 = alloca i64
  store i64 %i, i64* %_i3553
  %_len3554 = alloca i64
  store i64 %len, i64* %_len3554
  %_id3556 = load i64, i64* %_i3553
  %_bop3555 = mul i64 %_id3556, 2
  store i64 %_bop3555, i64* %l
  %_id3558 = load i64, i64* %_i3553
  %_bop3557 = add i64 %_id3558, 1
  store i64 %_bop3557, i64* %r
  store i64 0, i64* %tmp
  %_id3559 = load i64, i64* %_i3553
  store i64 %_id3559, i64* %m
  %_id3561 = load i64, i64* %l
  %_id3562 = load i64, i64* %_len3554
  %_bop3560 = icmp slt i64 %_id3561, %_id3562
  br i1 %_bop3560, label %_then3563, label %_else3564
_then3563:
  %_id3567 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3552
  %_id3568 = load i64, i64* %l
  %_index_ptr3569 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3567, i32 0, i32 1, i64 %_id3568
  %_idx_tmp3573 = load i64, i64* %_index_ptr3569
  %_id3570 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3552
  %_id3571 = load i64, i64* %m
  %_index_ptr3572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3570, i32 0, i32 1, i64 %_id3571
  %_idx_tmp3574 = load i64, i64* %_index_ptr3572
  %_bop3566 = icmp sgt i64 %_idx_tmp3573, %_idx_tmp3574
  br i1 %_bop3566, label %_then3575, label %_else3576
_then3575:
  %_id3578 = load i64, i64* %l
  store i64 %_id3578, i64* %m
  br label %_end3577
_else3576:
  br label %_end3577
_end3577:
  br label %_end3565
_else3564:
  br label %_end3565
_end3565:
  %_id3580 = load i64, i64* %r
  %_id3581 = load i64, i64* %_len3554
  %_bop3579 = icmp slt i64 %_id3580, %_id3581
  br i1 %_bop3579, label %_then3582, label %_else3583
_then3582:
  %_id3586 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3552
  %_id3587 = load i64, i64* %r
  %_index_ptr3588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3586, i32 0, i32 1, i64 %_id3587
  %_idx_tmp3592 = load i64, i64* %_index_ptr3588
  %_id3589 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3552
  %_id3590 = load i64, i64* %m
  %_index_ptr3591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3589, i32 0, i32 1, i64 %_id3590
  %_idx_tmp3593 = load i64, i64* %_index_ptr3591
  %_bop3585 = icmp sgt i64 %_idx_tmp3592, %_idx_tmp3593
  br i1 %_bop3585, label %_then3594, label %_else3595
_then3594:
  %_id3597 = load i64, i64* %r
  store i64 %_id3597, i64* %m
  br label %_end3596
_else3595:
  br label %_end3596
_end3596:
  br label %_end3584
_else3583:
  br label %_end3584
_end3584:
  %_id3599 = load i64, i64* %m
  %_id3600 = load i64, i64* %_i3553
  %_bop3598 = icmp ne i64 %_id3599, %_id3600
  br i1 %_bop3598, label %_then3601, label %_else3602
_then3601:
  %_id3604 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3552
  %_id3605 = load i64, i64* %_i3553
  %_index_ptr3606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3604, i32 0, i32 1, i64 %_id3605
  %_idx_tmp3607 = load i64, i64* %_index_ptr3606
  store i64 %_idx_tmp3607, i64* %tmp
  %_id3608 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3552
  %_id3609 = load i64, i64* %m
  %_index_ptr3610 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3608, i32 0, i32 1, i64 %_id3609
  %_idx_tmp3611 = load i64, i64* %_index_ptr3610
  %_id3612 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3552
  %_id3613 = load i64, i64* %_i3553
  %_index_ptr3614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3612, i32 0, i32 1, i64 %_id3613
  store i64 %_idx_tmp3611, i64* %_index_ptr3614
  %_id3615 = load i64, i64* %tmp
  %_id3616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3552
  %_id3617 = load i64, i64* %m
  %_index_ptr3618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3616, i32 0, i32 1, i64 %_id3617
  store i64 %_id3615, i64* %_index_ptr3618
  %_id3619 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3552
  %_id3620 = load i64, i64* %m
  %_id3621 = load i64, i64* %_len3554
  call void @min_heapify({ i64, [0 x i64] }* %_id3619, i64 %_id3620, i64 %_id3621)
  br label %_end3603
_else3602:
  br label %_end3603
_end3603:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %i = alloca i64
  %_array3538 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array3538
  %_len3539 = alloca i64
  store i64 %len, i64* %_len3539
  %_id3540 = load i64, i64* %_len3539
  store i64 %_id3540, i64* %i
  br label %_start3543
_start3543:
  %_id3542 = load i64, i64* %i
  %_bop3541 = icmp sge i64 %_id3542, 1
  br i1 %_bop3541, label %_body3544, label %_end3545
_body3544:
  %_id3546 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3538
  %_id3547 = load i64, i64* %i
  %_id3548 = load i64, i64* %_len3539
  call void @min_heapify({ i64, [0 x i64] }* %_id3546, i64 %_id3547, i64 %_id3548)
  %_id3551 = load i64, i64* %i
  %_bop3550 = sub i64 %_id3551, 1
  store i64 %_bop3550, i64* %i
  br label %_start3543
_end3545:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %array = alloca { i64, [0 x i64] }*
  %end_result = alloca { i64, [0 x i64] }*
  %same = alloca i64
  %i = alloca i64
  %_argc3488 = alloca i64
  store i64 %argc, i64* %_argc3488
  %_argv3489 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3489
  %_raw_array3490 = call i64* @oat_alloc_array(i64 11)
  %_array3491 = bitcast i64* %_raw_array3490 to { i64, [0 x i64] }*
  %_CArr_elem_103502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 10
  store i64 5, i64* %_CArr_elem_103502
  %_CArr_elem_93501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 9
  store i64 4, i64* %_CArr_elem_93501
  %_CArr_elem_83500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 8
  store i64 6, i64* %_CArr_elem_83500
  %_CArr_elem_73499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 7
  store i64 3, i64* %_CArr_elem_73499
  %_CArr_elem_63498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 6
  store i64 7, i64* %_CArr_elem_63498
  %_CArr_elem_53497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 5
  store i64 10, i64* %_CArr_elem_53497
  %_CArr_elem_43496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 4
  store i64 8, i64* %_CArr_elem_43496
  %_CArr_elem_33495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 3
  store i64 2, i64* %_CArr_elem_33495
  %_CArr_elem_23494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_23494
  %_CArr_elem_13493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 1
  store i64 9, i64* %_CArr_elem_13493
  %_CArr_elem_03492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3491, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03492
  store { i64, [0 x i64] }* %_array3491, { i64, [0 x i64] }** %array
  %_raw_array3503 = call i64* @oat_alloc_array(i64 11)
  %_array3504 = bitcast i64* %_raw_array3503 to { i64, [0 x i64] }*
  %_CArr_elem_103515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 10
  store i64 10, i64* %_CArr_elem_103515
  %_CArr_elem_93514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 9
  store i64 9, i64* %_CArr_elem_93514
  %_CArr_elem_83513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 8
  store i64 6, i64* %_CArr_elem_83513
  %_CArr_elem_73512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 7
  store i64 3, i64* %_CArr_elem_73512
  %_CArr_elem_63511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 6
  store i64 7, i64* %_CArr_elem_63511
  %_CArr_elem_53510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 5
  store i64 5, i64* %_CArr_elem_53510
  %_CArr_elem_43509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 4
  store i64 8, i64* %_CArr_elem_43509
  %_CArr_elem_33508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 3
  store i64 2, i64* %_CArr_elem_33508
  %_CArr_elem_23507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 2
  store i64 4, i64* %_CArr_elem_23507
  %_CArr_elem_13506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_13506
  %_CArr_elem_03505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3504, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03505
  store { i64, [0 x i64] }* %_array3504, { i64, [0 x i64] }** %end_result
  %_id3516 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  call void @make_min_heap({ i64, [0 x i64] }* %_id3516, i64 10)
  store i64 0, i64* %same
  store i64 0, i64* %i
  br label %_start3520
_start3520:
  %_id3519 = load i64, i64* %i
  %_bop3518 = icmp slt i64 %_id3519, 11
  br i1 %_bop3518, label %_body3521, label %_end3522
_body3521:
  %_id3524 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  %_id3525 = load i64, i64* %i
  %_index_ptr3526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3524, i32 0, i32 1, i64 %_id3525
  %_idx_tmp3530 = load i64, i64* %_index_ptr3526
  %_id3527 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %end_result
  %_id3528 = load i64, i64* %i
  %_index_ptr3529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3527, i32 0, i32 1, i64 %_id3528
  %_idx_tmp3531 = load i64, i64* %_index_ptr3529
  %_bop3523 = icmp ne i64 %_idx_tmp3530, %_idx_tmp3531
  br i1 %_bop3523, label %_then3532, label %_else3533
_then3532:
  store i64 1, i64* %same
  br label %_end3534
_else3533:
  br label %_end3534
_end3534:
  %_id3536 = load i64, i64* %i
  %_bop3535 = add i64 %_id3536, 1
  store i64 %_bop3535, i64* %i
  br label %_start3520
_end3522:
  %_id3537 = load i64, i64* %same
  ret i64 %_id3537
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
