; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board4392 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4392
  %_i4393 = alloca i64
  store i64 %i, i64* %_i4393
  %_j4394 = alloca i64
  store i64 %j, i64* %_j4394
  %_count4395 = alloca i64
  store i64 %count, i64* %_count4395
  %_id4400 = load i64, i64* %_i4393
  %_bop4399 = icmp sge i64 %_id4400, 0
  %_id4402 = load i64, i64* %_j4394
  %_bop4401 = icmp sge i64 %_id4402, 0
  %_bop4398 = and i1 %_bop4399, %_bop4401
  %_id4404 = load i64, i64* %_i4393
  %_id4405 = load i64, i64* @len
  %_bop4403 = icmp slt i64 %_id4404, %_id4405
  %_bop4397 = and i1 %_bop4398, %_bop4403
  %_id4407 = load i64, i64* %_j4394
  %_id4408 = load i64, i64* @len
  %_bop4406 = icmp slt i64 %_id4407, %_id4408
  %_bop4396 = and i1 %_bop4397, %_bop4406
  br i1 %_bop4396, label %_then4409, label %_else4410
_then4409:
  %_id4413 = load i64, i64* %_count4395
  %_id4414 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4392
  %_id4415 = load i64, i64* %_i4393
  %_index_ptr4416 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4414, i32 0, i32 1, i64 %_id4415
  %_idx_tmp4417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4416
  %_id4418 = load i64, i64* %_j4394
  %_index_ptr4419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp4417, i32 0, i32 1, i64 %_id4418
  %_idx_tmp4420 = load i64, i64* %_index_ptr4419
  %_bop4412 = add i64 %_id4413, %_idx_tmp4420
  ret i64 %_bop4412
_else4410:
  %_id4421 = load i64, i64* %_count4395
  ret i64 %_id4421
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_alive4311 = alloca i64
  %_count4319 = alloca i64
  %_board4308 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_i4309 = alloca i64
  store i64 %i, i64* %_i4309
  %_j4310 = alloca i64
  store i64 %j, i64* %_j4310
  %_id4312 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_id4313 = load i64, i64* %_i4309
  %_index_ptr4314 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4312, i32 0, i32 1, i64 %_id4313
  %_idx_tmp4315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4314
  %_id4316 = load i64, i64* %_j4310
  %_index_ptr4317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp4315, i32 0, i32 1, i64 %_id4316
  %_idx_tmp4318 = load i64, i64* %_index_ptr4317
  store i64 %_idx_tmp4318, i64* %_alive4311
  store i64 0, i64* %_count4319
  %_id4325 = load i64, i64* %_count4319
  %_id4324 = load i64, i64* %_j4310
  %_bop4323 = sub i64 %_id4324, 1
  %_id4322 = load i64, i64* %_i4309
  %_bop4321 = sub i64 %_id4322, 1
  %_id4320 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_Call_retval4326 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4320, i64 %_bop4321, i64 %_bop4323, i64 %_id4325)
  store i64 %_Call_retval4326, i64* %_count4319
  %_id4331 = load i64, i64* %_count4319
  %_id4330 = load i64, i64* %_j4310
  %_id4329 = load i64, i64* %_i4309
  %_bop4328 = sub i64 %_id4329, 1
  %_id4327 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_Call_retval4332 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4327, i64 %_bop4328, i64 %_id4330, i64 %_id4331)
  store i64 %_Call_retval4332, i64* %_count4319
  %_id4338 = load i64, i64* %_count4319
  %_id4337 = load i64, i64* %_j4310
  %_bop4336 = add i64 %_id4337, 1
  %_id4335 = load i64, i64* %_i4309
  %_bop4334 = sub i64 %_id4335, 1
  %_id4333 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_Call_retval4339 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4333, i64 %_bop4334, i64 %_bop4336, i64 %_id4338)
  store i64 %_Call_retval4339, i64* %_count4319
  %_id4344 = load i64, i64* %_count4319
  %_id4343 = load i64, i64* %_j4310
  %_bop4342 = sub i64 %_id4343, 1
  %_id4341 = load i64, i64* %_i4309
  %_id4340 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_Call_retval4345 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4340, i64 %_id4341, i64 %_bop4342, i64 %_id4344)
  store i64 %_Call_retval4345, i64* %_count4319
  %_id4350 = load i64, i64* %_count4319
  %_id4349 = load i64, i64* %_j4310
  %_bop4348 = add i64 %_id4349, 1
  %_id4347 = load i64, i64* %_i4309
  %_id4346 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_Call_retval4351 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4346, i64 %_id4347, i64 %_bop4348, i64 %_id4350)
  store i64 %_Call_retval4351, i64* %_count4319
  %_id4357 = load i64, i64* %_count4319
  %_id4356 = load i64, i64* %_j4310
  %_bop4355 = sub i64 %_id4356, 1
  %_id4354 = load i64, i64* %_i4309
  %_bop4353 = add i64 %_id4354, 1
  %_id4352 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_Call_retval4358 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4352, i64 %_bop4353, i64 %_bop4355, i64 %_id4357)
  store i64 %_Call_retval4358, i64* %_count4319
  %_id4363 = load i64, i64* %_count4319
  %_id4362 = load i64, i64* %_j4310
  %_id4361 = load i64, i64* %_i4309
  %_bop4360 = add i64 %_id4361, 1
  %_id4359 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_Call_retval4364 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4359, i64 %_bop4360, i64 %_id4362, i64 %_id4363)
  store i64 %_Call_retval4364, i64* %_count4319
  %_id4370 = load i64, i64* %_count4319
  %_id4369 = load i64, i64* %_j4310
  %_bop4368 = add i64 %_id4369, 1
  %_id4367 = load i64, i64* %_i4309
  %_bop4366 = add i64 %_id4367, 1
  %_id4365 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4308
  %_Call_retval4371 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_id4365, i64 %_bop4366, i64 %_bop4368, i64 %_id4370)
  store i64 %_Call_retval4371, i64* %_count4319
  %_id4373 = load i64, i64* %_alive4311
  %_bop4372 = icmp eq i64 %_id4373, 1
  br i1 %_bop4372, label %_then4374, label %_else4375
_then4374:
  %_id4378 = load i64, i64* %_count4319
  %_bop4377 = icmp slt i64 %_id4378, 2
  br i1 %_bop4377, label %_then4379, label %_else4380
_then4379:
  ret i64 0
_else4380:
  %_id4383 = load i64, i64* %_count4319
  %_bop4382 = icmp slt i64 %_id4383, 4
  br i1 %_bop4382, label %_then4384, label %_else4385
_then4384:
  ret i64 1
_else4385:
  br label %_end4386
_end4386:
  br label %_end4381
_end4381:
  ret i64 0
_else4375:
  br label %_end4376
_end4376:
  %_id4388 = load i64, i64* %_count4319
  %_bop4387 = icmp eq i64 %_id4388, 3
  br i1 %_bop4387, label %_then4389, label %_else4390
_then4389:
  ret i64 1
_else4390:
  ret i64 0
_end4391:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_board4189 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board4220 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4251 = alloca i64
  %_j4262 = alloca i64
  %_i4282 = alloca i64
  %_j4289 = alloca i64
  %_argc4187 = alloca i64
  store i64 %argc, i64* %_argc4187
  %_argv4188 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4188
  %_raw_array4190 = call i64* @oat_alloc_array(i64 4)
  %_array4191 = bitcast i64* %_raw_array4190 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4210 = call i64* @oat_alloc_array(i64 4)
  %_array4211 = bitcast i64* %_raw_array4210 to { i64, [0 x i64] }*
  %_CArr_elem_34215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4211, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_34215
  %_CArr_elem_24214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4211, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_24214
  %_CArr_elem_14213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4211, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_14213
  %_CArr_elem_04212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4211, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04212
  %_CArr_elem_34219 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4191, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4211, { i64, [0 x i64] }** %_CArr_elem_34219
  %_raw_array4204 = call i64* @oat_alloc_array(i64 4)
  %_array4205 = bitcast i64* %_raw_array4204 to { i64, [0 x i64] }*
  %_CArr_elem_34209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4205, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_34209
  %_CArr_elem_24208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4205, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_24208
  %_CArr_elem_14207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4205, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_14207
  %_CArr_elem_04206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4205, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_04206
  %_CArr_elem_24218 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4191, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4205, { i64, [0 x i64] }** %_CArr_elem_24218
  %_raw_array4198 = call i64* @oat_alloc_array(i64 4)
  %_array4199 = bitcast i64* %_raw_array4198 to { i64, [0 x i64] }*
  %_CArr_elem_34203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4199, i32 0, i32 1, i32 3
  store i64 1, i64* %_CArr_elem_34203
  %_CArr_elem_24202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4199, i32 0, i32 1, i32 2
  store i64 1, i64* %_CArr_elem_24202
  %_CArr_elem_14201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4199, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_14201
  %_CArr_elem_04200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4199, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04200
  %_CArr_elem_14217 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4191, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4199, { i64, [0 x i64] }** %_CArr_elem_14217
  %_raw_array4192 = call i64* @oat_alloc_array(i64 4)
  %_array4193 = bitcast i64* %_raw_array4192 to { i64, [0 x i64] }*
  %_CArr_elem_34197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4193, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_34197
  %_CArr_elem_24196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4193, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_24196
  %_CArr_elem_14195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4193, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_14195
  %_CArr_elem_04194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4193, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04194
  %_CArr_elem_04216 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4191, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4193, { i64, [0 x i64] }** %_CArr_elem_04216
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4191, { i64, [0 x { i64, [0 x i64] }*] }** %_board4189
  %_raw_array4221 = call i64* @oat_alloc_array(i64 4)
  %_array4222 = bitcast i64* %_raw_array4221 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4241 = call i64* @oat_alloc_array(i64 4)
  %_array4242 = bitcast i64* %_raw_array4241 to { i64, [0 x i64] }*
  %_CArr_elem_34246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4242, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_34246
  %_CArr_elem_24245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4242, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_24245
  %_CArr_elem_14244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4242, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_14244
  %_CArr_elem_04243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4242, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04243
  %_CArr_elem_34250 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4222, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4242, { i64, [0 x i64] }** %_CArr_elem_34250
  %_raw_array4235 = call i64* @oat_alloc_array(i64 4)
  %_array4236 = bitcast i64* %_raw_array4235 to { i64, [0 x i64] }*
  %_CArr_elem_34240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4236, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_34240
  %_CArr_elem_24239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4236, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_24239
  %_CArr_elem_14238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4236, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_14238
  %_CArr_elem_04237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4236, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04237
  %_CArr_elem_24249 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4222, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4236, { i64, [0 x i64] }** %_CArr_elem_24249
  %_raw_array4229 = call i64* @oat_alloc_array(i64 4)
  %_array4230 = bitcast i64* %_raw_array4229 to { i64, [0 x i64] }*
  %_CArr_elem_34234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4230, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_34234
  %_CArr_elem_24233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4230, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_24233
  %_CArr_elem_14232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4230, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_14232
  %_CArr_elem_04231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4230, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04231
  %_CArr_elem_14248 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4222, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4230, { i64, [0 x i64] }** %_CArr_elem_14248
  %_raw_array4223 = call i64* @oat_alloc_array(i64 4)
  %_array4224 = bitcast i64* %_raw_array4223 to { i64, [0 x i64] }*
  %_CArr_elem_34228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4224, i32 0, i32 1, i32 3
  store i64 0, i64* %_CArr_elem_34228
  %_CArr_elem_24227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4224, i32 0, i32 1, i32 2
  store i64 0, i64* %_CArr_elem_24227
  %_CArr_elem_14226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4224, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_14226
  %_CArr_elem_04225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4224, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04225
  %_CArr_elem_04247 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4222, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4224, { i64, [0 x i64] }** %_CArr_elem_04247
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4222, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4220
  store i64 0, i64* %_i4251
  br label %_start4254
_start4254:
  %_id4253 = load i64, i64* %_i4251
  %_bop4252 = icmp slt i64 %_id4253, 4
  br i1 %_bop4252, label %_body4255, label %_end4256
_body4255:
  %_raw_array4257 = call i64* @oat_alloc_array(i64 4)
  %_array4258 = bitcast i64* %_raw_array4257 to { i64, [0 x i64] }*
  %_id4259 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4220
  %_id4260 = load i64, i64* %_i4251
  %_index_ptr4261 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4259, i32 0, i32 1, i64 %_id4260
  store { i64, [0 x i64] }* %_array4258, { i64, [0 x i64] }** %_index_ptr4261
  store i64 0, i64* %_j4262
  br label %_start4265
_start4265:
  %_id4264 = load i64, i64* %_j4262
  %_bop4263 = icmp slt i64 %_id4264, 4
  br i1 %_bop4263, label %_body4266, label %_end4267
_body4266:
  %_id4270 = load i64, i64* %_j4262
  %_id4269 = load i64, i64* %_i4251
  %_id4268 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4189
  %_Call_retval4271 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_id4268, i64 %_id4269, i64 %_id4270)
  %_id4272 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4220
  %_id4273 = load i64, i64* %_i4251
  %_index_ptr4274 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4272, i32 0, i32 1, i64 %_id4273
  %_idx_tmp4275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4274
  %_id4276 = load i64, i64* %_j4262
  %_index_ptr4277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp4275, i32 0, i32 1, i64 %_id4276
  store i64 %_Call_retval4271, i64* %_index_ptr4277
  %_id4279 = load i64, i64* %_j4262
  %_bop4278 = add i64 %_id4279, 1
  store i64 %_bop4278, i64* %_j4262
  br label %_start4265
_end4267:
  %_id4281 = load i64, i64* %_i4251
  %_bop4280 = add i64 %_id4281, 1
  store i64 %_bop4280, i64* %_i4251
  br label %_start4254
_end4256:
  store i64 0, i64* %_i4282
  br label %_start4286
_start4286:
  %_id4284 = load i64, i64* %_i4282
  %_id4285 = load i64, i64* @len
  %_bop4283 = icmp slt i64 %_id4284, %_id4285
  br i1 %_bop4283, label %_body4287, label %_end4288
_body4287:
  store i64 0, i64* %_j4289
  br label %_start4293
_start4293:
  %_id4291 = load i64, i64* %_j4289
  %_id4292 = load i64, i64* @len
  %_bop4290 = icmp slt i64 %_id4291, %_id4292
  br i1 %_bop4290, label %_body4294, label %_end4295
_body4294:
  %_id4296 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4220
  %_id4297 = load i64, i64* %_i4282
  %_index_ptr4298 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id4296, i32 0, i32 1, i64 %_id4297
  %_idx_tmp4299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4298
  %_id4300 = load i64, i64* %_j4289
  %_index_ptr4301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp4299, i32 0, i32 1, i64 %_id4300
  %_idx_tmp4302 = load i64, i64* %_index_ptr4301
  call void @print_int(i64 %_idx_tmp4302)
  %_id4305 = load i64, i64* %_j4289
  %_bop4304 = add i64 %_id4305, 1
  store i64 %_bop4304, i64* %_j4289
  br label %_start4293
_end4295:
  %_id4307 = load i64, i64* %_i4282
  %_bop4306 = add i64 %_id4307, 1
  store i64 %_bop4306, i64* %_i4282
  br label %_start4286
_end4288:
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
