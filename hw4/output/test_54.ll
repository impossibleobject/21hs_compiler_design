; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a3722 = alloca i64
  store i64 %a, i64* %_a3722
  %_b3723 = alloca i64
  store i64 %b, i64* %_b3723
  %_t3729 = alloca i64
  br label %_start3726
_start3726:
  %_id3725 = load i64, i64* %_b3723
  %_bop3724 = icmp ne i64 %_id3725, 0
  br i1 %_bop3724, label %_body3727, label %_end3728
_body3727:
  %_id3730 = load i64, i64* %_b3723
  store i64 %_id3730, i64* %_t3729
  %_id3732 = load i64, i64* %_a3722
  %_id3733 = load i64, i64* %_b3723
  %_Call_retval3734 = call i64 @mod(i64 %_id3732, i64 %_id3733)
  store i64 %_Call_retval3734, i64* %_b3723
  %_id3736 = load i64, i64* %_t3729
  store i64 %_id3736, i64* %_a3722
  br label %_start3726
_end3728:
  %_id3737 = load i64, i64* %_a3722
  ret i64 %_id3737
}

define i64 @mod(i64 %a, i64 %b) {
  %_a3705 = alloca i64
  store i64 %a, i64* %_a3705
  %_b3706 = alloca i64
  store i64 %b, i64* %_b3706
  %_t3707 = alloca i64
  %_id3708 = load i64, i64* %_a3705
  store i64 %_id3708, i64* %_t3707
  br label %_start3713
_start3713:
  %_id3711 = load i64, i64* %_t3707
  %_id3712 = load i64, i64* %_b3706
  %_bop3710 = sub i64 %_id3711, %_id3712
  %_bop3709 = icmp sge i64 %_bop3710, 0
  br i1 %_bop3709, label %_body3714, label %_end3715
_body3714:
  %_id3718 = load i64, i64* %_t3707
  %_id3719 = load i64, i64* %_b3706
  %_bop3717 = sub i64 %_id3718, %_id3719
  store i64 %_bop3717, i64* %_t3707
  br label %_start3713
_end3715:
  %_id3720 = load i64, i64* %_t3707
  ret i64 %_id3720
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3697 = alloca i64
  store i64 %argc, i64* %_argc3697
  %_argv3698 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3698
  %_a3699 = alloca i64
  %_b3700 = alloca i64
  store i64 64, i64* %_a3699
  store i64 48, i64* %_b3700
  %_id3701 = load i64, i64* %_a3699
  %_id3702 = load i64, i64* %_b3700
  %_Call_retval3703 = call i64 @gcd(i64 %_id3701, i64 %_id3702)
  ret i64 %_Call_retval3703
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
