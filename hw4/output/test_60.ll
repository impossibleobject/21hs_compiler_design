; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_garr4515 to { i64, [0 x i64] }*)
@_garr4515 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_cstr_glb4444 = global [1 x i8] c"\00"
@_cstr_glb4423 = global [7 x i8] c"TOMATO\00"
@_cstr_glb4426 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_a_chars4445 = alloca { i64, [0 x i64] }*
  %_b_chars4448 = alloca { i64, [0 x i64] }*
  %_last_char_a4451 = alloca i64
  %_last_char_b4456 = alloca i64
  %_prev_lcs4467 = alloca i8*
  %_next_char4481 = alloca i8*
  %_left_lcs4487 = alloca i8*
  %_right_lcs4494 = alloca i8*
  %_left_len4501 = alloca i64
  %_right_len4504 = alloca i64
  %_i4431 = alloca i64
  store i64 %i, i64* %_i4431
  %_j4432 = alloca i64
  store i64 %j, i64* %_j4432
  %_a4433 = alloca i8*
  store i8* %a, i8** %_a4433
  %_b4434 = alloca i8*
  store i8* %b, i8** %_b4434
  %_id4437 = load i64, i64* %_i4431
  %_bop4436 = icmp slt i64 %_id4437, 0
  %_id4439 = load i64, i64* %_j4432
  %_bop4438 = icmp slt i64 %_id4439, 0
  %_bop4435 = or i1 %_bop4436, %_bop4438
  br i1 %_bop4435, label %_then4440, label %_else4441
_then4440:
  %_cstr_loc4443 = getelementptr [1 x i8], [1 x i8]* @_cstr_glb4444, i32 0, i32 0
  ret i8* %_cstr_loc4443
_else4441:
  br label %_end4442
_end4442:
  %_id4446 = load i8*, i8** %_a4433
  %_Call_retval4447 = call { i64, [0 x i64] }* @array_of_string(i8* %_id4446)
  store { i64, [0 x i64] }* %_Call_retval4447, { i64, [0 x i64] }** %_a_chars4445
  %_id4449 = load i8*, i8** %_b4434
  %_Call_retval4450 = call { i64, [0 x i64] }* @array_of_string(i8* %_id4449)
  store { i64, [0 x i64] }* %_Call_retval4450, { i64, [0 x i64] }** %_b_chars4448
  %_id4452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4445
  %_id4453 = load i64, i64* %_i4431
  %_index_ptr4454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4452, i32 0, i32 1, i64 %_id4453
  %_idx_tmp4455 = load i64, i64* %_index_ptr4454
  store i64 %_idx_tmp4455, i64* %_last_char_a4451
  %_id4457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars4448
  %_id4458 = load i64, i64* %_j4432
  %_index_ptr4459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4457, i32 0, i32 1, i64 %_id4458
  %_idx_tmp4460 = load i64, i64* %_index_ptr4459
  store i64 %_idx_tmp4460, i64* %_last_char_b4456
  %_id4462 = load i64, i64* %_last_char_a4451
  %_id4463 = load i64, i64* %_last_char_b4456
  %_bop4461 = icmp eq i64 %_id4462, %_id4463
  br i1 %_bop4461, label %_then4464, label %_else4465
_then4464:
  %_bop4468 = sub i64 %_id4469, 1
  %_id4469 = load i64, i64* %_i4431
  %_bop4470 = sub i64 %_id4471, 1
  %_id4471 = load i64, i64* %_j4432
  %_id4472 = load i8*, i8** %_a4433
  %_id4473 = load i8*, i8** %_b4434
  %_Call_retval4474 = call i8* @lcs(i64 %_bop4468, i64 %_bop4470, i8* %_id4472, i8* %_id4473)
  store i8* %_Call_retval4474, i8** %_prev_lcs4467
  %_id4475 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4445
  %_id4476 = load i64, i64* %_i4431
  %_index_ptr4477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4475, i32 0, i32 1, i64 %_id4476
  %_idx_tmp4478 = load i64, i64* %_index_ptr4477
  %_id4479 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_index_ptr4480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4479, i32 0, i32 1, i32 0
  store i64 %_idx_tmp4478, i64* %_index_ptr4480
  %_id4482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_Call_retval4483 = call i8* @string_of_array({ i64, [0 x i64] }* %_id4482)
  store i8* %_Call_retval4483, i8** %_next_char4481
  %_id4484 = load i8*, i8** %_prev_lcs4467
  %_id4485 = load i8*, i8** %_next_char4481
  %_Call_retval4486 = call i8* @string_cat(i8* %_id4484, i8* %_id4485)
  ret i8* %_Call_retval4486
_else4465:
  br label %_end4466
_end4466:
  %_id4488 = load i64, i64* %_i4431
  %_bop4489 = sub i64 %_id4490, 1
  %_id4490 = load i64, i64* %_j4432
  %_id4491 = load i8*, i8** %_a4433
  %_id4492 = load i8*, i8** %_b4434
  %_Call_retval4493 = call i8* @lcs(i64 %_id4488, i64 %_bop4489, i8* %_id4491, i8* %_id4492)
  store i8* %_Call_retval4493, i8** %_left_lcs4487
  %_bop4495 = sub i64 %_id4496, 1
  %_id4496 = load i64, i64* %_i4431
  %_id4497 = load i64, i64* %_j4432
  %_id4498 = load i8*, i8** %_a4433
  %_id4499 = load i8*, i8** %_b4434
  %_Call_retval4500 = call i8* @lcs(i64 %_bop4495, i64 %_id4497, i8* %_id4498, i8* %_id4499)
  store i8* %_Call_retval4500, i8** %_right_lcs4494
  %_id4502 = load i8*, i8** %_left_lcs4487
  %_Call_retval4503 = call i64 @length_of_string(i8* %_id4502)
  store i64 %_Call_retval4503, i64* %_left_len4501
  %_id4505 = load i8*, i8** %_right_lcs4494
  %_Call_retval4506 = call i64 @length_of_string(i8* %_id4505)
  store i64 %_Call_retval4506, i64* %_right_len4504
  %_id4508 = load i64, i64* %_left_len4501
  %_id4509 = load i64, i64* %_right_len4504
  %_bop4507 = icmp slt i64 %_id4508, %_id4509
  br i1 %_bop4507, label %_then4510, label %_else4511
_then4510:
  %_id4513 = load i8*, i8** %_right_lcs4494
  ret i8* %_id4513
_else4511:
  %_id4514 = load i8*, i8** %_left_lcs4487
  ret i8* %_id4514
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_tomato4421 = alloca i8*
  %_orating4424 = alloca i8*
  %_argc4419 = alloca i64
  store i64 %argc, i64* %_argc4419
  %_argv4420 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4420
  %_cstr_loc4422 = getelementptr [7 x i8], [7 x i8]* @_cstr_glb4423, i32 0, i32 0
  store i8* %_cstr_loc4422, i8** %_tomato4421
  %_cstr_loc4425 = getelementptr [8 x i8], [8 x i8]* @_cstr_glb4426, i32 0, i32 0
  store i8* %_cstr_loc4425, i8** %_orating4424
  %_Call_retval4429 = call i8* @lcs(i64 5, i64 6, i8* %_id4427, i8* %_id4428)
  %_id4428 = load i8*, i8** %_orating4424
  %_id4427 = load i8*, i8** %_tomato4421
  call void @print_string(i8* %_Call_retval4429)
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
