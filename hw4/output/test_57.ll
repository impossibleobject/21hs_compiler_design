; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_4037 = global i1 1
@_4038 = global i1 0
@_4039 = global i1 1
@_4040 = global i1 0
@_cstr_glb4023 = global [2 x i8] c"T\00"
@_cstr_glb4025 = global [2 x i8] c"F\00"
@_cstr_glb3995 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x4026 = alloca i1
  store i1 %x, i1* %_x4026
  %_y4027 = alloca i1
  store i1 %y, i1* %_y4027
  %_id4030 = load i1*, i1** %_x4026
  %_id4032 = load i1*, i1** %_y4027
  %_uop4031 = icmp eq i1* 0, %_id4032
  %_bop4029 = and i1 %_id4030, %_uop4031
  %_id4035 = load i1*, i1** %_x4026
  %_uop4034 = icmp eq i1* 0, %_id4035
  %_id4036 = load i1*, i1** %_y4027
  %_bop4033 = and i1 %_uop4034, %_id4036
  %_bop4028 = or i1 %_bop4029, %_bop4033
  ret i1 %_bop4028
}

define i8* @string_of_bool(i1 %b) {
  %_b4017 = alloca i1
  store i1 %b, i1* %_b4017
  %_id4018 = load i1*, i1** %_b4017
  br i1 %_id4018, label %_then4019, label %_else4020
_then4019:
  %_cstr_loc4022 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb4023, i32 0, i32 0
  ret i8* %_cstr_loc4022
_else4020:
  %_cstr_loc4024 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb4025, i32 0, i32 0
  ret i8* %_cstr_loc4024
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register4000 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register4000
  %_len4001 = alloca i64
  store i64 %len, i64* %_len4001
  %_i4002 = alloca i64
  store i64 0, i64* %_i4002
  br label %_start4006
_start4006:
  %_id4004 = load i64, i64* %_i4002
  %_id4005 = load i64*, i64** %_len4001
  %_bop4003 = icmp slt i64 %_id4004, %_id4005
  br i1 %_bop4003, label %_body4007, label %_end4008
_body4007:
  %_Call_retval4013 = call i8* @string_of_bool(i1 %_idx_tmp4012)
  %_id4009 = load { i64, [0 x i1] }**, { i64, [0 x i1] }*** %_lfsr_register4000
  %_id4010 = load i64, i64* %_i4002
  %_index_ptr4011 = getelementptr { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id4009, i32 0, i32 0, i32 1, i64 %_id4010
  %_idx_tmp4012 = load i1, i1* %_index_ptr4011
  call void @print_string(i8* %_Call_retval4013)
  %_id4016 = load i64, i64* %_i4002
  %_bop4015 = add i64 %_id4016, 1
  store i64 %_bop4015, i64* %_i4002
  br label %_start4006
_end4008:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3927 = alloca i64
  store i64 %argc, i64* %_argc3927
  %_argv3928 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3928
  %_lfsr_register3929 = alloca { i64, [0 x i1] }*
  %_i3933 = alloca i64
  %_i3949 = alloca i64
  %_new_first3956 = alloca i1
  %_j3968 = alloca i64
  %_id3930 = load i64, i64* 4
  %_raw_array3931 = call i64* @oat_alloc_array(i64 %_id3930)
  %_array3932 = bitcast i64* %_raw_array3931 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3932, { i64, [0 x i1] }** %_lfsr_register3929
  store i64 0, i64* %_i3933
  br label %_start3937
_start3937:
  %_id3935 = load i64, i64* %_i3933
  %_id3936 = load i64, i64* 4
  %_bop3934 = icmp slt i64 %_id3935, %_id3936
  br i1 %_bop3934, label %_body3938, label %_end3939
_body3938:
  %_id3940 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_id3941 = load i64, i64* %_i3933
  %_index_ptr3942 = getelementptr { i64, [4 x i1] }, { i64, [4 x i1] }* %_id3940, i32 0, i32 1, i64 %_id3941
  %_idx_tmp3943 = load i1, i1* %_index_ptr3942
  %_id3944 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3929
  %_id3945 = load i64, i64* %_i3933
  %_index_ptr3946 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3944, i32 0, i32 1, i64 %_id3945
  store i1 %_idx_tmp3943, i1* %_index_ptr3946
  %_id3948 = load i64, i64* %_i3933
  %_bop3947 = add i64 %_id3948, 1
  store i64 %_bop3947, i64* %_i3933
  br label %_start3937
_end3939:
  store i64 0, i64* %_i3949
  br label %_start3953
_start3953:
  %_id3951 = load i64, i64* %_i3949
  %_id3952 = load i64, i64* 5
  %_bop3950 = icmp slt i64 %_id3951, %_id3952
  br i1 %_bop3950, label %_body3954, label %_end3955
_body3954:
  %_idx_tmp3961 = load i1, i1* %_index_ptr3960
  %_index_ptr3960 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3957, i32 0, i32 1, i64 %_bop3958
  %_bop3958 = sub i64 %_id3959, 1
  %_id3959 = load i64, i64* 4
  %_id3957 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3929
  %_idx_tmp3966 = load i1, i1* %_index_ptr3965
  %_index_ptr3965 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3962, i32 0, i32 1, i64 %_bop3963
  %_bop3963 = sub i64 %_id3964, 2
  %_id3964 = load i64, i64* 4
  %_id3962 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3929
  %_Call_retval3967 = call i1 @xor(i1 %_idx_tmp3961, i1 %_idx_tmp3966)
  store i1 %_Call_retval3967, i1* %_new_first3956
  %_id3970 = load i64, i64* 4
  %_bop3969 = sub i64 %_id3970, 1
  store i64 %_bop3969, i64* %_j3968
  br label %_start3973
_start3973:
  %_id3972 = load i64, i64* %_j3968
  %_bop3971 = icmp sgt i64 %_id3972, 0
  br i1 %_bop3971, label %_body3974, label %_end3975
_body3974:
  %_id3976 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3929
  %_id3978 = load i64, i64* %_j3968
  %_bop3977 = sub i64 %_id3978, 1
  %_index_ptr3979 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3976, i32 0, i32 1, i64 %_bop3977
  %_idx_tmp3980 = load i1, i1* %_index_ptr3979
  %_id3981 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3929
  %_id3982 = load i64, i64* %_j3968
  %_index_ptr3983 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3981, i32 0, i32 1, i64 %_id3982
  store i1 %_idx_tmp3980, i1* %_index_ptr3983
  %_id3985 = load i64, i64* %_j3968
  %_bop3984 = sub i64 %_id3985, 1
  store i64 %_bop3984, i64* %_j3968
  br label %_start3973
_end3975:
  %_id3986 = load i1, i1* %_new_first3956
  %_id3987 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3929
  %_index_ptr3988 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3987, i32 0, i32 1, i32 0
  store i1 %_id3986, i1* %_index_ptr3988
  %_id3990 = load i64, i64* %_i3949
  %_bop3989 = add i64 %_id3990, 1
  store i64 %_bop3989, i64* %_i3949
  br label %_start3953
_end3955:
  %_id3991 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_id3992 = load i64, i64* 4
  call void @print_lfsr({ i64, [4 x i1] }* %_id3991, i64 %_id3992)
  %_cstr_loc3994 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3995, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3994)
  %_id3997 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3929
  %_id3998 = load i64, i64* 4
  call void @print_lfsr({ i64, [0 x i1] }* %_id3997, i64 %_id3998)
  ret i64 0
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
