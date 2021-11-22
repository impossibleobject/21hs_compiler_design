; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board4149 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4149
  %_i4150 = alloca i64
  store i64 %i, i64* %_i4150
  %_j4151 = alloca i64
  store i64 %j, i64* %_j4151
  %_count4152 = alloca i64
  store i64 %count, i64* %_count4152
  %_id4157 = load i64, i64* %_i4150
  %_bop4156 = icmp sge i64 %_id4157, 0
  %_id4159 = load i64, i64* %_j4151
  %_bop4158 = icmp sge i64 %_id4159, 0
  %_bop4155 = and i1 %_bop4156, %_bop4158
  %_id4161 = load i64, i64* %_i4150
  %_id4162 = load i64, i64* @len
  %_bop4160 = icmp slt i64 %_id4161, %_id4162
  %_bop4154 = and i1 %_bop4155, %_bop4160
  %_id4164 = load i64, i64* %_j4151
  %_id4165 = load i64, i64* @len
  %_bop4163 = icmp slt i64 %_id4164, %_id4165
  %_bop4153 = and i1 %_bop4154, %_bop4163
  br i1 %_bop4153, label %_then4166, label %_else4167
_then4166:
  %_id4170 = load i64, i64* %_count4152
  %_id4171 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4149
  %_id4172 = load i64, i64* %_i4150
  %_index_ptr4173 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4171, i32 0, i32 1, i64 %_id4172
  %_idx_tmp4174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4173
  %_id4175 = load i64, i64* %_j4151
  %_index_ptr4176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp4174, i32 0, i32 1, i64 %_id4175
  %_idx_tmp4177 = load i64, i64* %_index_ptr4176
  %_bop4169 = add i64 %_id4170, %_idx_tmp4177
  ret i64 %_bop4169
_else4167:
  %_id4178 = load i64, i64* %_count4152
  ret i64 %_id4178
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %alive = alloca i64
  %count = alloca i64
  %_board4067 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_i4068 = alloca i64
  store i64 %i, i64* %_i4068
  %_j4069 = alloca i64
  store i64 %j, i64* %_j4069
  %_id4070 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_id4071 = load i64, i64* %_i4068
  %_index_ptr4072 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4070, i32 0, i32 1, i64 %_id4071
  %_idx_tmp4073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4072
  %_id4074 = load i64, i64* %_j4069
  %_index_ptr4075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp4073, i32 0, i32 1, i64 %_id4074
  %_idx_tmp4076 = load i64, i64* %_index_ptr4075
  store i64 %_idx_tmp4076, i64* %alive
  store i64 0, i64* %count
  %_id4077 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_bop4078 = sub i64 %_id4079, 1
  %_id4079 = load i64, i64* %_i4068
  %_bop4080 = sub i64 %_id4081, 1
  %_id4081 = load i64, i64* %_j4069
  %_id4082 = load i64, i64* %count
  %_Call_retval4083 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4077, i64 %_bop4078, i64 %_bop4080, i64 %_id4082)
  store i64 %_Call_retval4083, i64* %count
  %_id4084 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_bop4085 = sub i64 %_id4086, 1
  %_id4086 = load i64, i64* %_i4068
  %_id4087 = load i64, i64* %_j4069
  %_id4088 = load i64, i64* %count
  %_Call_retval4089 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4084, i64 %_bop4085, i64 %_id4087, i64 %_id4088)
  store i64 %_Call_retval4089, i64* %count
  %_id4090 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_bop4091 = sub i64 %_id4092, 1
  %_id4092 = load i64, i64* %_i4068
  %_bop4093 = add i64 %_id4094, 1
  %_id4094 = load i64, i64* %_j4069
  %_id4095 = load i64, i64* %count
  %_Call_retval4096 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4090, i64 %_bop4091, i64 %_bop4093, i64 %_id4095)
  store i64 %_Call_retval4096, i64* %count
  %_id4097 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_id4098 = load i64, i64* %_i4068
  %_bop4099 = sub i64 %_id4100, 1
  %_id4100 = load i64, i64* %_j4069
  %_id4101 = load i64, i64* %count
  %_Call_retval4102 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4097, i64 %_id4098, i64 %_bop4099, i64 %_id4101)
  store i64 %_Call_retval4102, i64* %count
  %_id4103 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_id4104 = load i64, i64* %_i4068
  %_bop4105 = add i64 %_id4106, 1
  %_id4106 = load i64, i64* %_j4069
  %_id4107 = load i64, i64* %count
  %_Call_retval4108 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4103, i64 %_id4104, i64 %_bop4105, i64 %_id4107)
  store i64 %_Call_retval4108, i64* %count
  %_id4109 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_bop4110 = add i64 %_id4111, 1
  %_id4111 = load i64, i64* %_i4068
  %_bop4112 = sub i64 %_id4113, 1
  %_id4113 = load i64, i64* %_j4069
  %_id4114 = load i64, i64* %count
  %_Call_retval4115 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4109, i64 %_bop4110, i64 %_bop4112, i64 %_id4114)
  store i64 %_Call_retval4115, i64* %count
  %_id4116 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_bop4117 = add i64 %_id4118, 1
  %_id4118 = load i64, i64* %_i4068
  %_id4119 = load i64, i64* %_j4069
  %_id4120 = load i64, i64* %count
  %_Call_retval4121 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4116, i64 %_bop4117, i64 %_id4119, i64 %_id4120)
  store i64 %_Call_retval4121, i64* %count
  %_id4122 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4067
  %_bop4123 = add i64 %_id4124, 1
  %_id4124 = load i64, i64* %_i4068
  %_bop4125 = add i64 %_id4126, 1
  %_id4126 = load i64, i64* %_j4069
  %_id4127 = load i64, i64* %count
  %_Call_retval4128 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4122, i64 %_bop4123, i64 %_bop4125, i64 %_id4127)
  store i64 %_Call_retval4128, i64* %count
  %_id4130 = load i64, i64* %alive
  %_bop4129 = icmp eq i64 %_id4130, 1
  br i1 %_bop4129, label %_then4131, label %_else4132
_then4131:
  %_id4135 = load i64, i64* %count
  %_bop4134 = icmp slt i64 %_id4135, 2
  br i1 %_bop4134, label %_then4136, label %_else4137
_then4136:
  ret i64 0
_else4137:
  %_id4140 = load i64, i64* %count
  %_bop4139 = icmp slt i64 %_id4140, 4
  br i1 %_bop4139, label %_then4141, label %_else4142
_then4141:
  ret i64 1
_else4142:
  br label %_end4143
_end4143:
  br label %_end4138
_end4138:
  ret i64 0
_else4132:
  br label %_end4133
_end4133:
  %_id4145 = load i64, i64* %count
  %_bop4144 = icmp eq i64 %_id4145, 3
  br i1 %_bop4144, label %_then4146, label %_else4147
_then4146:
  ret i64 1
_else4147:
  ret i64 0
_end4148:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %board = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %new_board = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %i = alloca i64
  %j = alloca i64
  %i = alloca i64
  %j = alloca i64
  %_argc3952 = alloca i64
  store i64 %argc, i64* %_argc3952
  %_argv3953 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3953
  %_raw_array3954 = call i64* @oat_alloc_array(i64 4)
  %_array3955 = bitcast i64* %_raw_array3954 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3974 = call i64* @oat_alloc_array(i64 4)
  %_array3975 = bitcast i64* %_raw_array3974 to { i64, [0 x i64] }*
  %_CArr_elem_33979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3975, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_33979
  %_CArr_elem_23978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3975, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_23978
  %_CArr_elem_13977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3975, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_13977
  %_CArr_elem_03976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3975, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03976
  %_CArr_elem_33983 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3955, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array3975, { i64, [0 x i64] }** %_CArr_elem_33983
  %_raw_array3968 = call i64* @oat_alloc_array(i64 4)
  %_array3969 = bitcast i64* %_raw_array3968 to { i64, [0 x i64] }*
  %_CArr_elem_33973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3969, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_33973
  %_CArr_elem_23972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3969, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_23972
  %_CArr_elem_13971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3969, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_13971
  %_CArr_elem_03970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3969, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_03970
  %_CArr_elem_23982 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3955, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3969, { i64, [0 x i64] }** %_CArr_elem_23982
  %_raw_array3962 = call i64* @oat_alloc_array(i64 4)
  %_array3963 = bitcast i64* %_raw_array3962 to { i64, [0 x i64] }*
  %_CArr_elem_33967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3963, i32 0, i32 1, i32 3
  store i64 1, i64* %_CArr_elem_33967
  %_CArr_elem_23966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3963, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_23966
  %_CArr_elem_13965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3963, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_13965
  %_CArr_elem_03964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3963, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03964
  %_CArr_elem_13981 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3955, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3963, { i64, [0 x i64] }** %_CArr_elem_13981
  %_raw_array3956 = call i64* @oat_alloc_array(i64 4)
  %_array3957 = bitcast i64* %_raw_array3956 to { i64, [0 x i64] }*
  %_CArr_elem_33961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3957, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_33961
  %_CArr_elem_23960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3957, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_23960
  %_CArr_elem_13959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3957, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_13959
  %_CArr_elem_03958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3957, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03958
  %_CArr_elem_03980 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3955, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3957, { i64, [0 x i64] }** %_CArr_elem_03980
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3955, { i64, [0 x { i64, [0 x i64] }*] }** %board
  %_raw_array3984 = call i64* @oat_alloc_array(i64 4)
  %_array3985 = bitcast i64* %_raw_array3984 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4004 = call i64* @oat_alloc_array(i64 4)
  %_array4005 = bitcast i64* %_raw_array4004 to { i64, [0 x i64] }*
  %_CArr_elem_34009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4005, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_34009
  %_CArr_elem_24008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4005, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_24008
  %_CArr_elem_14007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4005, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_14007
  %_CArr_elem_04006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4005, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04006
  %_CArr_elem_34013 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3985, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4005, { i64, [0 x i64] }** %_CArr_elem_34013
  %_raw_array3998 = call i64* @oat_alloc_array(i64 4)
  %_array3999 = bitcast i64* %_raw_array3998 to { i64, [0 x i64] }*
  %_CArr_elem_34003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3999, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_34003
  %_CArr_elem_24002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3999, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_24002
  %_CArr_elem_14001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3999, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_14001
  %_CArr_elem_04000 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3999, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04000
  %_CArr_elem_24012 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3985, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3999, { i64, [0 x i64] }** %_CArr_elem_24012
  %_raw_array3992 = call i64* @oat_alloc_array(i64 4)
  %_array3993 = bitcast i64* %_raw_array3992 to { i64, [0 x i64] }*
  %_CArr_elem_33997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3993, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_33997
  %_CArr_elem_23996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3993, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_23996
  %_CArr_elem_13995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3993, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_13995
  %_CArr_elem_03994 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3993, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03994
  %_CArr_elem_14011 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3985, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3993, { i64, [0 x i64] }** %_CArr_elem_14011
  %_raw_array3986 = call i64* @oat_alloc_array(i64 4)
  %_array3987 = bitcast i64* %_raw_array3986 to { i64, [0 x i64] }*
  %_CArr_elem_33991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3987, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_33991
  %_CArr_elem_23990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3987, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_23990
  %_CArr_elem_13989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3987, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_13989
  %_CArr_elem_03988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3987, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_03988
  %_CArr_elem_04010 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3985, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3987, { i64, [0 x i64] }** %_CArr_elem_04010
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3985, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  store i64 0, i64* %i
  br label %_start4016
_start4016:
  %_id4015 = load i64, i64* %i
  %_bop4014 = icmp slt i64 %_id4015, 4
  br i1 %_bop4014, label %_body4017, label %_end4018
_body4017:
  %_raw_array4019 = call i64* @oat_alloc_array(i64 4)
  %_array4020 = bitcast i64* %_raw_array4019 to { i64, [0 x i64] }*
  %_id4021 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_id4022 = load i64, i64* %i
  %_index_ptr4023 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4021, i32 0, i32 1, i64 %_id4022
  store { i64, [0 x i64] }* %_array4020, { i64, [0 x i64] }** %_index_ptr4023
  store i64 0, i64* %j
  br label %_start4026
_start4026:
  %_id4025 = load i64, i64* %j
  %_bop4024 = icmp slt i64 %_id4025, 4
  br i1 %_bop4024, label %_body4027, label %_end4028
_body4027:
  %_id4029 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %board
  %_id4030 = load i64, i64* %i
  %_id4031 = load i64, i64* %j
  %_Call_retval4032 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_id4029, i64 %_id4030, i64 %_id4031)
  %_id4033 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  %_id4034 = load i64, i64* %i
  %_index_ptr4035 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4033, i32 0, i32 1, i64 %_id4034
  %_idx_tmp4036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4035
  %_id4037 = load i64, i64* %j
  %_index_ptr4038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp4036, i32 0, i32 1, i64 %_id4037
  store i64 %_Call_retval4032, i64* %_index_ptr4038
  %_id4040 = load i64, i64* %j
  %_bop4039 = add i64 %_id4040, 1
  store i64 %_bop4039, i64* %j
  br label %_start4026
_end4028:
  %_id4042 = load i64, i64* %i
  %_bop4041 = add i64 %_id4042, 1
  store i64 %_bop4041, i64* %i
  br label %_start4016
_end4018:
  store i64 0, i64* %i
  br label %_start4046
_start4046:
  %_id4044 = load i64, i64* %i
  %_id4045 = load i64, i64* @len
  %_bop4043 = icmp slt i64 %_id4044, %_id4045
  br i1 %_bop4043, label %_body4047, label %_end4048
_body4047:
  store i64 0, i64* %j
  br label %_start4052
_start4052:
  %_id4050 = load i64, i64* %j
  %_id4051 = load i64, i64* @len
  %_bop4049 = icmp slt i64 %_id4050, %_id4051
  br i1 %_bop4049, label %_body4053, label %_end4054
_body4053:
  %_idx_tmp4061 = load i64, i64* %_index_ptr4060
  %_index_ptr4060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp4058, i32 0, i32 1, i64 %_id4059
  %_id4059 = load i64, i64* %j
  %_idx_tmp4058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4057
  %_index_ptr4057 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4055, i32 0, i32 1, i64 %_id4056
  %_id4056 = load i64, i64* %i
  %_id4055 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %new_board
  call void @print_int(i64 %_idx_tmp4061)
  %_id4064 = load i64, i64* %j
  %_bop4063 = add i64 %_id4064, 1
  store i64 %_bop4063, i64* %j
  br label %_start4052
_end4054:
  %_id4066 = load i64, i64* %i
  %_bop4065 = add i64 %_id4066, 1
  store i64 %_bop4065, i64* %i
  br label %_start4046
_end4048:
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
