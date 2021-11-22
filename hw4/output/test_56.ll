; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x3841 = alloca i64
  store i64 %x, i64* %_x3841
  %_y3842 = alloca i64
  store i64 %y, i64* %_y3842
  %_id3844 = load i64, i64* %_x3841
  %_id3845 = load i64, i64* %_y3842
  %_bop3843 = icmp eq i64 %_id3844, %_id3845
  br i1 %_bop3843, label %_then3846, label %_else3847
_then3846:
  %_id3849 = load i64, i64* %_x3841
  ret i64 %_id3849
_else3847:
  br label %_end3848
_end3848:
  %_id3851 = load i64, i64* %_x3841
  %_bop3850 = icmp eq i64 %_id3851, 0
  br i1 %_bop3850, label %_then3852, label %_else3853
_then3852:
  %_id3855 = load i64, i64* %_y3842
  ret i64 %_id3855
_else3853:
  br label %_end3854
_end3854:
  %_id3857 = load i64, i64* %_y3842
  %_bop3856 = icmp eq i64 %_id3857, 0
  br i1 %_bop3856, label %_then3858, label %_else3859
_then3858:
  %_id3861 = load i64, i64* %_x3841
  ret i64 %_id3861
_else3859:
  br label %_end3860
_end3860:
  %_id3865 = load i64, i64* %_x3841
  %_uop3864 = xor i64 %_id3865, -1
  %_bop3863 = and i64 %_uop3864, 1
  %_bop3862 = icmp eq i64 %_bop3863, 1
  br i1 %_bop3862, label %_then3866, label %_else3867
_then3866:
  %_id3871 = load i64, i64* %_y3842
  %_bop3870 = and i64 %_id3871, 1
  %_bop3869 = icmp eq i64 %_bop3870, 1
  br i1 %_bop3869, label %_then3872, label %_else3873
_then3872:
  %_bop3875 = lshr i64 %_id3876, 1
  %_id3876 = load i64, i64* %_x3841
  %_id3877 = load i64, i64* %_y3842
  %_Call_retval3878 = call i64 @binary_gcd(i64 %_bop3875, i64 %_id3877)
  ret i64 %_Call_retval3878
_else3873:
  %_bop3880 = lshr i64 %_id3881, 1
  %_id3881 = load i64, i64* %_x3841
  %_bop3882 = lshr i64 %_id3883, 1
  %_id3883 = load i64, i64* %_y3842
  %_Call_retval3884 = call i64 @binary_gcd(i64 %_bop3880, i64 %_bop3882)
  %_bop3879 = shl i64 %_Call_retval3884, 1
  ret i64 %_bop3879
_end3874:
  br label %_end3868
_else3867:
  br label %_end3868
_end3868:
  %_id3888 = load i64, i64* %_y3842
  %_uop3887 = xor i64 %_id3888, -1
  %_bop3886 = and i64 %_uop3887, 1
  %_bop3885 = icmp eq i64 %_bop3886, 1
  br i1 %_bop3885, label %_then3889, label %_else3890
_then3889:
  %_id3892 = load i64, i64* %_x3841
  %_bop3893 = lshr i64 %_id3894, 1
  %_id3894 = load i64, i64* %_y3842
  %_Call_retval3895 = call i64 @binary_gcd(i64 %_id3892, i64 %_bop3893)
  ret i64 %_Call_retval3895
_else3890:
  br label %_end3891
_end3891:
  %_id3897 = load i64, i64* %_x3841
  %_id3898 = load i64, i64* %_y3842
  %_bop3896 = icmp sgt i64 %_id3897, %_id3898
  br i1 %_bop3896, label %_then3899, label %_else3900
_then3899:
  %_bop3902 = lshr i64 %_bop3903, 1
  %_bop3903 = sub i64 %_id3904, %_id3905
  %_id3905 = load i64, i64* %_y3842
  %_id3904 = load i64, i64* %_x3841
  %_id3906 = load i64, i64* %_y3842
  %_Call_retval3907 = call i64 @binary_gcd(i64 %_bop3902, i64 %_id3906)
  ret i64 %_Call_retval3907
_else3900:
  br label %_end3901
_end3901:
  %_bop3908 = lshr i64 %_bop3909, 1
  %_bop3909 = sub i64 %_id3910, %_id3911
  %_id3911 = load i64, i64* %_x3841
  %_id3910 = load i64, i64* %_y3842
  %_id3912 = load i64, i64* %_x3841
  %_Call_retval3913 = call i64 @binary_gcd(i64 %_bop3908, i64 %_id3912)
  ret i64 %_Call_retval3913
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x3836 = alloca i64
  %_y3837 = alloca i64
  %_argc3834 = alloca i64
  store i64 %argc, i64* %_argc3834
  %_argv3835 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3835
  store i64 21, i64* %_x3836
  store i64 15, i64* %_y3837
  %_id3838 = load i64, i64* %_x3836
  %_id3839 = load i64, i64* %_y3837
  %_Call_retval3840 = call i64 @binary_gcd(i64 %_id3838, i64 %_id3839)
  ret i64 %_Call_retval3840
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
