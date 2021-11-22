; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_4166 = global i64 1
@_4167 = global i64 2
@_4168 = global i64 3
@_4169 = global i64 4
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@_4162 = global i64 1
@_4163 = global i64 2
@_4164 = global i64 3
@_4165 = global i64 5

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar14136 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14136
  %_ar24137 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24137
  %_len4138 = alloca i64
  store i64 %len, i64* %_len4138
  %_val4139 = alloca i64
  %_i4140 = alloca i64
  store i64 0, i64* %_val4139
  store i64 0, i64* %_i4140
  br label %_start4144
_start4144:
  %_id4142 = load i64, i64* %_i4140
  %_id4143 = load i64*, i64** %_len4138
  %_bop4141 = icmp slt i64 %_id4142, %_id4143
  br i1 %_bop4141, label %_body4145, label %_end4146
_body4145:
  %_id4148 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_ar14136
  %_id4149 = load i64, i64* %_i4140
  %_index_ptr4150 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id4148, i32 0, i32 0, i32 1, i64 %_id4149
  %_idx_tmp4154 = load i64, i64* %_index_ptr4150
  %_id4151 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_ar24137
  %_id4152 = load i64, i64* %_i4140
  %_index_ptr4153 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id4151, i32 0, i32 0, i32 1, i64 %_id4152
  %_idx_tmp4155 = load i64, i64* %_index_ptr4153
  %_bop4147 = icmp ne i64 %_idx_tmp4154, %_idx_tmp4155
  br i1 %_bop4147, label %_then4156, label %_else4157
_then4156:
  store i64 1, i64* %_val4139
  br label %_end4158
_else4157:
  br label %_end4158
_end4158:
  %_id4160 = load i64, i64* %_i4140
  %_bop4159 = add i64 %_id4160, 1
  store i64 %_bop4159, i64* %_i4140
  br label %_start4144
_end4146:
  %_id4161 = load i64, i64* %_val4139
  ret i64 %_id4161
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4125 = alloca i64
  store i64 %argc, i64* %_argc4125
  %_argv4126 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4126
  %_val4127 = alloca i64
  store i64 1, i64* %_val4127
  %_id4129 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr1
  %_id4130 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr2
  %_Call_retval4131 = call i64 @arrcheck({ i64, [4 x i64] }* %_id4129, { i64, [4 x i64] }* %_id4130, i64 4)
  %_bop4128 = icmp eq i64 %_Call_retval4131, 1
  br i1 %_bop4128, label %_then4132, label %_else4133
_then4132:
  store i64 0, i64* %_val4127
  br label %_end4134
_else4133:
  br label %_end4134
_end4134:
  %_id4135 = load i64, i64* %_val4127
  ret i64 %_id4135
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
