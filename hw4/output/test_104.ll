; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_garr4518 to { i64, [0 x i64] }*)
@_garr4518 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_cstr_glb4447 = global [1 x i8] c"\00"
@_cstr_glb4426 = global [7 x i8] c"TOMATO\00"
@_cstr_glb4429 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_a_chars4448 = alloca { i64, [0 x i64] }*
  %_b_chars4451 = alloca { i64, [0 x i64] }*
  %_last_char_a4454 = alloca i64
  %_last_char_b4459 = alloca i64
  %_prev_lcs4470 = alloca i8*
  %_next_char4484 = alloca i8*
  %_left_lcs4490 = alloca i8*
  %_right_lcs4497 = alloca i8*
  %_left_len4504 = alloca i64
  %_right_len4507 = alloca i64
  %_i4434 = alloca i64
  store i64 %i, i64* %_i4434
  %_j4435 = alloca i64
  store i64 %j, i64* %_j4435
  %_a4436 = alloca i8*
  store i8* %a, i8** %_a4436
  %_b4437 = alloca i8*
  store i8* %b, i8** %_b4437
  %_id4440 = load i64, i64* %_i4434
  %_bop4439 = icmp slt i64 %_id4440, 0
  %_id4442 = load i64, i64* %_j4435
  %_bop4441 = icmp slt i64 %_id4442, 0
  %_bop4438 = or i1 %_bop4439, %_bop4441
  br i1 %_bop4438, label %_then4443, label %_else4444
_then4443:
  %_cstr_loc4446 = getelementptr [1 x i8], [1 x i8]* @_cstr_glb4447, i32 0, i32 0
  ret i8* %_cstr_loc4446
_else4444:
  br label %_end4445
_end4445:
  %_id4449 = load i8*, i8** %_a4436
  %_Call_retval4450 = call { i64, [0 x i64] }* @array_of_string(i8* %_id4449)
  store { i64, [0 x i64] }* %_Call_retval4450, { i64, [0 x i64] }** %_a_chars4448
  %_id4452 = load i8*, i8** %_b4437
  %_Call_retval4453 = call { i64, [0 x i64] }* @array_of_string(i8* %_id4452)
  store { i64, [0 x i64] }* %_Call_retval4453, { i64, [0 x i64] }** %_b_chars4451
  %_id4455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4448
  %_id4456 = load i64, i64* %_i4434
  %_index_ptr4457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4455, i32 0, i32 1, i64 %_id4456
  %_idx_tmp4458 = load i64, i64* %_index_ptr4457
  store i64 %_idx_tmp4458, i64* %_last_char_a4454
  %_id4460 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars4451
  %_id4461 = load i64, i64* %_j4435
  %_index_ptr4462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4460, i32 0, i32 1, i64 %_id4461
  %_idx_tmp4463 = load i64, i64* %_index_ptr4462
  store i64 %_idx_tmp4463, i64* %_last_char_b4459
  %_id4465 = load i64, i64* %_last_char_a4454
  %_id4466 = load i64, i64* %_last_char_b4459
  %_bop4464 = icmp eq i64 %_id4465, %_id4466
  br i1 %_bop4464, label %_then4467, label %_else4468
_then4467:
  %_id4476 = load i8*, i8** %_b4437
  %_id4475 = load i8*, i8** %_a4436
  %_id4474 = load i64, i64* %_j4435
  %_bop4473 = sub i64 %_id4474, 1
  %_id4472 = load i64, i64* %_i4434
  %_bop4471 = sub i64 %_id4472, 1
  %_Call_retval4477 = call i8* @lcs(i64 %_bop4471, i64 %_bop4473, i8* %_id4475, i8* %_id4476)
  store i8* %_Call_retval4477, i8** %_prev_lcs4470
  %_id4478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4448
  %_id4479 = load i64, i64* %_i4434
  %_index_ptr4480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4478, i32 0, i32 1, i64 %_id4479
  %_idx_tmp4481 = load i64, i64* %_index_ptr4480
  %_id4482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_index_ptr4483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4482, i32 0, i32 1, i32 0
  store i64 %_idx_tmp4481, i64* %_index_ptr4483
  %_id4485 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_Call_retval4486 = call i8* @string_of_array({ i64, [0 x i64] }* %_id4485)
  store i8* %_Call_retval4486, i8** %_next_char4484
  %_id4488 = load i8*, i8** %_next_char4484
  %_id4487 = load i8*, i8** %_prev_lcs4470
  %_Call_retval4489 = call i8* @string_cat(i8* %_id4487, i8* %_id4488)
  ret i8* %_Call_retval4489
_else4468:
  br label %_end4469
_end4469:
  %_id4495 = load i8*, i8** %_b4437
  %_id4494 = load i8*, i8** %_a4436
  %_id4493 = load i64, i64* %_j4435
  %_bop4492 = sub i64 %_id4493, 1
  %_id4491 = load i64, i64* %_i4434
  %_Call_retval4496 = call i8* @lcs(i64 %_id4491, i64 %_bop4492, i8* %_id4494, i8* %_id4495)
  store i8* %_Call_retval4496, i8** %_left_lcs4490
  %_id4502 = load i8*, i8** %_b4437
  %_id4501 = load i8*, i8** %_a4436
  %_id4500 = load i64, i64* %_j4435
  %_id4499 = load i64, i64* %_i4434
  %_bop4498 = sub i64 %_id4499, 1
  %_Call_retval4503 = call i8* @lcs(i64 %_bop4498, i64 %_id4500, i8* %_id4501, i8* %_id4502)
  store i8* %_Call_retval4503, i8** %_right_lcs4497
  %_id4505 = load i8*, i8** %_left_lcs4490
  %_Call_retval4506 = call i64 @length_of_string(i8* %_id4505)
  store i64 %_Call_retval4506, i64* %_left_len4504
  %_id4508 = load i8*, i8** %_right_lcs4497
  %_Call_retval4509 = call i64 @length_of_string(i8* %_id4508)
  store i64 %_Call_retval4509, i64* %_right_len4507
  %_id4511 = load i64, i64* %_left_len4504
  %_id4512 = load i64, i64* %_right_len4507
  %_bop4510 = icmp slt i64 %_id4511, %_id4512
  br i1 %_bop4510, label %_then4513, label %_else4514
_then4513:
  %_id4516 = load i8*, i8** %_right_lcs4497
  ret i8* %_id4516
_else4514:
  %_id4517 = load i8*, i8** %_left_lcs4490
  ret i8* %_id4517
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_tomato4424 = alloca i8*
  %_orating4427 = alloca i8*
  %_argc4422 = alloca i64
  store i64 %argc, i64* %_argc4422
  %_argv4423 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4423
  %_cstr_loc4425 = getelementptr [7 x i8], [7 x i8]* @_cstr_glb4426, i32 0, i32 0
  store i8* %_cstr_loc4425, i8** %_tomato4424
  %_cstr_loc4428 = getelementptr [8 x i8], [8 x i8]* @_cstr_glb4429, i32 0, i32 0
  store i8* %_cstr_loc4428, i8** %_orating4427
  %_id4431 = load i8*, i8** %_orating4427
  %_id4430 = load i8*, i8** %_tomato4424
  %_Call_retval4432 = call i8* @lcs(i64 5, i64 6, i8* %_id4430, i8* %_id4431)
  call void @print_string(i8* %_Call_retval4432)
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
