; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_garr3805 to { i64, [0 x i1] }*)
@_garr3805 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_cstr_glb3791 = global [2 x i8] c"T\00"
@_cstr_glb3793 = global [2 x i8] c"F\00"
@_cstr_glb3764 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x3794 = alloca i1
  store i1 %x, i1* %_x3794
  %_y3795 = alloca i1
  store i1 %y, i1* %_y3795
  %_id3798 = load i1, i1* %_x3794
  %_id3800 = load i1, i1* %_y3795
  %_uop3799 = icmp eq i1 0, %_id3800
  %_bop3797 = and i1 %_id3798, %_uop3799
  %_id3803 = load i1, i1* %_x3794
  %_uop3802 = icmp eq i1 0, %_id3803
  %_id3804 = load i1, i1* %_y3795
  %_bop3801 = and i1 %_uop3802, %_id3804
  %_bop3796 = or i1 %_bop3797, %_bop3801
  ret i1 %_bop3796
}

define i8* @string_of_bool(i1 %b) {
  %_b3785 = alloca i1
  store i1 %b, i1* %_b3785
  %_id3786 = load i1, i1* %_b3785
  br i1 %_id3786, label %_then3787, label %_else3788
_then3787:
  %_cstr_loc3790 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3791, i32 0, i32 0
  ret i8* %_cstr_loc3790
_else3788:
  %_cstr_loc3792 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3793, i32 0, i32 0
  ret i8* %_cstr_loc3792
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %i = alloca i64
  %_lfsr_register3769 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register3769
  %_len3770 = alloca i64
  store i64 %len, i64* %_len3770
  store i64 0, i64* %i
  br label %_start3774
_start3774:
  %_id3772 = load i64, i64* %i
  %_id3773 = load i64, i64* %_len3770
  %_bop3771 = icmp slt i64 %_id3772, %_id3773
  br i1 %_bop3771, label %_body3775, label %_end3776
_body3775:
  %_Call_retval3781 = call i8* @string_of_bool(i1 %_idx_tmp3780)
  %_id3777 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3769
  %_id3778 = load i64, i64* %i
  %_index_ptr3779 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3777, i32 0, i32 1, i64 %_id3778
  %_idx_tmp3780 = load i1, i1* %_index_ptr3779
  call void @print_string(i8* %_Call_retval3781)
  %_id3784 = load i64, i64* %i
  %_bop3783 = add i64 %_id3784, 1
  store i64 %_bop3783, i64* %i
  br label %_start3774
_end3776:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %lfsr_register = alloca { i64, [0 x i1] }*
  %i = alloca i64
  %i = alloca i64
  %new_first = alloca i1
  %j = alloca i64
  %_argc3701 = alloca i64
  store i64 %argc, i64* %_argc3701
  %_argv3702 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3702
  %_id3703 = load i64, i64* @lfsr_length
  %_raw_array3704 = call i64* @oat_alloc_array(i64 %_id3703)
  %_array3705 = bitcast i64* %_raw_array3704 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3705, { i64, [0 x i1] }** %lfsr_register
  store i64 0, i64* %i
  br label %_start3709
_start3709:
  %_id3707 = load i64, i64* %i
  %_id3708 = load i64, i64* @lfsr_length
  %_bop3706 = icmp slt i64 %_id3707, %_id3708
  br i1 %_bop3706, label %_body3710, label %_end3711
_body3710:
  %_id3712 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_id3713 = load i64, i64* %i
  %_index_ptr3714 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3712, i32 0, i32 1, i64 %_id3713
  %_idx_tmp3715 = load i1, i1* %_index_ptr3714
  %_id3716 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_id3717 = load i64, i64* %i
  %_index_ptr3718 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3716, i32 0, i32 1, i64 %_id3717
  store i1 %_idx_tmp3715, i1* %_index_ptr3718
  %_id3720 = load i64, i64* %i
  %_bop3719 = add i64 %_id3720, 1
  store i64 %_bop3719, i64* %i
  br label %_start3709
_end3711:
  store i64 0, i64* %i
  br label %_start3724
_start3724:
  %_id3722 = load i64, i64* %i
  %_id3723 = load i64, i64* @lfsr_iterations
  %_bop3721 = icmp slt i64 %_id3722, %_id3723
  br i1 %_bop3721, label %_body3725, label %_end3726
_body3725:
  %_idx_tmp3731 = load i1, i1* %_index_ptr3730
  %_index_ptr3730 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3727, i32 0, i32 1, i64 %_bop3728
  %_bop3728 = sub i64 %_id3729, 1
  %_id3729 = load i64, i64* @lfsr_length
  %_id3727 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_idx_tmp3736 = load i1, i1* %_index_ptr3735
  %_index_ptr3735 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3732, i32 0, i32 1, i64 %_bop3733
  %_bop3733 = sub i64 %_id3734, 2
  %_id3734 = load i64, i64* @lfsr_length
  %_id3732 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_Call_retval3737 = call i1 @xor(i1 %_idx_tmp3731, i1 %_idx_tmp3736)
  store i1 %_Call_retval3737, i1* %new_first
  %_id3739 = load i64, i64* @lfsr_length
  %_bop3738 = sub i64 %_id3739, 1
  store i64 %_bop3738, i64* %j
  br label %_start3742
_start3742:
  %_id3741 = load i64, i64* %j
  %_bop3740 = icmp sgt i64 %_id3741, 0
  br i1 %_bop3740, label %_body3743, label %_end3744
_body3743:
  %_id3745 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_id3747 = load i64, i64* %j
  %_bop3746 = sub i64 %_id3747, 1
  %_index_ptr3748 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3745, i32 0, i32 1, i64 %_bop3746
  %_idx_tmp3749 = load i1, i1* %_index_ptr3748
  %_id3750 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_id3751 = load i64, i64* %j
  %_index_ptr3752 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3750, i32 0, i32 1, i64 %_id3751
  store i1 %_idx_tmp3749, i1* %_index_ptr3752
  %_id3754 = load i64, i64* %j
  %_bop3753 = sub i64 %_id3754, 1
  store i64 %_bop3753, i64* %j
  br label %_start3742
_end3744:
  %_id3755 = load i1, i1* %new_first
  %_id3756 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_index_ptr3757 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3756, i32 0, i32 1, i32 0
  store i1 %_id3755, i1* %_index_ptr3757
  %_id3759 = load i64, i64* %i
  %_bop3758 = add i64 %_id3759, 1
  store i64 %_bop3758, i64* %i
  br label %_start3724
_end3726:
  %_id3760 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_id3761 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id3760, i64 %_id3761)
  %_cstr_loc3763 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3764, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3763)
  %_id3766 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %lfsr_register
  %_id3767 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id3766, i64 %_id3767)
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
