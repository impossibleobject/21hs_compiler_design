; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_garr4150 to { i64, [0 x i64] }*)
@_garr4150 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_garr4149 to { i64, [0 x i64] }*)
@_garr4149 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_val4126 = alloca i64
  %_i4127 = alloca i64
  %_ar14123 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14123
  %_ar24124 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24124
  %_len4125 = alloca i64
  store i64 %len, i64* %_len4125
  store i64 0, i64* %_val4126
  store i64 0, i64* %_i4127
  br label %_start4131
_start4131:
  %_id4129 = load i64, i64* %_i4127
  %_id4130 = load i64, i64* %_len4125
  %_bop4128 = icmp slt i64 %_id4129, %_id4130
  br i1 %_bop4128, label %_body4132, label %_end4133
_body4132:
  %_id4135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14123
  %_id4136 = load i64, i64* %_i4127
  %_index_ptr4137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4135, i32 0, i32 1, i64 %_id4136
  %_idx_tmp4141 = load i64, i64* %_index_ptr4137
  %_id4138 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24124
  %_id4139 = load i64, i64* %_i4127
  %_index_ptr4140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4138, i32 0, i32 1, i64 %_id4139
  %_idx_tmp4142 = load i64, i64* %_index_ptr4140
  %_bop4134 = icmp ne i64 %_idx_tmp4141, %_idx_tmp4142
  br i1 %_bop4134, label %_then4143, label %_else4144
_then4143:
  store i64 1, i64* %_val4126
  br label %_end4145
_else4144:
  br label %_end4145
_end4145:
  %_id4147 = load i64, i64* %_i4127
  %_bop4146 = add i64 %_id4147, 1
  store i64 %_bop4146, i64* %_i4127
  br label %_start4131
_end4133:
  %_id4148 = load i64, i64* %_val4126
  ret i64 %_id4148
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_val4114 = alloca i64
  %_argc4112 = alloca i64
  store i64 %argc, i64* %_argc4112
  %_argv4113 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4113
  store i64 1, i64* %_val4114
  %_id4117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_id4116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_Call_retval4118 = call i64 @arrcheck({ i64, [0 x i64] }* %_id4116, { i64, [0 x i64] }* %_id4117, i64 4)
  %_bop4115 = icmp eq i64 %_Call_retval4118, 1
  br i1 %_bop4115, label %_then4119, label %_else4120
_then4119:
  store i64 0, i64* %_val4114
  br label %_end4121
_else4120:
  br label %_end4121
_end4121:
  %_id4122 = load i64, i64* %_val4114
  ret i64 %_id4122
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
