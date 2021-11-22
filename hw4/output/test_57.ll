; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_garr4024 to { i64, [0 x i1] }*)
@_garr4024 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_cstr_glb4010 = global [2 x i8] c"T\00"
@_cstr_glb4012 = global [2 x i8] c"F\00"
@_cstr_glb3982 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x4013 = alloca i1
  store i1 %x, i1* %_x4013
  %_y4014 = alloca i1
  store i1 %y, i1* %_y4014
  %_id4017 = load i1*, i1** %_x4013
  %_id4019 = load i1*, i1** %_y4014
  %_uop4018 = icmp eq i1* 0, %_id4019
  %_bop4016 = and i1 %_id4017, %_uop4018
  %_id4022 = load i1*, i1** %_x4013
  %_uop4021 = icmp eq i1* 0, %_id4022
  %_id4023 = load i1*, i1** %_y4014
  %_bop4020 = and i1 %_uop4021, %_id4023
  %_bop4015 = or i1 %_bop4016, %_bop4020
  ret i1 %_bop4015
}

define i8* @string_of_bool(i1 %b) {
  %_b4004 = alloca i1
  store i1 %b, i1* %_b4004
  %_id4005 = load i1*, i1** %_b4004
  br i1 %_id4005, label %_then4006, label %_else4007
_then4006:
  %_cstr_loc4009 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb4010, i32 0, i32 0
  ret i8* %_cstr_loc4009
_else4007:
  %_cstr_loc4011 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb4012, i32 0, i32 0
  ret i8* %_cstr_loc4011
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register3987 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register3987
  %_len3988 = alloca i64
  store i64 %len, i64* %_len3988
  %_i3989 = alloca i64
  store i64 0, i64* %_i3989
  br label %_start3993
_start3993:
  %_id3991 = load i64, i64* %_i3989
  %_id3992 = load i64*, i64** %_len3988
  %_bop3990 = icmp slt i64 %_id3991, %_id3992
  br i1 %_bop3990, label %_body3994, label %_end3995
_body3994:
  %_Call_retval4000 = call i8* @string_of_bool(i1 %_idx_tmp3999)
  %_id3996 = load { i64, [0 x i1] }**, { i64, [0 x i1] }*** %_lfsr_register3987
  %_id3997 = load i64, i64* %_i3989
  %_index_ptr3998 = getelementptr { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id3996, i32 0, i32 0, i32 1, i64 %_id3997
  %_idx_tmp3999 = load i1, i1* %_index_ptr3998
  call void @print_string(i8* %_Call_retval4000)
  %_id4003 = load i64, i64* %_i3989
  %_bop4002 = add i64 %_id4003, 1
  store i64 %_bop4002, i64* %_i3989
  br label %_start3993
_end3995:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3914 = alloca i64
  store i64 %argc, i64* %_argc3914
  %_argv3915 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3915
  %_lfsr_register3916 = alloca { i64, [0 x i1] }*
  %_i3920 = alloca i64
  %_i3936 = alloca i64
  %_new_first3943 = alloca i1
  %_j3955 = alloca i64
  %_id3917 = load i64, i64* @lfsr_length
  %_raw_array3918 = call i64* @oat_alloc_array(i64 %_id3917)
  %_array3919 = bitcast i64* %_raw_array3918 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3919, { i64, [0 x i1] }** %_lfsr_register3916
  store i64 0, i64* %_i3920
  br label %_start3924
_start3924:
  %_id3922 = load i64, i64* %_i3920
  %_id3923 = load i64, i64* @lfsr_length
  %_bop3921 = icmp slt i64 %_id3922, %_id3923
  br i1 %_bop3921, label %_body3925, label %_end3926
_body3925:
  %_id3927 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_id3928 = load i64, i64* %_i3920
  %_index_ptr3929 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3927, i32 0, i32 1, i64 %_id3928
  %_idx_tmp3930 = load i1, i1* %_index_ptr3929
  %_id3931 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3916
  %_id3932 = load i64, i64* %_i3920
  %_index_ptr3933 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3931, i32 0, i32 1, i64 %_id3932
  store i1 %_idx_tmp3930, i1* %_index_ptr3933
  %_id3935 = load i64, i64* %_i3920
  %_bop3934 = add i64 %_id3935, 1
  store i64 %_bop3934, i64* %_i3920
  br label %_start3924
_end3926:
  store i64 0, i64* %_i3936
  br label %_start3940
_start3940:
  %_id3938 = load i64, i64* %_i3936
  %_id3939 = load i64, i64* @lfsr_iterations
  %_bop3937 = icmp slt i64 %_id3938, %_id3939
  br i1 %_bop3937, label %_body3941, label %_end3942
_body3941:
  %_idx_tmp3948 = load i1, i1* %_index_ptr3947
  %_index_ptr3947 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3944, i32 0, i32 1, i64 %_bop3945
  %_bop3945 = sub i64 %_id3946, 1
  %_id3946 = load i64, i64* @lfsr_length
  %_id3944 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3916
  %_idx_tmp3953 = load i1, i1* %_index_ptr3952
  %_index_ptr3952 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3949, i32 0, i32 1, i64 %_bop3950
  %_bop3950 = sub i64 %_id3951, 2
  %_id3951 = load i64, i64* @lfsr_length
  %_id3949 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3916
  %_Call_retval3954 = call i1 @xor(i1 %_idx_tmp3948, i1 %_idx_tmp3953)
  store i1 %_Call_retval3954, i1* %_new_first3943
  %_id3957 = load i64, i64* @lfsr_length
  %_bop3956 = sub i64 %_id3957, 1
  store i64 %_bop3956, i64* %_j3955
  br label %_start3960
_start3960:
  %_id3959 = load i64, i64* %_j3955
  %_bop3958 = icmp sgt i64 %_id3959, 0
  br i1 %_bop3958, label %_body3961, label %_end3962
_body3961:
  %_id3963 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3916
  %_id3965 = load i64, i64* %_j3955
  %_bop3964 = sub i64 %_id3965, 1
  %_index_ptr3966 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3963, i32 0, i32 1, i64 %_bop3964
  %_idx_tmp3967 = load i1, i1* %_index_ptr3966
  %_id3968 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3916
  %_id3969 = load i64, i64* %_j3955
  %_index_ptr3970 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3968, i32 0, i32 1, i64 %_id3969
  store i1 %_idx_tmp3967, i1* %_index_ptr3970
  %_id3972 = load i64, i64* %_j3955
  %_bop3971 = sub i64 %_id3972, 1
  store i64 %_bop3971, i64* %_j3955
  br label %_start3960
_end3962:
  %_id3973 = load i1, i1* %_new_first3943
  %_id3974 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3916
  %_index_ptr3975 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3974, i32 0, i32 1, i32 0
  store i1 %_id3973, i1* %_index_ptr3975
  %_id3977 = load i64, i64* %_i3936
  %_bop3976 = add i64 %_id3977, 1
  store i64 %_bop3976, i64* %_i3936
  br label %_start3940
_end3942:
  %_id3978 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_id3979 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id3978, i64 %_id3979)
  %_cstr_loc3981 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3982, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3981)
  %_id3984 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3916
  %_id3985 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_id3984, i64 %_id3985)
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
