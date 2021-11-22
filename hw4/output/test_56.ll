; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x3854 = alloca i64
  store i64 %x, i64* %_x3854
  %_y3855 = alloca i64
  store i64 %y, i64* %_y3855
  %_id3857 = load i64*, i64** %_x3854
  %_id3858 = load i64*, i64** %_y3855
  %_bop3856 = icmp eq i64 %_id3857, %_id3858
  br i1 %_bop3856, label %_then3859, label %_else3860
_then3859:
  %_id3862 = load i64*, i64** %_x3854
  ret i64 %_id3862
_else3860:
  br label %_end3861
_end3861:
  %_id3864 = load i64*, i64** %_x3854
  %_bop3863 = icmp eq i64 %_id3864, 0
  br i1 %_bop3863, label %_then3865, label %_else3866
_then3865:
  %_id3868 = load i64*, i64** %_y3855
  ret i64 %_id3868
_else3866:
  br label %_end3867
_end3867:
  %_id3870 = load i64*, i64** %_y3855
  %_bop3869 = icmp eq i64 %_id3870, 0
  br i1 %_bop3869, label %_then3871, label %_else3872
_then3871:
  %_id3874 = load i64*, i64** %_x3854
  ret i64 %_id3874
_else3872:
  br label %_end3873
_end3873:
  %_id3878 = load i64*, i64** %_x3854
  %_uop3877 = xor i64* -1, %_id3878
  %_bop3876 = and i64 %_uop3877, 1
  %_bop3875 = icmp eq i64 %_bop3876, 1
  br i1 %_bop3875, label %_then3879, label %_else3880
_then3879:
  %_id3884 = load i64*, i64** %_y3855
  %_bop3883 = and i64 %_id3884, 1
  %_bop3882 = icmp eq i64 %_bop3883, 1
  br i1 %_bop3882, label %_then3885, label %_else3886
_then3885:
  %_bop3888 = lshr i64 %_id3889, 1
  %_id3889 = load i64*, i64** %_x3854
  %_id3890 = load i64*, i64** %_y3855
  %_Call_retval3891 = call i64 @binary_gcd(i64 %_bop3888, i64* %_id3890)
  ret i64 %_Call_retval3891
_else3886:
  %_bop3893 = lshr i64 %_id3894, 1
  %_id3894 = load i64*, i64** %_x3854
  %_bop3895 = lshr i64 %_id3896, 1
  %_id3896 = load i64*, i64** %_y3855
  %_Call_retval3897 = call i64 @binary_gcd(i64 %_bop3893, i64 %_bop3895)
  %_bop3892 = shl i64 %_Call_retval3897, 1
  ret i64 %_bop3892
_end3887:
  br label %_end3881
_else3880:
  br label %_end3881
_end3881:
  %_id3901 = load i64*, i64** %_y3855
  %_uop3900 = xor i64* -1, %_id3901
  %_bop3899 = and i64 %_uop3900, 1
  %_bop3898 = icmp eq i64 %_bop3899, 1
  br i1 %_bop3898, label %_then3902, label %_else3903
_then3902:
  %_id3905 = load i64*, i64** %_x3854
  %_bop3906 = lshr i64 %_id3907, 1
  %_id3907 = load i64*, i64** %_y3855
  %_Call_retval3908 = call i64 @binary_gcd(i64* %_id3905, i64 %_bop3906)
  ret i64 %_Call_retval3908
_else3903:
  br label %_end3904
_end3904:
  %_id3910 = load i64*, i64** %_x3854
  %_id3911 = load i64*, i64** %_y3855
  %_bop3909 = icmp sgt i64 %_id3910, %_id3911
  br i1 %_bop3909, label %_then3912, label %_else3913
_then3912:
  %_bop3915 = lshr i64 %_bop3916, 1
  %_bop3916 = sub i64 %_id3917, %_id3918
  %_id3918 = load i64*, i64** %_y3855
  %_id3917 = load i64*, i64** %_x3854
  %_id3919 = load i64*, i64** %_y3855
  %_Call_retval3920 = call i64 @binary_gcd(i64 %_bop3915, i64* %_id3919)
  ret i64 %_Call_retval3920
_else3913:
  br label %_end3914
_end3914:
  %_bop3921 = lshr i64 %_bop3922, 1
  %_bop3922 = sub i64 %_id3923, %_id3924
  %_id3924 = load i64*, i64** %_x3854
  %_id3923 = load i64*, i64** %_y3855
  %_id3925 = load i64*, i64** %_x3854
  %_Call_retval3926 = call i64 @binary_gcd(i64 %_bop3921, i64* %_id3925)
  ret i64 %_Call_retval3926
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3847 = alloca i64
  store i64 %argc, i64* %_argc3847
  %_argv3848 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3848
  %_x3849 = alloca i64
  %_y3850 = alloca i64
  store i64 21, i64* %_x3849
  store i64 15, i64* %_y3850
  %_id3851 = load i64, i64* %_x3849
  %_id3852 = load i64, i64* %_y3850
  %_Call_retval3853 = call i64 @binary_gcd(i64 %_id3851, i64 %_id3852)
  ret i64 %_Call_retval3853
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
