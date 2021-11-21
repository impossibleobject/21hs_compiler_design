; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3770 = alloca i64
  store i64 %n, i64* %_n3770
  %_id3772 = load i64, i64* %_n3770
  %_bop3771 = icmp eq i64 %_id3772, 0
  br i1 %_bop3771, label %_then3773, label %_else3774
_then3773:
  ret i64 0
_else3774:
  br label %_end3775
_end3775:
  %_id3778 = load i64, i64* %_n3770
  %_bop3777 = icmp eq i64 %_id3778, 1
  br i1 %_bop3777, label %_then3779, label %_else3780
_then3779:
  ret i64 1
_else3780:
  br label %_end3781
_end3781:
  %_bop3784 = sub i64 %_id3785, 1
  %_id3785 = load i64, i64* %_n3770
  %_Call_retval3786 = call i64 @fibR(i64 %_bop3784)
  %_bop3787 = sub i64 %_id3788, 2
  %_id3788 = load i64, i64* %_n3770
  %_Call_retval3789 = call i64 @fibR(i64 %_bop3787)
  %_bop3783 = add i64 %_Call_retval3786, %_Call_retval3789
  ret i64 %_bop3783
}

define i64 @fibI(i64 %n) {
  %_n3732 = alloca i64
  store i64 %n, i64* %_n3732
  %_a3733 = alloca i64
  %_b3734 = alloca i64
  %_old3755 = alloca i64
  store i64 0, i64* %_a3733
  store i64 1, i64* %_b3734
  %_id3736 = load i64, i64* %_n3732
  %_bop3735 = icmp eq i64 %_id3736, 0
  br i1 %_bop3735, label %_then3737, label %_else3738
_then3737:
  %_id3740 = load i64, i64* %_a3733
  ret i64 %_id3740
_else3738:
  br label %_end3739
_end3739:
  %_id3743 = load i64, i64* %_n3732
  %_bop3742 = icmp eq i64 %_id3743, 1
  br i1 %_bop3742, label %_then3744, label %_else3745
_then3744:
  %_id3747 = load i64, i64* %_b3734
  ret i64 %_id3747
_else3745:
  br label %_end3746
_end3746:
  br label %_start3752
_start3752:
  %_id3751 = load i64, i64* %_n3732
  %_bop3750 = sub i64 %_id3751, 2
  %_bop3749 = icmp sgt i64 %_bop3750, 0
  br i1 %_bop3749, label %_body3753, label %_end3754
_body3753:
  store i64 %_id3756, i64* %_old3755
  %_id3756 = load i64, i64* %_b3734
  %_id3759 = load i64, i64* %_b3734
  %_id3760 = load i64, i64* %_a3733
  %_bop3758 = add i64 %_id3759, %_id3760
  store i64 %_bop3758, i64* %_b3734
  %_id3762 = load i64, i64* %_old3755
  store i64 %_id3762, i64* %_a3733
  %_id3765 = load i64, i64* %_n3732
  %_bop3764 = sub i64 %_id3765, 1
  store i64 %_bop3764, i64* %_n3732
  br label %_start3752
_end3754:
  %_id3767 = load i64, i64* %_a3733
  %_id3768 = load i64, i64* %_b3734
  %_bop3766 = add i64 %_id3767, %_id3768
  ret i64 %_bop3766
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3718 = alloca i64
  store i64 %argc, i64* %_argc3718
  %_argv3719 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3719
  %_val3720 = alloca i64
  store i64 1, i64* %_val3720
  %_Call_retval3723 = call i64 @fibR(i64 12)
  %_bop3722 = icmp eq i64 %_Call_retval3723, 144
  %_Call_retval3725 = call i64 @fibI(i64 12)
  %_bop3724 = icmp eq i64 %_Call_retval3725, 144
  %_bop3721 = and i1 %_bop3722, %_bop3724
  br i1 %_bop3721, label %_then3726, label %_else3727
_then3726:
  store i64 0, i64* %_val3720
  br label %_end3728
_else3727:
  br label %_end3728
_end3728:
  %_id3730 = load i64, i64* %_val3720
  ret i64 %_id3730
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
