; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x3628 = alloca i64
  store i64 %x, i64* %_x3628
  %_y3629 = alloca i64
  store i64 %y, i64* %_y3629
  %_id3631 = load i64, i64* %_x3628
  %_id3632 = load i64, i64* %_y3629
  %_bop3630 = icmp eq i64 %_id3631, %_id3632
  br i1 %_bop3630, label %_then3633, label %_else3634
_then3633:
  %_id3636 = load i64, i64* %_x3628
  ret i64 %_id3636
_else3634:
  br label %_end3635
_end3635:
  %_id3638 = load i64, i64* %_x3628
  %_bop3637 = icmp eq i64 %_id3638, 0
  br i1 %_bop3637, label %_then3639, label %_else3640
_then3639:
  %_id3642 = load i64, i64* %_y3629
  ret i64 %_id3642
_else3640:
  br label %_end3641
_end3641:
  %_id3644 = load i64, i64* %_y3629
  %_bop3643 = icmp eq i64 %_id3644, 0
  br i1 %_bop3643, label %_then3645, label %_else3646
_then3645:
  %_id3648 = load i64, i64* %_x3628
  ret i64 %_id3648
_else3646:
  br label %_end3647
_end3647:
  %_id3652 = load i64, i64* %_x3628
  %_uop3651 = xor i64 %_id3652, -1
  %_bop3650 = and i64 %_uop3651, 1
  %_bop3649 = icmp eq i64 %_bop3650, 1
  br i1 %_bop3649, label %_then3653, label %_else3654
_then3653:
  %_id3658 = load i64, i64* %_y3629
  %_bop3657 = and i64 %_id3658, 1
  %_bop3656 = icmp eq i64 %_bop3657, 1
  br i1 %_bop3656, label %_then3659, label %_else3660
_then3659:
  %_bop3662 = lshr i64 %_id3663, 1
  %_id3663 = load i64, i64* %_x3628
  %_id3664 = load i64, i64* %_y3629
  %_Call_retval3665 = call i64 @binary_gcd(i64 %_bop3662, i64 %_id3664)
  ret i64 %_Call_retval3665
_else3660:
  %_bop3667 = lshr i64 %_id3668, 1
  %_id3668 = load i64, i64* %_x3628
  %_bop3669 = lshr i64 %_id3670, 1
  %_id3670 = load i64, i64* %_y3629
  %_Call_retval3671 = call i64 @binary_gcd(i64 %_bop3667, i64 %_bop3669)
  %_bop3666 = shl i64 %_Call_retval3671, 1
  ret i64 %_bop3666
_end3661:
  br label %_end3655
_else3654:
  br label %_end3655
_end3655:
  %_id3675 = load i64, i64* %_y3629
  %_uop3674 = xor i64 %_id3675, -1
  %_bop3673 = and i64 %_uop3674, 1
  %_bop3672 = icmp eq i64 %_bop3673, 1
  br i1 %_bop3672, label %_then3676, label %_else3677
_then3676:
  %_id3679 = load i64, i64* %_x3628
  %_bop3680 = lshr i64 %_id3681, 1
  %_id3681 = load i64, i64* %_y3629
  %_Call_retval3682 = call i64 @binary_gcd(i64 %_id3679, i64 %_bop3680)
  ret i64 %_Call_retval3682
_else3677:
  br label %_end3678
_end3678:
  %_id3684 = load i64, i64* %_x3628
  %_id3685 = load i64, i64* %_y3629
  %_bop3683 = icmp sgt i64 %_id3684, %_id3685
  br i1 %_bop3683, label %_then3686, label %_else3687
_then3686:
  %_bop3689 = lshr i64 %_bop3690, 1
  %_bop3690 = sub i64 %_id3691, %_id3692
  %_id3692 = load i64, i64* %_y3629
  %_id3691 = load i64, i64* %_x3628
  %_id3693 = load i64, i64* %_y3629
  %_Call_retval3694 = call i64 @binary_gcd(i64 %_bop3689, i64 %_id3693)
  ret i64 %_Call_retval3694
_else3687:
  br label %_end3688
_end3688:
  %_bop3695 = lshr i64 %_bop3696, 1
  %_bop3696 = sub i64 %_id3697, %_id3698
  %_id3698 = load i64, i64* %_x3628
  %_id3697 = load i64, i64* %_y3629
  %_id3699 = load i64, i64* %_x3628
  %_Call_retval3700 = call i64 @binary_gcd(i64 %_bop3695, i64 %_id3699)
  ret i64 %_Call_retval3700
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca i64
  %y = alloca i64
  %_argc3623 = alloca i64
  store i64 %argc, i64* %_argc3623
  %_argv3624 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3624
  store i64 21, i64* %x
  store i64 15, i64* %y
  %_id3625 = load i64, i64* %x
  %_id3626 = load i64, i64* %y
  %_Call_retval3627 = call i64 @binary_gcd(i64 %_id3625, i64 %_id3626)
  ret i64 %_Call_retval3627
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
