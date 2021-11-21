; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x3948 = alloca i64
  store i64 %x, i64* %_x3948
  %_y3949 = alloca i64
  store i64 %y, i64* %_y3949
  %_id3951 = load i64, i64* %_x3948
  %_id3952 = load i64, i64* %_y3949
  %_bop3950 = icmp eq i64 %_id3951, %_id3952
  br i1 %_bop3950, label %_then3953, label %_else3954
_then3953:
  %_id3956 = load i64, i64* %_x3948
  ret i64 %_id3956
_else3954:
  br label %_end3955
_end3955:
  %_id3959 = load i64, i64* %_x3948
  %_bop3958 = icmp eq i64 %_id3959, 0
  br i1 %_bop3958, label %_then3960, label %_else3961
_then3960:
  %_id3963 = load i64, i64* %_y3949
  ret i64 %_id3963
_else3961:
  br label %_end3962
_end3962:
  %_id3966 = load i64, i64* %_y3949
  %_bop3965 = icmp eq i64 %_id3966, 0
  br i1 %_bop3965, label %_then3967, label %_else3968
_then3967:
  %_id3970 = load i64, i64* %_x3948
  ret i64 %_id3970
_else3968:
  br label %_end3969
_end3969:
  %_uop3974 = xor i64 -1, %_id3975
  %_id3975 = load i64, i64* %_x3948
  %_bop3973 = and i64 %_uop3974, 1
  %_bop3972 = icmp eq i64 %_bop3973, 1
  br i1 %_bop3972, label %_then3976, label %_else3977
_then3976:
  %_id3981 = load i64, i64* %_y3949
  %_bop3980 = and i64 %_id3981, 1
  %_bop3979 = icmp eq i64 %_bop3980, 1
  br i1 %_bop3979, label %_then3982, label %_else3983
_then3982:
  %_bop3985 = lshr i64 %_id3986, 1
  %_id3986 = load i64, i64* %_x3948
  %_id3987 = load i64, i64* %_y3949
  %_Call_retval3988 = call i64 @binary_gcd(i64 %_bop3985, i64 %_id3987)
  ret i64 %_Call_retval3988
_else3983:
  %_bop3991 = lshr i64 %_id3992, 1
  %_id3992 = load i64, i64* %_x3948
  %_bop3993 = lshr i64 %_id3994, 1
  %_id3994 = load i64, i64* %_y3949
  %_Call_retval3995 = call i64 @binary_gcd(i64 %_bop3991, i64 %_bop3993)
  %_bop3990 = shl i64 %_Call_retval3995, 1
  ret i64 %_bop3990
_end3984:
  br label %_end3978
_else3977:
  br label %_end3978
_end3978:
  %_uop3999 = xor i64 -1, %_id4000
  %_id4000 = load i64, i64* %_y3949
  %_bop3998 = and i64 %_uop3999, 1
  %_bop3997 = icmp eq i64 %_bop3998, 1
  br i1 %_bop3997, label %_then4001, label %_else4002
_then4001:
  %_id4004 = load i64, i64* %_x3948
  %_bop4005 = lshr i64 %_id4006, 1
  %_id4006 = load i64, i64* %_y3949
  %_Call_retval4007 = call i64 @binary_gcd(i64 %_id4004, i64 %_bop4005)
  ret i64 %_Call_retval4007
_else4002:
  br label %_end4003
_end4003:
  %_id4010 = load i64, i64* %_x3948
  %_id4011 = load i64, i64* %_y3949
  %_bop4009 = icmp sgt i64 %_id4010, %_id4011
  br i1 %_bop4009, label %_then4012, label %_else4013
_then4012:
  %_bop4015 = lshr i64 %_bop4016, 1
  %_bop4016 = sub i64 %_id4017, %_id4018
  %_id4018 = load i64, i64* %_y3949
  %_id4017 = load i64, i64* %_x3948
  %_id4019 = load i64, i64* %_y3949
  %_Call_retval4020 = call i64 @binary_gcd(i64 %_bop4015, i64 %_id4019)
  ret i64 %_Call_retval4020
_else4013:
  br label %_end4014
_end4014:
  %_bop4022 = lshr i64 %_bop4023, 1
  %_bop4023 = sub i64 %_id4024, %_id4025
  %_id4025 = load i64, i64* %_x3948
  %_id4024 = load i64, i64* %_y3949
  %_id4026 = load i64, i64* %_x3948
  %_Call_retval4027 = call i64 @binary_gcd(i64 %_bop4022, i64 %_id4026)
  ret i64 %_Call_retval4027
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3940 = alloca i64
  store i64 %argc, i64* %_argc3940
  %_argv3941 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3941
  %_x3942 = alloca i64
  %_y3943 = alloca i64
  store i64 21, i64* %_x3942
  store i64 15, i64* %_y3943
  %_id3944 = load i64, i64* %_x3942
  %_id3945 = load i64, i64* %_y3943
  %_Call_retval3946 = call i64 @binary_gcd(i64 %_id3944, i64 %_id3945)
  ret i64 %_Call_retval3946
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
