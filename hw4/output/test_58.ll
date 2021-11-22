; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_garr4147 to { i64, [0 x i64] }*)
@_garr4147 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_garr4146 to { i64, [0 x i64] }*)
@_garr4146 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar14120 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14120
  %_ar24121 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24121
  %_len4122 = alloca i64
  store i64 %len, i64* %_len4122
  %_val4123 = alloca i64
  %_i4124 = alloca i64
  store i64 0, i64* %_val4123
  store i64 0, i64* %_i4124
  br label %_start4128
_start4128:
  %_id4126 = load i64, i64* %_i4124
  %_id4127 = load i64*, i64** %_len4122
  %_bop4125 = icmp slt i64 %_id4126, %_id4127
  br i1 %_bop4125, label %_body4129, label %_end4130
_body4129:
  %_id4132 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_ar14120
  %_id4133 = load i64, i64* %_i4124
  %_index_ptr4134 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id4132, i32 0, i32 0, i32 1, i64 %_id4133
  %_idx_tmp4138 = load i64, i64* %_index_ptr4134
  %_id4135 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_ar24121
  %_id4136 = load i64, i64* %_i4124
  %_index_ptr4137 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id4135, i32 0, i32 0, i32 1, i64 %_id4136
  %_idx_tmp4139 = load i64, i64* %_index_ptr4137
  %_bop4131 = icmp ne i64 %_idx_tmp4138, %_idx_tmp4139
  br i1 %_bop4131, label %_then4140, label %_else4141
_then4140:
  store i64 1, i64* %_val4123
  br label %_end4142
_else4141:
  br label %_end4142
_end4142:
  %_id4144 = load i64, i64* %_i4124
  %_bop4143 = add i64 %_id4144, 1
  store i64 %_bop4143, i64* %_i4124
  br label %_start4128
_end4130:
  %_id4145 = load i64, i64* %_val4123
  ret i64 %_id4145
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4109 = alloca i64
  store i64 %argc, i64* %_argc4109
  %_argv4110 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4110
  %_val4111 = alloca i64
  store i64 1, i64* %_val4111
  %_id4113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_id4114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_Call_retval4115 = call i64 @arrcheck({ i64, [0 x i64] }* %_id4113, { i64, [0 x i64] }* %_id4114, i64 4)
  %_bop4112 = icmp eq i64 %_Call_retval4115, 1
  br i1 %_bop4112, label %_then4116, label %_else4117
_then4116:
  store i64 0, i64* %_val4111
  br label %_end4118
_else4117:
  br label %_end4118
_end4118:
  %_id4119 = load i64, i64* %_val4111
  ret i64 %_id4119
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
