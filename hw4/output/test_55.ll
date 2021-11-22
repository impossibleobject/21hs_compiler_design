; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3685 = alloca i64
  store i64 %n, i64* %_n3685
  %_id3687 = load i64*, i64** %_n3685
  %_bop3686 = icmp eq i64 %_id3687, 0
  br i1 %_bop3686, label %_then3688, label %_else3689
_then3688:
  ret i64 0
_else3689:
  br label %_end3690
_end3690:
  %_id3692 = load i64*, i64** %_n3685
  %_bop3691 = icmp eq i64 %_id3692, 1
  br i1 %_bop3691, label %_then3693, label %_else3694
_then3693:
  ret i64 1
_else3694:
  br label %_end3695
_end3695:
  %_bop3697 = sub i64 %_id3698, 1
  %_id3698 = load i64*, i64** %_n3685
  %_Call_retval3699 = call i64 @fibR(i64 %_bop3697)
  %_bop3700 = sub i64 %_id3701, 2
  %_id3701 = load i64*, i64** %_n3685
  %_Call_retval3702 = call i64 @fibR(i64 %_bop3700)
  %_bop3696 = add i64 %_Call_retval3699, %_Call_retval3702
  ret i64 %_bop3696
}

define i64 @fibI(i64 %n) {
  %_n3653 = alloca i64
  store i64 %n, i64* %_n3653
  %_a3654 = alloca i64
  %_b3655 = alloca i64
  %_old3674 = alloca i64
  store i64 0, i64* %_a3654
  store i64 1, i64* %_b3655
  %_id3657 = load i64*, i64** %_n3653
  %_bop3656 = icmp eq i64 %_id3657, 0
  br i1 %_bop3656, label %_then3658, label %_else3659
_then3658:
  %_id3661 = load i64, i64* %_a3654
  ret i64 %_id3661
_else3659:
  br label %_end3660
_end3660:
  %_id3663 = load i64*, i64** %_n3653
  %_bop3662 = icmp eq i64 %_id3663, 1
  br i1 %_bop3662, label %_then3664, label %_else3665
_then3664:
  %_id3667 = load i64, i64* %_b3655
  ret i64 %_id3667
_else3665:
  br label %_end3666
_end3666:
  br label %_start3671
_start3671:
  %_id3670 = load i64*, i64** %_n3653
  %_bop3669 = sub i64 %_id3670, 2
  %_bop3668 = icmp sgt i64 %_bop3669, 0
  br i1 %_bop3668, label %_body3672, label %_end3673
_body3672:
  %_id3675 = load i64, i64* %_b3655
  store i64 %_id3675, i64* %_old3674
  %_id3677 = load i64, i64* %_b3655
  %_id3678 = load i64, i64* %_a3654
  %_bop3676 = add i64 %_id3677, %_id3678
  store i64 %_bop3676, i64* %_b3655
  %_id3679 = load i64, i64* %_old3674
  store i64 %_id3679, i64* %_a3654
  %_id3681 = load i64*, i64** %_n3653
  %_bop3680 = sub i64 %_id3681, 1
  store i64 %_bop3680, i64* %_n3653
  br label %_start3671
_end3673:
  %_id3683 = load i64, i64* %_a3654
  %_id3684 = load i64, i64* %_b3655
  %_bop3682 = add i64 %_id3683, %_id3684
  ret i64 %_bop3682
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3641 = alloca i64
  store i64 %argc, i64* %_argc3641
  %_argv3642 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3642
  %_val3643 = alloca i64
  store i64 1, i64* %_val3643
  %_Call_retval3646 = call i64 @fibR(i64 12)
  %_bop3645 = icmp eq i64 %_Call_retval3646, 144
  %_Call_retval3648 = call i64 @fibI(i64 12)
  %_bop3647 = icmp eq i64 %_Call_retval3648, 144
  %_bop3644 = and i1 %_bop3645, %_bop3647
  br i1 %_bop3644, label %_then3649, label %_else3650
_then3649:
  store i64 0, i64* %_val3643
  br label %_end3651
_else3650:
  br label %_end3651
_end3651:
  %_id3652 = load i64, i64* %_val3643
  ret i64 %_id3652
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
