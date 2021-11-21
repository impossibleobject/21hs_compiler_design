; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_4142 = global i1 1
@_4143 = global i1 0
@_4144 = global i1 1
@_4145 = global i1 0
@_cstr_glb4125 = global [2 x i8] c"T\00"
@_cstr_glb4128 = global [2 x i8] c"F\00"
@_cstr_glb4096 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x4130 = alloca i1
  store i1 %x, i1* %_x4130
  %_y4131 = alloca i1
  store i1 %y, i1* %_y4131
  %_id4134 = load i1, i1* %_x4130
  %_uop4135 = icmp eq i1 0, %_id4136
  %_id4136 = load i1, i1* %_y4131
  %_bop4133 = and i1 %_id4134, %_uop4135
  %_uop4138 = icmp eq i1 0, %_id4139
  %_id4139 = load i1, i1* %_x4130
  %_id4140 = load i1, i1* %_y4131
  %_bop4137 = and i1 %_uop4138, %_id4140
  %_bop4132 = or i1 %_bop4133, %_bop4137
  ret i1 %_bop4132
}

define i8* @string_of_bool(i1 %b) {
  %_b4119 = alloca i1
  store i1 %b, i1* %_b4119
  %_id4120 = load i1, i1* %_b4119
  br i1 %_id4120, label %_then4121, label %_else4122
_then4121:
  %_cstr_loc4124 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb4125, i32 0, i32 0
  %_4126 = load i8, i8* %_cstr_loc4124
  ret i8* %_4126
_else4122:
  %_cstr_loc4127 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb4128, i32 0, i32 0
  %_4129 = load i8, i8* %_cstr_loc4127
  ret i8* %_4129
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register4102 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register4102
  %_len4103 = alloca i64
  store i64 %len, i64* %_len4103
  %_i4104 = alloca i64
  store i64 0, i64* %_i4104
  br label %_start4108
_start4108:
  %_id4106 = load i64, i64* %_i4104
  %_id4107 = load i64, i64* %_len4103
  %_bop4105 = icmp slt i64 %_id4106, %_id4107
  br i1 %_bop4105, label %_body4109, label %_end4110
_body4109:
  %_Call_retval4114 = call i8* @string_of_bool(i1* %_index_ptr4113)
  %_id4111 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4102
  %_id4112 = load i64, i64* %_i4104
  %_index_ptr4113 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id4111, i32 0, i32 1, i64 %_id4112
  call void @print_string(i8* %_Call_retval4114)
  %_id4118 = load i64, i64* %_i4104
  %_bop4117 = add i64 %_id4118, 1
  store i64 %_bop4117, i64* %_i4104
  br label %_start4108
_end4110:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4029 = alloca i64
  store i64 %argc, i64* %_argc4029
  %_argv4030 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4030
  %_lfsr_register4031 = alloca { i64, [0 x i1] }*
  %_i4035 = alloca i64
  %_i4051 = alloca i64
  %_new_first4058 = alloca i1
  %_j4068 = alloca i64
  store { i64, [0 x i1] }* %_array4034, { i64, [0 x i1] }** %_lfsr_register4031
  %_raw_array4033 = call i64* @oat_alloc_array(i64 4)
  %_array4034 = bitcast i64* %_raw_array4033 to { i64, [0 x i1] }*
  store i64 0, i64* %_i4035
  br label %_start4039
_start4039:
  %_id4037 = load i64, i64* %_i4035
  %_bop4036 = icmp slt i64 %_id4037, 4
  br i1 %_bop4036, label %_body4040, label %_end4041
_body4040:
  %_id4042 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4031
  %_id4043 = load i64, i64* %_i4035
  %_index_ptr4044 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id4042, i32 0, i32 1, i64 %_id4043
  %_id4045 = load { i64, [4 x i1] }, { i64, [4 x i1] }* @lfsr_init_values
  %_id4046 = load i64, i64* %_i4035
  %_index_ptr4047 = getelementptr { i64, [4 x i1] }*, { i64, [4 x i1] }** %_id4045, i32 0, i32 1, i64 %_id4046
  store i1* %_index_ptr4047, i1** %_index_ptr4044
  %_id4050 = load i64, i64* %_i4035
  %_bop4049 = add i64 %_id4050, 1
  store i64 %_bop4049, i64* %_i4035
  br label %_start4039
_end4041:
  store i64 0, i64* %_i4051
  br label %_start4055
_start4055:
  %_id4053 = load i64, i64* %_i4051
  %_bop4052 = icmp slt i64 %_id4053, 5
  br i1 %_bop4052, label %_body4056, label %_end4057
_body4056:
  store i1 %_Call_retval4067, i1* %_new_first4058
  %_index_ptr4062 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id4059, i32 0, i32 1, i64 %_bop4060
  %_bop4060 = sub i64 4, 1
  %_id4059 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4031
  %_index_ptr4066 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id4063, i32 0, i32 1, i64 %_bop4064
  %_bop4064 = sub i64 4, 2
  %_id4063 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4031
  %_Call_retval4067 = call i1 @xor(i1* %_index_ptr4062, i1* %_index_ptr4066)
  store i64 %_bop4069, i64* %_j4068
  %_bop4069 = sub i64 4, 1
  br label %_start4073
_start4073:
  %_id4072 = load i64, i64* %_j4068
  %_bop4071 = icmp sgt i64 %_id4072, 0
  br i1 %_bop4071, label %_body4074, label %_end4075
_body4074:
  %_id4076 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4031
  %_id4077 = load i64, i64* %_j4068
  %_index_ptr4078 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id4076, i32 0, i32 1, i64 %_id4077
  %_id4079 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4031
  %_id4081 = load i64, i64* %_j4068
  %_bop4080 = sub i64 %_id4081, 1
  %_index_ptr4082 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id4079, i32 0, i32 1, i64 %_bop4080
  store i1* %_index_ptr4082, i1** %_index_ptr4078
  %_id4085 = load i64, i64* %_j4068
  %_bop4084 = sub i64 %_id4085, 1
  store i64 %_bop4084, i64* %_j4068
  br label %_start4073
_end4075:
  %_id4086 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4031
  %_index_ptr4087 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id4086, i32 0, i32 1, i32 0
  %_id4088 = load i1, i1* %_new_first4058
  store i1 %_id4088, i1* %_index_ptr4087
  %_id4091 = load i64, i64* %_i4051
  %_bop4090 = add i64 %_id4091, 1
  store i64 %_bop4090, i64* %_i4051
  br label %_start4055
_end4057:
  %_id4092 = load { i64, [4 x i1] }, { i64, [4 x i1] }* @lfsr_init_values
  call void @print_lfsr({ i64, [4 x i1] }** %_id4092, i64 4)
  %_cstr_loc4095 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb4096, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc4095)
  %_id4098 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4031
  call void @print_lfsr({ i64, [0 x i1] }* %_id4098, i64 4)
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
