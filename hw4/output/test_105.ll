; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %inserted = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %not_yet_inserted = alloca i1
  %i = alloca i64
  %_partial4305 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial4305
  %_len4306 = alloca i64
  store i64 %len, i64* %_len4306
  %_insertee4307 = alloca i64
  store i64 %insertee, i64* %_insertee4307
  %_id4309 = load i64, i64* %_len4306
  %_bop4308 = add i64 %_id4309, 1
  %_raw_array4310 = call i64* @oat_alloc_array(i64 %_bop4308)
  %_array4311 = bitcast i64* %_raw_array4310 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4311, { i64, [0 x i64] }** %inserted
  store i64 0, i64* %i
  br label %_start4316
_start4316:
  %_id4313 = load i64, i64* %i
  %_id4315 = load i64, i64* %_len4306
  %_bop4314 = add i64 %_id4315, 1
  %_bop4312 = icmp slt i64 %_id4313, %_bop4314
  br i1 %_bop4312, label %_body4317, label %_end4318
_body4317:
  %_uop4319 = sub i64 0, 1
  %_id4320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_id4321 = load i64, i64* %i
  %_index_ptr4322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4320, i32 0, i32 1, i64 %_id4321
  store i64 %_uop4319, i64* %_index_ptr4322
  %_id4324 = load i64, i64* %i
  %_bop4323 = add i64 %_id4324, 1
  store i64 %_bop4323, i64* %i
  br label %_start4316
_end4318:
  store i1 1, i1* %not_yet_inserted
  %_id4326 = load i64, i64* %_insertee4307
  %_id4327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4305
  %_index_ptr4328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4327, i32 0, i32 1, i32 0
  %_idx_tmp4329 = load i64, i64* %_index_ptr4328
  %_bop4325 = icmp slt i64 %_id4326, %_idx_tmp4329
  br i1 %_bop4325, label %_then4330, label %_else4331
_then4330:
  store i1 0, i1* %not_yet_inserted
  %_id4333 = load i64, i64* %_insertee4307
  %_id4334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_index_ptr4335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4334, i32 0, i32 1, i32 0
  store i64 %_id4333, i64* %_index_ptr4335
  br label %_end4332
_else4331:
  br label %_end4332
_end4332:
  store i64 0, i64* %i
  br label %_start4339
_start4339:
  %_id4337 = load i64, i64* %i
  %_id4338 = load i64, i64* %_len4306
  %_bop4336 = icmp slt i64 %_id4337, %_id4338
  br i1 %_bop4336, label %_body4340, label %_end4341
_body4340:
  %_id4342 = load i1, i1* %not_yet_inserted
  br i1 %_id4342, label %_then4343, label %_else4344
_then4343:
  %_id4347 = load i64, i64* %_insertee4307
  %_id4348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4305
  %_id4349 = load i64, i64* %i
  %_index_ptr4350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4348, i32 0, i32 1, i64 %_id4349
  %_idx_tmp4351 = load i64, i64* %_index_ptr4350
  %_bop4346 = icmp sgt i64 %_id4347, %_idx_tmp4351
  br i1 %_bop4346, label %_then4352, label %_else4353
_then4352:
  store i1 0, i1* %not_yet_inserted
  %_id4355 = load i64, i64* %_insertee4307
  %_id4356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_id4358 = load i64, i64* %i
  %_bop4357 = add i64 %_id4358, 1
  %_index_ptr4359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4356, i32 0, i32 1, i64 %_bop4357
  store i64 %_id4355, i64* %_index_ptr4359
  %_id4360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4305
  %_id4361 = load i64, i64* %i
  %_index_ptr4362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4360, i32 0, i32 1, i64 %_id4361
  %_idx_tmp4363 = load i64, i64* %_index_ptr4362
  %_id4364 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_id4365 = load i64, i64* %i
  %_index_ptr4366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4364, i32 0, i32 1, i64 %_id4365
  store i64 %_idx_tmp4363, i64* %_index_ptr4366
  br label %_end4354
_else4353:
  %_id4367 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4305
  %_id4368 = load i64, i64* %i
  %_index_ptr4369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4367, i32 0, i32 1, i64 %_id4368
  %_idx_tmp4370 = load i64, i64* %_index_ptr4369
  %_id4371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_id4372 = load i64, i64* %i
  %_index_ptr4373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4371, i32 0, i32 1, i64 %_id4372
  store i64 %_idx_tmp4370, i64* %_index_ptr4373
  br label %_end4354
_end4354:
  br label %_end4345
_else4344:
  %_id4374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4305
  %_id4375 = load i64, i64* %i
  %_index_ptr4376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4374, i32 0, i32 1, i64 %_id4375
  %_idx_tmp4377 = load i64, i64* %_index_ptr4376
  %_id4378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  %_id4380 = load i64, i64* %i
  %_bop4379 = add i64 %_id4380, 1
  %_index_ptr4381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4378, i32 0, i32 1, i64 %_bop4379
  store i64 %_idx_tmp4377, i64* %_index_ptr4381
  br label %_end4345
_end4345:
  %_id4383 = load i64, i64* %i
  %_bop4382 = add i64 %_id4383, 1
  store i64 %_bop4382, i64* %i
  br label %_start4339
_end4341:
  %_id4384 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %inserted
  ret { i64, [0 x i64] }* %_id4384
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %out = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %_unsorted4279 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted4279
  %_len4280 = alloca i64
  store i64 %len, i64* %_len4280
  %_raw_array4281 = call i64* @oat_alloc_array(i64 1)
  %_array4282 = bitcast i64* %_raw_array4281 to { i64, [0 x i64] }*
  %_CArr_elem_04283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4282, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_04283
  store { i64, [0 x i64] }* %_array4282, { i64, [0 x i64] }** %out
  %_id4284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4279
  %_index_ptr4285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4284, i32 0, i32 1, i32 0
  %_idx_tmp4286 = load i64, i64* %_index_ptr4285
  %_id4287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_index_ptr4288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4287, i32 0, i32 1, i32 0
  store i64 %_idx_tmp4286, i64* %_index_ptr4288
  store i64 1, i64* %i
  br label %_start4292
_start4292:
  %_id4290 = load i64, i64* %i
  %_id4291 = load i64, i64* %_len4280
  %_bop4289 = icmp slt i64 %_id4290, %_id4291
  br i1 %_bop4289, label %_body4293, label %_end4294
_body4293:
  %_id4295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  %_id4296 = load i64, i64* %i
  %_idx_tmp4300 = load i64, i64* %_index_ptr4299
  %_index_ptr4299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4297, i32 0, i32 1, i64 %_id4298
  %_id4298 = load i64, i64* %i
  %_id4297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4279
  %_Call_retval4301 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_id4295, i64 %_id4296, i64 %_idx_tmp4300)
  store { i64, [0 x i64] }* %_Call_retval4301, { i64, [0 x i64] }** %out
  %_id4303 = load i64, i64* %i
  %_bop4302 = add i64 %_id4303, 1
  store i64 %_bop4302, i64* %i
  br label %_start4292
_end4294:
  %_id4304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %out
  ret { i64, [0 x i64] }* %_id4304
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %array = alloca { i64, [0 x i64] }*
  %result = alloca { i64, [0 x i64] }*
  %_argc4264 = alloca i64
  store i64 %argc, i64* %_argc4264
  %_argv4265 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4265
  %_raw_array4266 = call i64* @oat_alloc_array(i64 6)
  %_array4267 = bitcast i64* %_raw_array4266 to { i64, [0 x i64] }*
  %_CArr_elem_54273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4267, i32 0, i32 1, i32 5
  store i64 6, i64* %_CArr_elem_54273
  %_CArr_elem_44272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4267, i32 0, i32 1, i32 4
  store i64 2, i64* %_CArr_elem_44272
  %_CArr_elem_34271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4267, i32 0, i32 1, i32 3
  store i64 3, i64* %_CArr_elem_34271
  %_CArr_elem_24270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4267, i32 0, i32 1, i32 2
  store i64 32, i64* %_CArr_elem_24270
  %_CArr_elem_14269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4267, i32 0, i32 1, i32 1
  store i64 42, i64* %_CArr_elem_14269
  %_CArr_elem_04268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4267, i32 0, i32 1, i32 0
  store i64 13, i64* %_CArr_elem_04268
  store { i64, [0 x i64] }* %_array4267, { i64, [0 x i64] }** %array
  %_id4274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %array
  %_Call_retval4275 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_id4274, i64 6)
  store { i64, [0 x i64] }* %_Call_retval4275, { i64, [0 x i64] }** %result
  %_id4276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %result
  %_index_ptr4277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4276, i32 0, i32 1, i32 5
  %_idx_tmp4278 = load i64, i64* %_index_ptr4277
  ret i64 %_idx_tmp4278
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
