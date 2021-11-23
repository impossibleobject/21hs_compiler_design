; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_garr4027 to { i64, [0 x i1] }*)
@_garr4027 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_cstr_glb4013 = global [2 x i8] c"T\00"
@_cstr_glb4015 = global [2 x i8] c"F\00"
@_cstr_glb3985 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x4016 = alloca i1
  store i1 %x, i1* %_x4016
  %_y4017 = alloca i1
  store i1 %y, i1* %_y4017
  %_id4020 = load i1, i1* %_x4016
  %_id4022 = load i1, i1* %_y4017
  %_uop4021 = icmp eq i1 0, %_id4022
  %_bop4019 = and i1 %_id4020, %_uop4021
  %_id4025 = load i1, i1* %_x4016
  %_uop4024 = icmp eq i1 0, %_id4025
  %_id4026 = load i1, i1* %_y4017
  %_bop4023 = and i1 %_uop4024, %_id4026
  %_bop4018 = or i1 %_bop4019, %_bop4023
  ret i1 %_bop4018
}

define i8* @string_of_bool(i1 %b) {
  %_b4007 = alloca i1
  store i1 %b, i1* %_b4007
  %_id4008 = load i1, i1* %_b4007
  br i1 %_id4008, label %_then4009, label %_else4010
_then4009:
  %_cstr_loc4012 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb4013, i32 0, i32 0
  ret i8* %_cstr_loc4012
_else4010:
  %_cstr_loc4014 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb4015, i32 0, i32 0
  ret i8* %_cstr_loc4014
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_i3992 = alloca i64
  %_lfsr_register3990 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register3990
  %_len3991 = alloca i64
  store i64 %len, i64* %_len3991
  store i64 0, i64* %_i3992
  br label %_start3996
_start3996:
  %_id3994 = load i64, i64* %_i3992
  %_id3995 = load i64, i64* %_len3991
  %_bop3993 = icmp slt i64 %_id3994, %_id3995
  br i1 %_bop3993, label %_body3997, label %_end3998
_body3997:
  %_id3999 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3990
  %_id4000 = load i64, i64* %_i3992
  %_index_ptr4001 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3999, i32 0, i32 1, i64 %_id4000
  %_idx_tmp4002 = load i1, i1* %_index_ptr4001
  %_Call_retval4003 = call i8* @string_of_bool(i1 %_idx_tmp4002)
  call void @print_string(i8* %_Call_retval4003)
  %_id4006 = load i64, i64* %_i3992
  %_bop4005 = add i64 %_id4006, 1
  store i64 %_bop4005, i64* %_i3992
  br label %_start3996
_end3998:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_lfsr_register3919 = alloca { i64, [0 x i1] }*
  %_i3923 = alloca i64
  %_i3939 = alloca i64
  %_new_first3946 = alloca i1
  %_j3958 = alloca i64
  %_argc3917 = alloca i64
  store i64 %argc, i64* %_argc3917
  %_argv3918 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3918
  %_id3920 = load i64, i64* @lfsr_length
  %_raw_array3921 = call i64* @oat_alloc_array(i64 %_id3920)
  %_array3922 = bitcast i64* %_raw_array3921 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3922, { i64, [0 x i1] }** %_lfsr_register3919
  store i64 0, i64* %_i3923
  br label %_start3927
_start3927:
  %_id3925 = load i64, i64* %_i3923
  %_id3926 = load i64, i64* @lfsr_length
  %_bop3924 = icmp slt i64 %_id3925, %_id3926
  br i1 %_bop3924, label %_body3928, label %_end3929
_body3928:
  %_id3930 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_id3931 = load i64, i64* %_i3923
  %_index_ptr3932 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3930, i32 0, i32 1, i64 %_id3931
  %_idx_tmp3933 = load i1, i1* %_index_ptr3932
  %_id3934 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3919
  %_id3935 = load i64, i64* %_i3923
  %_index_ptr3936 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3934, i32 0, i32 1, i64 %_id3935
  store i1 %_idx_tmp3933, i1* %_index_ptr3936
  %_id3938 = load i64, i64* %_i3923
  %_bop3937 = add i64 %_id3938, 1
  store i64 %_bop3937, i64* %_i3923
  br label %_start3927
_end3929:
  store i64 0, i64* %_i3939
  br label %_start3943
_start3943:
  %_id3941 = load i64, i64* %_i3939
  %_id3942 = load i64, i64* @lfsr_iterations
  %_bop3940 = icmp slt i64 %_id3941, %_id3942
  br i1 %_bop3940, label %_body3944, label %_end3945
_body3944:
  %_id3952 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3919
  %_id3954 = load i64, i64* @lfsr_length
  %_bop3953 = sub i64 %_id3954, 2
  %_index_ptr3955 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3952, i32 0, i32 1, i64 %_bop3953
  %_idx_tmp3956 = load i1, i1* %_index_ptr3955
  %_id3947 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3919
  %_id3949 = load i64, i64* @lfsr_length
  %_bop3948 = sub i64 %_id3949, 1
  %_index_ptr3950 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3947, i32 0, i32 1, i64 %_bop3948
  %_idx_tmp3951 = load i1, i1* %_index_ptr3950
  %_Call_retval3957 = call i1 @xor(i1 %_idx_tmp3951, i1 %_idx_tmp3956)
  store i1 %_Call_retval3957, i1* %_new_first3946
  %_id3960 = load i64, i64* @lfsr_length
  %_bop3959 = sub i64 %_id3960, 1
  store i64 %_bop3959, i64* %_j3958
  br label %_start3963
_start3963:
  %_id3962 = load i64, i64* %_j3958
  %_bop3961 = icmp sgt i64 %_id3962, 0
  br i1 %_bop3961, label %_body3964, label %_end3965
_body3964:
  %_id3966 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3919
  %_id3968 = load i64, i64* %_j3958
  %_bop3967 = sub i64 %_id3968, 1
  %_index_ptr3969 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3966, i32 0, i32 1, i64 %_bop3967
  %_idx_tmp3970 = load i1, i1* %_index_ptr3969
  %_id3971 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3919
  %_id3972 = load i64, i64* %_j3958
  %_index_ptr3973 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3971, i32 0, i32 1, i64 %_id3972
  store i1 %_idx_tmp3970, i1* %_index_ptr3973
  %_id3975 = load i64, i64* %_j3958
  %_bop3974 = sub i64 %_id3975, 1
  store i64 %_bop3974, i64* %_j3958
  br label %_start3963
_end3965:
  %_id3976 = load i1, i1* %_new_first3946
  %_id3977 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3919
  %_index_ptr3978 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id3977, i32 0, i32 1, i32 0
  store i1 %_id3976, i1* %_index_ptr3978
  %_id3980 = load i64, i64* %_i3939
  %_bop3979 = add i64 %_id3980, 1
  store i64 %_bop3979, i64* %_i3939
  br label %_start3943
_end3945:
  %_id3982 = load i64, i64* @lfsr_length
  %_id3981 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  call void @print_lfsr({ i64, [0 x i1] }* %_id3981, i64 %_id3982)
  %_cstr_loc3984 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb3985, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc3984)
  %_id3988 = load i64, i64* @lfsr_length
  %_id3987 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register3919
  call void @print_lfsr({ i64, [0 x i1] }* %_id3987, i64 %_id3988)
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
