; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_4537 = global i64 0
@_cstr_glb4466 = global [1 x i8] c"\00"
@_cstr_glb4445 = global [7 x i8] c"TOMATO\00"
@_cstr_glb4448 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i4453 = alloca i64
  store i64 %i, i64* %_i4453
  %_j4454 = alloca i64
  store i64 %j, i64* %_j4454
  %_a4455 = alloca i8*
  store i8* %a, i8** %_a4455
  %_b4456 = alloca i8*
  store i8* %b, i8** %_b4456
  %_a_chars4467 = alloca { i64, [0 x i64] }*
  %_b_chars4470 = alloca { i64, [0 x i64] }*
  %_last_char_a4473 = alloca i64
  %_last_char_b4478 = alloca i64
  %_prev_lcs4489 = alloca i8*
  %_next_char4503 = alloca i8*
  %_left_lcs4509 = alloca i8*
  %_right_lcs4516 = alloca i8*
  %_left_len4523 = alloca i64
  %_right_len4526 = alloca i64
  %_id4459 = load i64*, i64** %_i4453
  %_bop4458 = icmp slt i64 %_id4459, 0
  %_id4461 = load i64*, i64** %_j4454
  %_bop4460 = icmp slt i64 %_id4461, 0
  %_bop4457 = or i1 %_bop4458, %_bop4460
  br i1 %_bop4457, label %_then4462, label %_else4463
_then4462:
  %_cstr_loc4465 = getelementptr [1 x i8], [1 x i8]* @_cstr_glb4466, i32 0, i32 0
  ret i8* %_cstr_loc4465
_else4463:
  br label %_end4464
_end4464:
  %_id4468 = load i8**, i8*** %_a4455
  %_Call_retval4469 = call { i64, [0 x i64] }* @array_of_string(i8** %_id4468)
  store { i64, [0 x i64] }* %_Call_retval4469, { i64, [0 x i64] }** %_a_chars4467
  %_id4471 = load i8**, i8*** %_b4456
  %_Call_retval4472 = call { i64, [0 x i64] }* @array_of_string(i8** %_id4471)
  store { i64, [0 x i64] }* %_Call_retval4472, { i64, [0 x i64] }** %_b_chars4470
  %_id4474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4467
  %_id4475 = load i64*, i64** %_i4453
  %_index_ptr4476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4474, i32 0, i32 1, i64 %_id4475
  %_idx_tmp4477 = load i64, i64* %_index_ptr4476
  store i64 %_idx_tmp4477, i64* %_last_char_a4473
  %_id4479 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars4470
  %_id4480 = load i64*, i64** %_j4454
  %_index_ptr4481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4479, i32 0, i32 1, i64 %_id4480
  %_idx_tmp4482 = load i64, i64* %_index_ptr4481
  store i64 %_idx_tmp4482, i64* %_last_char_b4478
  %_id4484 = load i64, i64* %_last_char_a4473
  %_id4485 = load i64, i64* %_last_char_b4478
  %_bop4483 = icmp eq i64 %_id4484, %_id4485
  br i1 %_bop4483, label %_then4486, label %_else4487
_then4486:
  %_bop4490 = sub i64 %_id4491, 1
  %_id4491 = load i64*, i64** %_i4453
  %_bop4492 = sub i64 %_id4493, 1
  %_id4493 = load i64*, i64** %_j4454
  %_id4494 = load i8**, i8*** %_a4455
  %_id4495 = load i8**, i8*** %_b4456
  %_Call_retval4496 = call i8* @lcs(i64 %_bop4490, i64 %_bop4492, i8** %_id4494, i8** %_id4495)
  store i8* %_Call_retval4496, i8** %_prev_lcs4489
  %_id4497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4467
  %_id4498 = load i64*, i64** %_i4453
  %_index_ptr4499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4497, i32 0, i32 1, i64 %_id4498
  %_idx_tmp4500 = load i64, i64* %_index_ptr4499
  %_id4501 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_index_ptr4502 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_id4501, i32 0, i32 1, i32 0
  store i64 %_idx_tmp4500, i64* %_index_ptr4502
  %_id4504 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_Call_retval4505 = call i8* @string_of_array({ i64, [1 x i64] }* %_id4504)
  store i8* %_Call_retval4505, i8** %_next_char4503
  %_id4506 = load i8*, i8** %_prev_lcs4489
  %_id4507 = load i8*, i8** %_next_char4503
  %_Call_retval4508 = call i8* @string_cat(i8* %_id4506, i8* %_id4507)
  ret i8* %_Call_retval4508
_else4487:
  br label %_end4488
_end4488:
  %_id4510 = load i64*, i64** %_i4453
  %_bop4511 = sub i64 %_id4512, 1
  %_id4512 = load i64*, i64** %_j4454
  %_id4513 = load i8**, i8*** %_a4455
  %_id4514 = load i8**, i8*** %_b4456
  %_Call_retval4515 = call i8* @lcs(i64* %_id4510, i64 %_bop4511, i8** %_id4513, i8** %_id4514)
  store i8* %_Call_retval4515, i8** %_left_lcs4509
  %_bop4517 = sub i64 %_id4518, 1
  %_id4518 = load i64*, i64** %_i4453
  %_id4519 = load i64*, i64** %_j4454
  %_id4520 = load i8**, i8*** %_a4455
  %_id4521 = load i8**, i8*** %_b4456
  %_Call_retval4522 = call i8* @lcs(i64 %_bop4517, i64* %_id4519, i8** %_id4520, i8** %_id4521)
  store i8* %_Call_retval4522, i8** %_right_lcs4516
  %_id4524 = load i8*, i8** %_left_lcs4509
  %_Call_retval4525 = call i64 @length_of_string(i8* %_id4524)
  store i64 %_Call_retval4525, i64* %_left_len4523
  %_id4527 = load i8*, i8** %_right_lcs4516
  %_Call_retval4528 = call i64 @length_of_string(i8* %_id4527)
  store i64 %_Call_retval4528, i64* %_right_len4526
  %_id4530 = load i64, i64* %_left_len4523
  %_id4531 = load i64, i64* %_right_len4526
  %_bop4529 = icmp slt i64 %_id4530, %_id4531
  br i1 %_bop4529, label %_then4532, label %_else4533
_then4532:
  %_id4535 = load i8*, i8** %_right_lcs4516
  ret i8* %_id4535
_else4533:
  %_id4536 = load i8*, i8** %_left_lcs4509
  ret i8* %_id4536
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4441 = alloca i64
  store i64 %argc, i64* %_argc4441
  %_argv4442 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4442
  %_tomato4443 = alloca i8*
  %_orating4446 = alloca i8*
  %_cstr_loc4444 = getelementptr [7 x i8], [7 x i8]* @_cstr_glb4445, i32 0, i32 0
  store i8* %_cstr_loc4444, i8** %_tomato4443
  %_cstr_loc4447 = getelementptr [8 x i8], [8 x i8]* @_cstr_glb4448, i32 0, i32 0
  store i8* %_cstr_loc4447, i8** %_orating4446
  %_Call_retval4451 = call i8* @lcs(i64 5, i64 6, i8* %_id4449, i8* %_id4450)
  %_id4450 = load i8*, i8** %_orating4446
  %_id4449 = load i8*, i8** %_tomato4443
  call void @print_string(i8* %_Call_retval4451)
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
