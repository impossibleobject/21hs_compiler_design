; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_i4060 = alloca i64
  %_j4061 = alloca i64
  %_tmp4084 = alloca i64
  %_a4058 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a4058
  %_len4059 = alloca i64
  store i64 %len, i64* %_len4059
  store i64 1, i64* %_i4060
  store i64 2, i64* %_j4061
  br label %_start4065
_start4065:
  %_id4063 = load i64, i64* %_i4060
  %_id4064 = load i64, i64* %_len4059
  %_bop4062 = icmp slt i64 %_id4063, %_id4064
  br i1 %_bop4062, label %_body4066, label %_end4067
_body4066:
  %_id4069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4058
  %_id4071 = load i64, i64* %_i4060
  %_bop4070 = sub i64 %_id4071, 1
  %_index_ptr4072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4069, i32 0, i32 1, i64 %_bop4070
  %_idx_tmp4076 = load i64, i64* %_index_ptr4072
  %_id4073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4058
  %_id4074 = load i64, i64* %_i4060
  %_index_ptr4075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4073, i32 0, i32 1, i64 %_id4074
  %_idx_tmp4077 = load i64, i64* %_index_ptr4075
  %_bop4068 = icmp sle i64 %_idx_tmp4076, %_idx_tmp4077
  br i1 %_bop4068, label %_then4078, label %_else4079
_then4078:
  %_id4081 = load i64, i64* %_j4061
  store i64 %_id4081, i64* %_i4060
  %_id4083 = load i64, i64* %_j4061
  %_bop4082 = add i64 %_id4083, 1
  store i64 %_bop4082, i64* %_j4061
  br label %_end4080
_else4079:
  %_id4085 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4058
  %_id4087 = load i64, i64* %_i4060
  %_bop4086 = sub i64 %_id4087, 1
  %_index_ptr4088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4085, i32 0, i32 1, i64 %_bop4086
  %_idx_tmp4089 = load i64, i64* %_index_ptr4088
  store i64 %_idx_tmp4089, i64* %_tmp4084
  %_id4090 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4058
  %_id4091 = load i64, i64* %_i4060
  %_index_ptr4092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4090, i32 0, i32 1, i64 %_id4091
  %_idx_tmp4093 = load i64, i64* %_index_ptr4092
  %_id4094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4058
  %_id4096 = load i64, i64* %_i4060
  %_bop4095 = sub i64 %_id4096, 1
  %_index_ptr4097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4094, i32 0, i32 1, i64 %_bop4095
  store i64 %_idx_tmp4093, i64* %_index_ptr4097
  %_id4098 = load i64, i64* %_tmp4084
  %_id4099 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4058
  %_id4100 = load i64, i64* %_i4060
  %_index_ptr4101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4099, i32 0, i32 1, i64 %_id4100
  store i64 %_id4098, i64* %_index_ptr4101
  %_id4103 = load i64, i64* %_i4060
  %_bop4102 = sub i64 %_id4103, 1
  store i64 %_bop4102, i64* %_i4060
  %_id4105 = load i64, i64* %_i4060
  %_bop4104 = icmp eq i64 %_id4105, 0
  br i1 %_bop4104, label %_then4106, label %_else4107
_then4106:
  %_id4109 = load i64, i64* %_j4061
  store i64 %_id4109, i64* %_i4060
  %_id4111 = load i64, i64* %_j4061
  %_bop4110 = add i64 %_id4111, 1
  store i64 %_bop4110, i64* %_j4061
  br label %_end4108
_else4107:
  br label %_end4108
_end4108:
  br label %_end4080
_end4080:
  br label %_start4065
_end4067:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr4030 = alloca { i64, [0 x i64] }*
  %_len4041 = alloca i64
  %_i4045 = alloca i64
  %_argc4028 = alloca i64
  store i64 %argc, i64* %_argc4028
  %_argv4029 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4029
  %_raw_array4031 = call i64* @oat_alloc_array(i64 8)
  %_array4032 = bitcast i64* %_raw_array4031 to { i64, [0 x i64] }*
  %_CArr_elem_74040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4032, i32 0, i32 1, i32 7
  store i64 0, i64* %_CArr_elem_74040
  %_CArr_elem_64039 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4032, i32 0, i32 1, i32 6
  store i64 2, i64* %_CArr_elem_64039
  %_CArr_elem_54038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4032, i32 0, i32 1, i32 5
  store i64 99, i64* %_CArr_elem_54038
  %_CArr_elem_44037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4032, i32 0, i32 1, i32 4
  store i64 30, i64* %_CArr_elem_44037
  %_CArr_elem_34036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4032, i32 0, i32 1, i32 3
  store i64 65, i64* %_CArr_elem_34036
  %_CArr_elem_24035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4032, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_24035
  %_CArr_elem_14034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4032, i32 0, i32 1, i32 1
  store i64 200, i64* %_CArr_elem_14034
  %_CArr_elem_04033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4032, i32 0, i32 1, i32 0
  store i64 5, i64* %_CArr_elem_04033
  store { i64, [0 x i64] }* %_array4032, { i64, [0 x i64] }** %_arr4030
  store i64 8, i64* %_len4041
  %_id4043 = load i64, i64* %_len4041
  %_id4042 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4030
  call void @gnomeSort({ i64, [0 x i64] }* %_id4042, i64 %_id4043)
  store i64 0, i64* %_i4045
  br label %_start4048
_start4048:
  %_id4047 = load i64, i64* %_i4045
  %_bop4046 = icmp slt i64 %_id4047, 8
  br i1 %_bop4046, label %_body4049, label %_end4050
_body4049:
  %_id4051 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4030
  %_id4052 = load i64, i64* %_i4045
  %_index_ptr4053 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4051, i32 0, i32 1, i64 %_id4052
  %_idx_tmp4054 = load i64, i64* %_index_ptr4053
  call void @print_int(i64 %_idx_tmp4054)
  %_id4057 = load i64, i64* %_i4045
  %_bop4056 = add i64 %_id4057, 1
  store i64 %_bop4056, i64* %_i4045
  br label %_start4048
_end4050:
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
