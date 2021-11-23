; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3675 = alloca i64
  store i64 %n, i64* %_n3675
  %_id3677 = load i64, i64* %_n3675
  %_bop3676 = icmp eq i64 %_id3677, 0
  br i1 %_bop3676, label %_then3678, label %_else3679
_then3678:
  ret i64 0
_else3679:
  br label %_end3680
_end3680:
  %_id3682 = load i64, i64* %_n3675
  %_bop3681 = icmp eq i64 %_id3682, 1
  br i1 %_bop3681, label %_then3683, label %_else3684
_then3683:
  ret i64 1
_else3684:
  br label %_end3685
_end3685:
  %_id3688 = load i64, i64* %_n3675
  %_bop3687 = sub i64 %_id3688, 1
  %_Call_retval3689 = call i64 @fibR(i64 %_bop3687)
  %_id3691 = load i64, i64* %_n3675
  %_bop3690 = sub i64 %_id3691, 2
  %_Call_retval3692 = call i64 @fibR(i64 %_bop3690)
  %_bop3686 = add i64 %_Call_retval3689, %_Call_retval3692
  ret i64 %_bop3686
}

define i64 @fibI(i64 %n) {
  %_a3644 = alloca i64
  %_b3645 = alloca i64
  %_old3664 = alloca i64
  %_n3643 = alloca i64
  store i64 %n, i64* %_n3643
  store i64 0, i64* %_a3644
  store i64 1, i64* %_b3645
  %_id3647 = load i64, i64* %_n3643
  %_bop3646 = icmp eq i64 %_id3647, 0
  br i1 %_bop3646, label %_then3648, label %_else3649
_then3648:
  %_id3651 = load i64, i64* %_a3644
  ret i64 %_id3651
_else3649:
  br label %_end3650
_end3650:
  %_id3653 = load i64, i64* %_n3643
  %_bop3652 = icmp eq i64 %_id3653, 1
  br i1 %_bop3652, label %_then3654, label %_else3655
_then3654:
  %_id3657 = load i64, i64* %_b3645
  ret i64 %_id3657
_else3655:
  br label %_end3656
_end3656:
  br label %_start3661
_start3661:
  %_id3660 = load i64, i64* %_n3643
  %_bop3659 = sub i64 %_id3660, 2
  %_bop3658 = icmp sgt i64 %_bop3659, 0
  br i1 %_bop3658, label %_body3662, label %_end3663
_body3662:
  %_id3665 = load i64, i64* %_b3645
  store i64 %_id3665, i64* %_old3664
  %_id3667 = load i64, i64* %_b3645
  %_id3668 = load i64, i64* %_a3644
  %_bop3666 = add i64 %_id3667, %_id3668
  store i64 %_bop3666, i64* %_b3645
  %_id3669 = load i64, i64* %_old3664
  store i64 %_id3669, i64* %_a3644
  %_id3671 = load i64, i64* %_n3643
  %_bop3670 = sub i64 %_id3671, 1
  store i64 %_bop3670, i64* %_n3643
  br label %_start3661
_end3663:
  %_id3673 = load i64, i64* %_a3644
  %_id3674 = load i64, i64* %_b3645
  %_bop3672 = add i64 %_id3673, %_id3674
  ret i64 %_bop3672
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val3633 = alloca i64
  %_argc3631 = alloca i64
  store i64 %argc, i64* %_argc3631
  %_argv3632 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3632
  store i64 1, i64* %_val3633
  %_Call_retval3636 = call i64 @fibR(i64 12)
  %_bop3635 = icmp eq i64 %_Call_retval3636, 144
  %_Call_retval3638 = call i64 @fibI(i64 12)
  %_bop3637 = icmp eq i64 %_Call_retval3638, 144
  %_bop3634 = and i1 %_bop3635, %_bop3637
  br i1 %_bop3634, label %_then3639, label %_else3640
_then3639:
  store i64 0, i64* %_val3633
  br label %_end3641
_else3640:
  br label %_end3641
_end3641:
  %_id3642 = load i64, i64* %_val3633
  ret i64 %_id3642
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
