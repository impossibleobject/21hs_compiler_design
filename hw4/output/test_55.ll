; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3672 = alloca i64
  store i64 %n, i64* %_n3672
  %_id3674 = load i64*, i64** %_n3672
  %_bop3673 = icmp eq i64 %_id3674, 0
  br i1 %_bop3673, label %_then3675, label %_else3676
_then3675:
  ret i64 0
_else3676:
  br label %_end3677
_end3677:
  %_id3679 = load i64*, i64** %_n3672
  %_bop3678 = icmp eq i64 %_id3679, 1
  br i1 %_bop3678, label %_then3680, label %_else3681
_then3680:
  ret i64 1
_else3681:
  br label %_end3682
_end3682:
  %_bop3684 = sub i64 %_id3685, 1
  %_id3685 = load i64*, i64** %_n3672
  %_Call_retval3686 = call i64 @fibR(i64 %_bop3684)
  %_bop3687 = sub i64 %_id3688, 2
  %_id3688 = load i64*, i64** %_n3672
  %_Call_retval3689 = call i64 @fibR(i64 %_bop3687)
  %_bop3683 = add i64 %_Call_retval3686, %_Call_retval3689
  ret i64 %_bop3683
}

define i64 @fibI(i64 %n) {
  %_n3640 = alloca i64
  store i64 %n, i64* %_n3640
  %_a3641 = alloca i64
  %_b3642 = alloca i64
  %_old3661 = alloca i64
  store i64 0, i64* %_a3641
  store i64 1, i64* %_b3642
  %_id3644 = load i64*, i64** %_n3640
  %_bop3643 = icmp eq i64 %_id3644, 0
  br i1 %_bop3643, label %_then3645, label %_else3646
_then3645:
  %_id3648 = load i64, i64* %_a3641
  ret i64 %_id3648
_else3646:
  br label %_end3647
_end3647:
  %_id3650 = load i64*, i64** %_n3640
  %_bop3649 = icmp eq i64 %_id3650, 1
  br i1 %_bop3649, label %_then3651, label %_else3652
_then3651:
  %_id3654 = load i64, i64* %_b3642
  ret i64 %_id3654
_else3652:
  br label %_end3653
_end3653:
  br label %_start3658
_start3658:
  %_id3657 = load i64*, i64** %_n3640
  %_bop3656 = sub i64 %_id3657, 2
  %_bop3655 = icmp sgt i64 %_bop3656, 0
  br i1 %_bop3655, label %_body3659, label %_end3660
_body3659:
  %_id3662 = load i64, i64* %_b3642
  store i64 %_id3662, i64* %_old3661
  %_id3664 = load i64, i64* %_b3642
  %_id3665 = load i64, i64* %_a3641
  %_bop3663 = add i64 %_id3664, %_id3665
  store i64 %_bop3663, i64* %_b3642
  %_id3666 = load i64, i64* %_old3661
  store i64 %_id3666, i64* %_a3641
  %_id3668 = load i64*, i64** %_n3640
  %_bop3667 = sub i64 %_id3668, 1
  store i64 %_bop3667, i64* %_n3640
  br label %_start3658
_end3660:
  %_id3670 = load i64, i64* %_a3641
  %_id3671 = load i64, i64* %_b3642
  %_bop3669 = add i64 %_id3670, %_id3671
  ret i64 %_bop3669
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3628 = alloca i64
  store i64 %argc, i64* %_argc3628
  %_argv3629 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3629
  %_val3630 = alloca i64
  store i64 1, i64* %_val3630
  %_Call_retval3633 = call i64 @fibR(i64 12)
  %_bop3632 = icmp eq i64 %_Call_retval3633, 144
  %_Call_retval3635 = call i64 @fibI(i64 12)
  %_bop3634 = icmp eq i64 %_Call_retval3635, 144
  %_bop3631 = and i1 %_bop3632, %_bop3634
  br i1 %_bop3631, label %_then3636, label %_else3637
_then3636:
  store i64 0, i64* %_val3630
  br label %_end3638
_else3637:
  br label %_end3638
_end3638:
  %_id3639 = load i64, i64* %_val3630
  ret i64 %_id3639
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
