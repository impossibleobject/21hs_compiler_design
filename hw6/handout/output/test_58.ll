; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str_arr4047 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %_numerator4114, i64 %_denominator4111) {
  %_numerator4115 = alloca i64
  %_denominator4112 = alloca i64
  %_quotient4127 = alloca i64
  %_remainder4130 = alloca i64
  store i64 %_numerator4114, i64* %_numerator4115
  store i64 %_denominator4111, i64* %_denominator4112
  %_denominator4117 = load i64, i64* %_denominator4112
  %_bop4118 = icmp slt i64 %_denominator4117, 0
  br i1 %_bop4118, label %_then4126, label %_else4125
_body4141:
  %_quotient4143 = load i64, i64* %_quotient4127
  %_bop4144 = add i64 %_quotient4143, 1
  store i64 %_bop4144, i64* %_quotient4127
  %_remainder4146 = load i64, i64* %_remainder4130
  %_denominator4147 = load i64, i64* %_denominator4112
  %_bop4148 = sub i64 %_remainder4146, %_denominator4147
  store i64 %_bop4148, i64* %_remainder4130
  br label %_cond4142
_body4167:
  %_quotient4169 = load i64, i64* %_quotient4127
  %_bop4170 = add i64 %_quotient4169, 1
  store i64 %_bop4170, i64* %_quotient4127
  %_remainder4172 = load i64, i64* %_remainder4130
  %_denominator4173 = load i64, i64* %_denominator4112
  %_bop4174 = sub i64 %_remainder4172, %_denominator4173
  store i64 %_bop4174, i64* %_remainder4130
  br label %_cond4168
_cond4142:
  %_remainder4137 = load i64, i64* %_remainder4130
  %_denominator4138 = load i64, i64* %_denominator4112
  %_bop4139 = icmp sge i64 %_remainder4137, %_denominator4138
  br i1 %_bop4139, label %_body4141, label %_post4140
_cond4168:
  %_remainder4163 = load i64, i64* %_remainder4130
  %_denominator4164 = load i64, i64* %_denominator4112
  %_bop4165 = icmp sge i64 %_remainder4163, %_denominator4164
  br i1 %_bop4165, label %_body4167, label %_post4166
_else4125:
  br label %_merge4124
_else4158:
  %_quotient4154 = load i64, i64* %_quotient4127
  %_unop4155 = sub i64 0, %_quotient4154
  %_bop4156 = sub i64 %_unop4155, 1
  ret i64 %_bop4156
_else4161:
  br label %_merge4160
_merge4124:
  store i64 0, i64* %_quotient4127
  %_numerator4129 = load i64, i64* %_numerator4115
  store i64 %_numerator4129, i64* %_remainder4130
  %_numerator4132 = load i64, i64* %_numerator4115
  %_bop4133 = icmp slt i64 %_numerator4132, 0
  br i1 %_bop4133, label %_then4162, label %_else4161
_merge4157:
  br label %_merge4160
_merge4160:
  br label %_cond4168
_post4140:
  %_remainder4150 = load i64, i64* %_remainder4130
  %_bop4151 = icmp eq i64 %_remainder4150, 0
  br i1 %_bop4151, label %_then4159, label %_else4158
_post4166:
  %_quotient4176 = load i64, i64* %_quotient4127
  ret i64 %_quotient4176
_then4126:
  %_denominator4119 = load i64, i64* %_denominator4112
  %_unop4120 = sub i64 0, %_denominator4119
  %_numerator4121 = load i64, i64* %_numerator4115
  %_result4122 = call i64 @euclid_division(i64 %_numerator4121, i64 %_unop4120)
  %_unop4123 = sub i64 0, %_result4122
  ret i64 %_unop4123
_then4159:
  %_quotient4152 = load i64, i64* %_quotient4127
  %_unop4153 = sub i64 0, %_quotient4152
  ret i64 %_unop4153
_then4162:
  %_numerator4134 = load i64, i64* %_numerator4115
  %_unop4135 = sub i64 0, %_numerator4134
  store i64 %_unop4135, i64* %_remainder4130
  br label %_cond4142
}

define i1 @binary_search({ i64, [0 x i64] }* %_input4062, i64 %_key4059, i64 %_min4056, i64 %_max4053) {
  %_input4063 = alloca { i64, [0 x i64] }*
  %_key4060 = alloca i64
  %_min4057 = alloca i64
  %_max4054 = alloca i64
  %_midpt4075 = alloca i64
  store { i64, [0 x i64] }* %_input4062, { i64, [0 x i64] }** %_input4063
  store i64 %_key4059, i64* %_key4060
  store i64 %_min4056, i64* %_min4057
  store i64 %_max4053, i64* %_max4054
  %_max4065 = load i64, i64* %_max4054
  %_min4066 = load i64, i64* %_min4057
  %_bop4067 = icmp slt i64 %_max4065, %_min4066
  br i1 %_bop4067, label %_then4070, label %_else4069
_else4069:
  br label %_merge4068
_else4092:
  br label %_merge4091
_else4109:
  ret i1 1
_merge4068:
  %_max4071 = load i64, i64* %_max4054
  %_min4072 = load i64, i64* %_min4057
  %_bop4073 = add i64 %_max4071, %_min4072
  %_result4074 = call i64 @euclid_division(i64 %_bop4073, i64 2)
  store i64 %_result4074, i64* %_midpt4075
  %_input4077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4063
  %_midpt4078 = load i64, i64* %_midpt4075
  %_tmp4080 = bitcast { i64, [0 x i64] }* %_input4077 to i64*
  call void @oat_assert_array_length(i64* %_tmp4080, i64 %_midpt4078)
  %_index_ptr4081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4077, i32 0, i32 1, i64 %_midpt4078
  %_index4082 = load i64, i64* %_index_ptr4081
  %_key4083 = load i64, i64* %_key4060
  %_bop4084 = icmp sgt i64 %_index4082, %_key4083
  br i1 %_bop4084, label %_then4093, label %_else4092
_merge4091:
  %_input4094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4063
  %_midpt4095 = load i64, i64* %_midpt4075
  %_tmp4097 = bitcast { i64, [0 x i64] }* %_input4094 to i64*
  call void @oat_assert_array_length(i64* %_tmp4097, i64 %_midpt4095)
  %_index_ptr4098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4094, i32 0, i32 1, i64 %_midpt4095
  %_index4099 = load i64, i64* %_index_ptr4098
  %_key4100 = load i64, i64* %_key4060
  %_bop4101 = icmp slt i64 %_index4099, %_key4100
  br i1 %_bop4101, label %_then4110, label %_else4109
_merge4108:
  ret i1 0
_then4070:
  ret i1 0
_then4093:
  %_midpt4085 = load i64, i64* %_midpt4075
  %_bop4086 = sub i64 %_midpt4085, 1
  %_min4087 = load i64, i64* %_min4057
  %_key4088 = load i64, i64* %_key4060
  %_input4089 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4063
  %_result4090 = call i1 @binary_search({ i64, [0 x i64] }* %_input4089, i64 %_key4088, i64 %_min4087, i64 %_bop4086)
  ret i1 %_result4090
_then4110:
  %_max4102 = load i64, i64* %_max4054
  %_midpt4103 = load i64, i64* %_midpt4075
  %_bop4104 = add i64 %_midpt4103, 1
  %_key4105 = load i64, i64* %_key4060
  %_input4106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4063
  %_result4107 = call i1 @binary_search({ i64, [0 x i64] }* %_input4106, i64 %_key4105, i64 %_bop4104, i64 %_max4102)
  ret i1 %_result4107
}

define i64 @program(i64 %_argc3984, { i64, [0 x i8*] }* %_argv3981) {
  %_i3991 = alloca i64
  %_test_array4010 = alloca { i64, [0 x i64] }*
  %_i4012 = alloca i64
  %_even4033 = alloca i1
  %_odd4037 = alloca i1
  %_raw_array3989 = call i64* @oat_alloc_array(i64 100)
  %_array3990 = bitcast i64* %_raw_array3989 to { i64, [0 x i64] }*
  %_bnd_3988 = alloca i64
  store i64 100, i64* %_bnd_3988
  %_ptr_3987 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3990, { i64, [0 x i64] }** %_ptr_3987
  store i64 0, i64* %_i3991
  br label %_cond3998
_body3997:
  %__ptr_39873999 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_3987
  %_i4000 = load i64, i64* %_i3991
  %_tmp4002 = bitcast { i64, [0 x i64] }* %__ptr_39873999 to i64*
  call void @oat_assert_array_length(i64* %_tmp4002, i64 %_i4000)
  %_index_ptr4003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_39873999, i32 0, i32 1, i64 %_i4000
  store i64 0, i64* %_index_ptr4003
  %_i4005 = load i64, i64* %_i3991
  %_bop4006 = add i64 %_i4005, 1
  store i64 %_bop4006, i64* %_i3991
  br label %_cond3998
_body4017:
  %_test_array4019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4010
  %_i4020 = load i64, i64* %_i4012
  %_tmp4022 = bitcast { i64, [0 x i64] }* %_test_array4019 to i64*
  call void @oat_assert_array_length(i64* %_tmp4022, i64 %_i4020)
  %_index_ptr4023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array4019, i32 0, i32 1, i64 %_i4020
  %_i4024 = load i64, i64* %_i4012
  %_bop4025 = mul i64 2, %_i4024
  %_bop4026 = add i64 %_bop4025, 1
  store i64 %_bop4026, i64* %_index_ptr4023
  %_i4028 = load i64, i64* %_i4012
  %_bop4029 = add i64 %_i4028, 1
  store i64 %_bop4029, i64* %_i4012
  br label %_cond4018
_cond3998:
  %_i3993 = load i64, i64* %_i3991
  %__bnd_39883994 = load i64, i64* %_bnd_3988
  %_bop3995 = icmp slt i64 %_i3993, %__bnd_39883994
  br i1 %_bop3995, label %_body3997, label %_post3996
_cond4018:
  %_i4014 = load i64, i64* %_i4012
  %_bop4015 = icmp slt i64 %_i4014, 100
  br i1 %_bop4015, label %_body4017, label %_post4016
_else4051:
  br label %_merge4050
_merge4050:
  ret i64 0
_post3996:
  store { i64, [0 x i64] }* %_array3990, { i64, [0 x i64] }** %_test_array4010
  store i64 0, i64* %_i4012
  br label %_cond4018
_post4016:
  %_test_array4031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4010
  %_result4032 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4031, i64 80, i64 0, i64 99)
  store i1 %_result4032, i1* %_even4033
  %_test_array4035 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4010
  %_result4036 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4035, i64 81, i64 0, i64 99)
  store i1 %_result4036, i1* %_odd4037
  %_even4039 = load i1, i1* %_even4033
  %_odd4040 = load i1, i1* %_odd4037
  %_bop4041 = and i1 %_even4039, %_odd4040
  %_unop4042 = icmp eq i1 %_bop4041, 0
  %_even4043 = load i1, i1* %_even4033
  %_odd4044 = load i1, i1* %_odd4037
  %_bop4045 = or i1 %_even4043, %_odd4044
  %_bop4046 = and i1 %_unop4042, %_bop4045
  br i1 %_bop4046, label %_then4052, label %_else4051
_then4052:
  %_str4048 = getelementptr [9 x i8], [9 x i8]* @_str_arr4047, i32 0, i32 0
  call void @print_string(i8* %_str4048)
  br label %_merge4050
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
