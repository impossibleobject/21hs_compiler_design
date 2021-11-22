; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_garr4263 to { i64, [0 x i64] }*)
@_garr4263 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_cstr_glb4202 = global [1 x i8] c"\00"
@_cstr_glb4182 = global [7 x i8] c"TOMATO\00"
@_cstr_glb4184 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %a_chars = alloca { i64, [0 x i64] }*
  %b_chars = alloca { i64, [0 x i64] }*
  %last_char_a = alloca i64
  %last_char_b = alloca i64
  %prev_lcs = alloca i8*
  %next_char = alloca i8*
  %left_lcs = alloca i8*
  %right_lcs = alloca i8*
  %left_len = alloca i64
  %right_len = alloca i64
  %_i4189 = alloca i64
  store i64 %i, i64* %_i4189
  %_j4190 = alloca i64
  store i64 %j, i64* %_j4190
  %_a4191 = alloca i8*
  store i8* %a, i8** %_a4191
  %_b4192 = alloca i8*
  store i8* %b, i8** %_b4192
  %_id4195 = load i64, i64* %_i4189
  %_bop4194 = icmp slt i64 %_id4195, 0
  %_id4197 = load i64, i64* %_j4190
  %_bop4196 = icmp slt i64 %_id4197, 0
  %_bop4193 = or i1 %_bop4194, %_bop4196
  br i1 %_bop4193, label %_then4198, label %_else4199
_then4198:
  %_cstr_loc4201 = getelementptr [1 x i8], [1 x i8]* @_cstr_glb4202, i32 0, i32 0
  ret i8* %_cstr_loc4201
_else4199:
  br label %_end4200
_end4200:
  %_id4203 = load i8*, i8** %_a4191
  %_Call_retval4204 = call { i64, [0 x i64] }* @array_of_string(i8* %_id4203)
  store { i64, [0 x i64] }* %_Call_retval4204, { i64, [0 x i64] }** %a_chars
  %_id4205 = load i8*, i8** %_b4192
  %_Call_retval4206 = call { i64, [0 x i64] }* @array_of_string(i8* %_id4205)
  store { i64, [0 x i64] }* %_Call_retval4206, { i64, [0 x i64] }** %b_chars
  %_id4207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a_chars
  %_id4208 = load i64, i64* %_i4189
  %_index_ptr4209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4207, i32 0, i32 1, i64 %_id4208
  %_idx_tmp4210 = load i64, i64* %_index_ptr4209
  store i64 %_idx_tmp4210, i64* %last_char_a
  %_id4211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b_chars
  %_id4212 = load i64, i64* %_j4190
  %_index_ptr4213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4211, i32 0, i32 1, i64 %_id4212
  %_idx_tmp4214 = load i64, i64* %_index_ptr4213
  store i64 %_idx_tmp4214, i64* %last_char_b
  %_id4216 = load i64, i64* %last_char_a
  %_id4217 = load i64, i64* %last_char_b
  %_bop4215 = icmp eq i64 %_id4216, %_id4217
  br i1 %_bop4215, label %_then4218, label %_else4219
_then4218:
  %_bop4221 = sub i64 %_id4222, 1
  %_id4222 = load i64, i64* %_i4189
  %_bop4223 = sub i64 %_id4224, 1
  %_id4224 = load i64, i64* %_j4190
  %_id4225 = load i8*, i8** %_a4191
  %_id4226 = load i8*, i8** %_b4192
  %_Call_retval4227 = call i8* @lcs(i64 %_bop4221, i64 %_bop4223, i8* %_id4225, i8* %_id4226)
  store i8* %_Call_retval4227, i8** %prev_lcs
  %_id4228 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a_chars
  %_id4229 = load i64, i64* %_i4189
  %_index_ptr4230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4228, i32 0, i32 1, i64 %_id4229
  %_idx_tmp4231 = load i64, i64* %_index_ptr4230
  %_id4232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_index_ptr4233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4232, i32 0, i32 1, i32 0
  store i64 %_idx_tmp4231, i64* %_index_ptr4233
  %_id4234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_Call_retval4235 = call i8* @string_of_array({ i64, [0 x i64] }* %_id4234)
  store i8* %_Call_retval4235, i8** %next_char
  %_id4236 = load i8*, i8** %prev_lcs
  %_id4237 = load i8*, i8** %next_char
  %_Call_retval4238 = call i8* @string_cat(i8* %_id4236, i8* %_id4237)
  ret i8* %_Call_retval4238
_else4219:
  br label %_end4220
_end4220:
  %_id4239 = load i64, i64* %_i4189
  %_bop4240 = sub i64 %_id4241, 1
  %_id4241 = load i64, i64* %_j4190
  %_id4242 = load i8*, i8** %_a4191
  %_id4243 = load i8*, i8** %_b4192
  %_Call_retval4244 = call i8* @lcs(i64 %_id4239, i64 %_bop4240, i8* %_id4242, i8* %_id4243)
  store i8* %_Call_retval4244, i8** %left_lcs
  %_bop4245 = sub i64 %_id4246, 1
  %_id4246 = load i64, i64* %_i4189
  %_id4247 = load i64, i64* %_j4190
  %_id4248 = load i8*, i8** %_a4191
  %_id4249 = load i8*, i8** %_b4192
  %_Call_retval4250 = call i8* @lcs(i64 %_bop4245, i64 %_id4247, i8* %_id4248, i8* %_id4249)
  store i8* %_Call_retval4250, i8** %right_lcs
  %_id4251 = load i8*, i8** %left_lcs
  %_Call_retval4252 = call i64 @length_of_string(i8* %_id4251)
  store i64 %_Call_retval4252, i64* %left_len
  %_id4253 = load i8*, i8** %right_lcs
  %_Call_retval4254 = call i64 @length_of_string(i8* %_id4253)
  store i64 %_Call_retval4254, i64* %right_len
  %_id4256 = load i64, i64* %left_len
  %_id4257 = load i64, i64* %right_len
  %_bop4255 = icmp slt i64 %_id4256, %_id4257
  br i1 %_bop4255, label %_then4258, label %_else4259
_then4258:
  %_id4261 = load i8*, i8** %right_lcs
  ret i8* %_id4261
_else4259:
  %_id4262 = load i8*, i8** %left_lcs
  ret i8* %_id4262
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %tomato = alloca i8*
  %orating = alloca i8*
  %_argc4179 = alloca i64
  store i64 %argc, i64* %_argc4179
  %_argv4180 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4180
  %_cstr_loc4181 = getelementptr [7 x i8], [7 x i8]* @_cstr_glb4182, i32 0, i32 0
  store i8* %_cstr_loc4181, i8** %tomato
  %_cstr_loc4183 = getelementptr [8 x i8], [8 x i8]* @_cstr_glb4184, i32 0, i32 0
  store i8* %_cstr_loc4183, i8** %orating
  %_Call_retval4187 = call i8* @lcs(i64 5, i64 6, i8* %_id4185, i8* %_id4186)
  %_id4186 = load i8*, i8** %orating
  %_id4185 = load i8*, i8** %tomato
  call void @print_string(i8* %_Call_retval4187)
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
