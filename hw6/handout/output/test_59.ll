; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str_arr4230 = global [2 x i8] c"
\00"

define i64 @xor(i64 %_x4288, i64 %_y4285) {
  %_x4289 = alloca i64
  %_y4286 = alloca i64
  store i64 %_x4288, i64* %_x4289
  store i64 %_y4285, i64* %_y4286
  %_x4291 = load i64, i64* %_x4289
  %_y4292 = load i64, i64* %_y4286
  %_bop4293 = and i64 %_x4291, %_y4292
  %_unop4294 = xor i64 %_bop4293, -1
  %_x4295 = load i64, i64* %_x4289
  %_y4296 = load i64, i64* %_y4286
  %_bop4297 = or i64 %_x4295, %_y4296
  %_bop4298 = and i64 %_unop4294, %_bop4297
  ret i64 %_bop4298
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %_s4236) {
  %_s4237 = alloca { i64, [0 x i64] }*
  %_x4244 = alloca i64
  %_y4251 = alloca i64
  store { i64, [0 x i64] }* %_s4236, { i64, [0 x i64] }** %_s4237
  %_s4239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4237
  %_tmp4241 = bitcast { i64, [0 x i64] }* %_s4239 to i64*
  call void @oat_assert_array_length(i64* %_tmp4241, i64 0)
  %_index_ptr4242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4239, i32 0, i32 1, i32 0
  %_index4243 = load i64, i64* %_index_ptr4242
  store i64 %_index4243, i64* %_x4244
  %_s4246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4237
  %_tmp4248 = bitcast { i64, [0 x i64] }* %_s4246 to i64*
  call void @oat_assert_array_length(i64* %_tmp4248, i64 1)
  %_index_ptr4249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4246, i32 0, i32 1, i32 1
  %_index4250 = load i64, i64* %_index_ptr4249
  store i64 %_index4250, i64* %_y4251
  %_s4253 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4237
  %_tmp4255 = bitcast { i64, [0 x i64] }* %_s4253 to i64*
  call void @oat_assert_array_length(i64* %_tmp4255, i64 0)
  %_index_ptr4256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4253, i32 0, i32 1, i32 0
  %_y4257 = load i64, i64* %_y4251
  store i64 %_y4257, i64* %_index_ptr4256
  %_x4259 = load i64, i64* %_x4244
  %_bop4260 = shl i64 %_x4259, 23
  %_x4261 = load i64, i64* %_x4244
  %_result4262 = call i64 @xor(i64 %_x4261, i64 %_bop4260)
  store i64 %_result4262, i64* %_x4244
  %_x4264 = load i64, i64* %_x4244
  %_bop4265 = lshr i64 %_x4264, 17
  %_x4266 = load i64, i64* %_x4244
  %_result4267 = call i64 @xor(i64 %_x4266, i64 %_bop4265)
  store i64 %_result4267, i64* %_x4244
  %_y4269 = load i64, i64* %_y4251
  %_bop4270 = lshr i64 %_y4269, 26
  %_y4271 = load i64, i64* %_y4251
  %_result4272 = call i64 @xor(i64 %_y4271, i64 %_bop4270)
  %_x4273 = load i64, i64* %_x4244
  %_result4274 = call i64 @xor(i64 %_x4273, i64 %_result4272)
  store i64 %_result4274, i64* %_x4244
  %_s4276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4237
  %_tmp4278 = bitcast { i64, [0 x i64] }* %_s4276 to i64*
  call void @oat_assert_array_length(i64* %_tmp4278, i64 1)
  %_index_ptr4279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4276, i32 0, i32 1, i32 1
  %_x4280 = load i64, i64* %_x4244
  store i64 %_x4280, i64* %_index_ptr4279
  %_x4282 = load i64, i64* %_x4244
  %_y4283 = load i64, i64* %_y4251
  %_bop4284 = add i64 %_x4282, %_y4283
  ret i64 %_bop4284
}

define i64 @program(i64 %_argc4180, { i64, [0 x i8*] }* %_argv4177) {
  %_i4187 = alloca i64
  %_seed4206 = alloca { i64, [0 x i64] }*
  %_i4208 = alloca i64
  %_raw_array4185 = call i64* @oat_alloc_array(i64 2)
  %_array4186 = bitcast i64* %_raw_array4185 to { i64, [0 x i64] }*
  %_bnd_4184 = alloca i64
  store i64 2, i64* %_bnd_4184
  %_ptr_4183 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4186, { i64, [0 x i64] }** %_ptr_4183
  store i64 0, i64* %_i4187
  br label %_cond4194
_body4193:
  %__ptr_41834195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_4183
  %_i4196 = load i64, i64* %_i4187
  %_tmp4198 = bitcast { i64, [0 x i64] }* %__ptr_41834195 to i64*
  call void @oat_assert_array_length(i64* %_tmp4198, i64 %_i4196)
  %_index_ptr4199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_41834195, i32 0, i32 1, i64 %_i4196
  store i64 0, i64* %_index_ptr4199
  %_i4201 = load i64, i64* %_i4187
  %_bop4202 = add i64 %_i4201, 1
  store i64 %_bop4202, i64* %_i4187
  br label %_cond4194
_body4213:
  %_seed4215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4206
  %_i4216 = load i64, i64* %_i4208
  %_tmp4218 = bitcast { i64, [0 x i64] }* %_seed4215 to i64*
  call void @oat_assert_array_length(i64* %_tmp4218, i64 %_i4216)
  %_index_ptr4219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed4215, i32 0, i32 1, i64 %_i4216
  %_i4220 = load i64, i64* %_i4208
  %_bop4221 = add i64 %_i4220, 1
  %_bop4222 = mul i64 100, %_bop4221
  store i64 %_bop4222, i64* %_index_ptr4219
  %_i4224 = load i64, i64* %_i4208
  %_bop4225 = add i64 %_i4224, 1
  store i64 %_bop4225, i64* %_i4208
  br label %_cond4214
_cond4194:
  %_i4189 = load i64, i64* %_i4187
  %__bnd_41844190 = load i64, i64* %_bnd_4184
  %_bop4191 = icmp slt i64 %_i4189, %__bnd_41844190
  br i1 %_bop4191, label %_body4193, label %_post4192
_cond4214:
  %_i4210 = load i64, i64* %_i4208
  %_bop4211 = icmp slt i64 %_i4210, 2
  br i1 %_bop4211, label %_body4213, label %_post4212
_post4192:
  store { i64, [0 x i64] }* %_array4186, { i64, [0 x i64] }** %_seed4206
  store i64 0, i64* %_i4208
  br label %_cond4214
_post4212:
  %_seed4227 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4206
  %_result4228 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4227)
  call void @print_int(i64 %_result4228)
  %_str4231 = getelementptr [2 x i8], [2 x i8]* @_str_arr4230, i32 0, i32 0
  call void @print_string(i8* %_str4231)
  %_seed4233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4206
  %_result4234 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4233)
  call void @print_int(i64 %_result4234)
  ret i64 0
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
