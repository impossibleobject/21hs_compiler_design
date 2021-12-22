; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %_n4309) {
  %_n4310 = alloca i64
  %_i4317 = alloca i64
  %_arr4336 = alloca { i64, [0 x i1] }*
  %_i4338 = alloca i64
  %_i4365 = alloca i64
  %_j4381 = alloca i64
  %_count4405 = alloca i64
  %_i4407 = alloca i64
  store i64 %_n4309, i64* %_n4310
  %_n4314 = load i64, i64* %_n4310
  %_raw_array4315 = call i64* @oat_alloc_array(i64 %_n4314)
  %_array4316 = bitcast i64* %_raw_array4315 to { i64, [0 x i1] }*
  %_bnd_4313 = alloca i64
  store i64 %_n4314, i64* %_bnd_4313
  %_ptr_4312 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4316, { i64, [0 x i1] }** %_ptr_4312
  store i64 0, i64* %_i4317
  br label %_cond4324
_body4323:
  %__ptr_43124325 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_ptr_4312
  %_i4326 = load i64, i64* %_i4317
  %_tmp4328 = bitcast { i64, [0 x i1] }* %__ptr_43124325 to i64*
  call void @oat_assert_array_length(i64* %_tmp4328, i64 %_i4326)
  %_index_ptr4329 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %__ptr_43124325, i32 0, i32 1, i64 %_i4326
  store i1 0, i1* %_index_ptr4329
  %_i4331 = load i64, i64* %_i4317
  %_bop4332 = add i64 %_i4331, 1
  store i64 %_bop4332, i64* %_i4317
  br label %_cond4324
_body4344:
  %_arr4346 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4336
  %_i4347 = load i64, i64* %_i4338
  %_tmp4349 = bitcast { i64, [0 x i1] }* %_arr4346 to i64*
  call void @oat_assert_array_length(i64* %_tmp4349, i64 %_i4347)
  %_index_ptr4350 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4346, i32 0, i32 1, i64 %_i4347
  store i1 1, i1* %_index_ptr4350
  %_i4352 = load i64, i64* %_i4338
  %_bop4353 = add i64 %_i4352, 1
  store i64 %_bop4353, i64* %_i4338
  br label %_cond4345
_body4371:
  %_arr4373 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4336
  %_i4374 = load i64, i64* %_i4365
  %_tmp4376 = bitcast { i64, [0 x i1] }* %_arr4373 to i64*
  call void @oat_assert_array_length(i64* %_tmp4376, i64 %_i4374)
  %_index_ptr4377 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4373, i32 0, i32 1, i64 %_i4374
  %_index4378 = load i1, i1* %_index_ptr4377
  br i1 %_index4378, label %_then4401, label %_else4400
_body4387:
  %_arr4389 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4336
  %_j4390 = load i64, i64* %_j4381
  %_tmp4392 = bitcast { i64, [0 x i1] }* %_arr4389 to i64*
  call void @oat_assert_array_length(i64* %_tmp4392, i64 %_j4390)
  %_index_ptr4393 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4389, i32 0, i32 1, i64 %_j4390
  store i1 0, i1* %_index_ptr4393
  %_j4395 = load i64, i64* %_j4381
  %_i4396 = load i64, i64* %_i4365
  %_bop4397 = add i64 %_j4395, %_i4396
  store i64 %_bop4397, i64* %_j4381
  br label %_cond4388
_body4413:
  %_arr4415 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4336
  %_i4416 = load i64, i64* %_i4407
  %_tmp4418 = bitcast { i64, [0 x i1] }* %_arr4415 to i64*
  call void @oat_assert_array_length(i64* %_tmp4418, i64 %_i4416)
  %_index_ptr4419 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4415, i32 0, i32 1, i64 %_i4416
  %_index4420 = load i1, i1* %_index_ptr4419
  br i1 %_index4420, label %_then4426, label %_else4425
_cond4324:
  %_i4319 = load i64, i64* %_i4317
  %__bnd_43134320 = load i64, i64* %_bnd_4313
  %_bop4321 = icmp slt i64 %_i4319, %__bnd_43134320
  br i1 %_bop4321, label %_body4323, label %_post4322
_cond4345:
  %_i4340 = load i64, i64* %_i4338
  %_n4341 = load i64, i64* %_n4310
  %_bop4342 = icmp slt i64 %_i4340, %_n4341
  br i1 %_bop4342, label %_body4344, label %_post4343
_cond4372:
  %_i4367 = load i64, i64* %_i4365
  %_n4368 = load i64, i64* %_n4310
  %_bop4369 = icmp slt i64 %_i4367, %_n4368
  br i1 %_bop4369, label %_body4371, label %_post4370
_cond4388:
  %_j4383 = load i64, i64* %_j4381
  %_n4384 = load i64, i64* %_n4310
  %_bop4385 = icmp slt i64 %_j4383, %_n4384
  br i1 %_bop4385, label %_body4387, label %_post4386
_cond4414:
  %_i4409 = load i64, i64* %_i4407
  %_n4410 = load i64, i64* %_n4310
  %_bop4411 = icmp slt i64 %_i4409, %_n4410
  br i1 %_bop4411, label %_body4413, label %_post4412
_else4400:
  br label %_merge4399
_else4425:
  br label %_merge4424
_merge4399:
  %_i4402 = load i64, i64* %_i4365
  %_bop4403 = add i64 %_i4402, 1
  store i64 %_bop4403, i64* %_i4365
  br label %_cond4372
_merge4424:
  %_i4427 = load i64, i64* %_i4407
  %_bop4428 = add i64 %_i4427, 1
  store i64 %_bop4428, i64* %_i4407
  br label %_cond4414
_post4322:
  store { i64, [0 x i1] }* %_array4316, { i64, [0 x i1] }** %_arr4336
  store i64 0, i64* %_i4338
  br label %_cond4345
_post4343:
  %_arr4355 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4336
  %_tmp4357 = bitcast { i64, [0 x i1] }* %_arr4355 to i64*
  call void @oat_assert_array_length(i64* %_tmp4357, i64 0)
  %_index_ptr4358 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4355, i32 0, i32 1, i32 0
  store i1 0, i1* %_index_ptr4358
  %_arr4360 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4336
  %_tmp4362 = bitcast { i64, [0 x i1] }* %_arr4360 to i64*
  call void @oat_assert_array_length(i64* %_tmp4362, i64 1)
  %_index_ptr4363 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4360, i32 0, i32 1, i32 1
  store i1 0, i1* %_index_ptr4363
  store i64 0, i64* %_i4365
  br label %_cond4372
_post4370:
  store i64 0, i64* %_count4405
  store i64 0, i64* %_i4407
  br label %_cond4414
_post4386:
  br label %_merge4399
_post4412:
  %_count4430 = load i64, i64* %_count4405
  ret i64 %_count4430
_then4401:
  %_i4379 = load i64, i64* %_i4365
  %_bop4380 = mul i64 %_i4379, 2
  store i64 %_bop4380, i64* %_j4381
  br label %_cond4388
_then4426:
  %_count4421 = load i64, i64* %_count4405
  %_bop4422 = add i64 %_count4421, 1
  store i64 %_bop4422, i64* %_count4405
  br label %_merge4424
}

define i64 @program(i64 %_argc4302, { i64, [0 x i8*] }* %_argv4299) {
  %_n4305 = alloca i64
  store i64 100, i64* %_n4305
  %_n4307 = load i64, i64* %_n4305
  %_result4308 = call i64 @sieve(i64 %_n4307)
  ret i64 %_result4308
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
