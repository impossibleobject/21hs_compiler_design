; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x3844 = alloca i64
  store i64 %x, i64* %_x3844
  %_y3845 = alloca i64
  store i64 %y, i64* %_y3845
  %_id3847 = load i64, i64* %_x3844
  %_id3848 = load i64, i64* %_y3845
  %_bop3846 = icmp eq i64 %_id3847, %_id3848
  br i1 %_bop3846, label %_then3849, label %_else3850
_then3849:
  %_id3852 = load i64, i64* %_x3844
  ret i64 %_id3852
_else3850:
  br label %_end3851
_end3851:
  %_id3854 = load i64, i64* %_x3844
  %_bop3853 = icmp eq i64 %_id3854, 0
  br i1 %_bop3853, label %_then3855, label %_else3856
_then3855:
  %_id3858 = load i64, i64* %_y3845
  ret i64 %_id3858
_else3856:
  br label %_end3857
_end3857:
  %_id3860 = load i64, i64* %_y3845
  %_bop3859 = icmp eq i64 %_id3860, 0
  br i1 %_bop3859, label %_then3861, label %_else3862
_then3861:
  %_id3864 = load i64, i64* %_x3844
  ret i64 %_id3864
_else3862:
  br label %_end3863
_end3863:
  %_id3868 = load i64, i64* %_x3844
  %_uop3867 = xor i64 %_id3868, -1
  %_bop3866 = and i64 %_uop3867, 1
  %_bop3865 = icmp eq i64 %_bop3866, 1
  br i1 %_bop3865, label %_then3869, label %_else3870
_then3869:
  %_id3874 = load i64, i64* %_y3845
  %_bop3873 = and i64 %_id3874, 1
  %_bop3872 = icmp eq i64 %_bop3873, 1
  br i1 %_bop3872, label %_then3875, label %_else3876
_then3875:
  %_id3880 = load i64, i64* %_y3845
  %_id3879 = load i64, i64* %_x3844
  %_bop3878 = lshr i64 %_id3879, 1
  %_Call_retval3881 = call i64 @binary_gcd(i64 %_bop3878, i64 %_id3880)
  ret i64 %_Call_retval3881
_else3876:
  %_id3886 = load i64, i64* %_y3845
  %_bop3885 = lshr i64 %_id3886, 1
  %_id3884 = load i64, i64* %_x3844
  %_bop3883 = lshr i64 %_id3884, 1
  %_Call_retval3887 = call i64 @binary_gcd(i64 %_bop3883, i64 %_bop3885)
  %_bop3882 = shl i64 %_Call_retval3887, 1
  ret i64 %_bop3882
_end3877:
  br label %_end3871
_else3870:
  br label %_end3871
_end3871:
  %_id3891 = load i64, i64* %_y3845
  %_uop3890 = xor i64 %_id3891, -1
  %_bop3889 = and i64 %_uop3890, 1
  %_bop3888 = icmp eq i64 %_bop3889, 1
  br i1 %_bop3888, label %_then3892, label %_else3893
_then3892:
  %_id3897 = load i64, i64* %_y3845
  %_bop3896 = lshr i64 %_id3897, 1
  %_id3895 = load i64, i64* %_x3844
  %_Call_retval3898 = call i64 @binary_gcd(i64 %_id3895, i64 %_bop3896)
  ret i64 %_Call_retval3898
_else3893:
  br label %_end3894
_end3894:
  %_id3900 = load i64, i64* %_x3844
  %_id3901 = load i64, i64* %_y3845
  %_bop3899 = icmp sgt i64 %_id3900, %_id3901
  br i1 %_bop3899, label %_then3902, label %_else3903
_then3902:
  %_id3909 = load i64, i64* %_y3845
  %_id3907 = load i64, i64* %_x3844
  %_id3908 = load i64, i64* %_y3845
  %_bop3906 = sub i64 %_id3907, %_id3908
  %_bop3905 = lshr i64 %_bop3906, 1
  %_Call_retval3910 = call i64 @binary_gcd(i64 %_bop3905, i64 %_id3909)
  ret i64 %_Call_retval3910
_else3903:
  br label %_end3904
_end3904:
  %_id3915 = load i64, i64* %_x3844
  %_id3913 = load i64, i64* %_y3845
  %_id3914 = load i64, i64* %_x3844
  %_bop3912 = sub i64 %_id3913, %_id3914
  %_bop3911 = lshr i64 %_bop3912, 1
  %_Call_retval3916 = call i64 @binary_gcd(i64 %_bop3911, i64 %_id3915)
  ret i64 %_Call_retval3916
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x3839 = alloca i64
  %_y3840 = alloca i64
  %_argc3837 = alloca i64
  store i64 %argc, i64* %_argc3837
  %_argv3838 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3838
  store i64 21, i64* %_x3839
  store i64 15, i64* %_y3840
  %_id3842 = load i64, i64* %_y3840
  %_id3841 = load i64, i64* %_x3839
  %_Call_retval3843 = call i64 @binary_gcd(i64 %_id3841, i64 %_id3842)
  ret i64 %_Call_retval3843
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
