; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_4677 = global i64 0
@_cstr_glb4603 = global [1 x i8] c"\00"
@_cstr_glb4581 = global [7 x i8] c"TOMATO\00"
@_cstr_glb4584 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i4590 = alloca i64
  store i64 %i, i64* %_i4590
  %_j4591 = alloca i64
  store i64 %j, i64* %_j4591
  %_a4592 = alloca i8*
  store i8* %a, i8** %_a4592
  %_b4593 = alloca i8*
  store i8* %b, i8** %_b4593
  %_a_chars4605 = alloca { i64, [0 x i64] }*
  %_b_chars4608 = alloca { i64, [0 x i64] }*
  %_last_char_a4611 = alloca i64*
  %_last_char_b4615 = alloca i64*
  %_prev_lcs4627 = alloca i8*
  %_next_char4640 = alloca i8*
  %_left_lcs4647 = alloca i8*
  %_right_lcs4654 = alloca i8*
  %_left_len4661 = alloca i64
  %_right_len4664 = alloca i64
  %_id4596 = load i64, i64* %_i4590
  %_bop4595 = icmp slt i64 %_id4596, 0
  %_id4598 = load i64, i64* %_j4591
  %_bop4597 = icmp slt i64 %_id4598, 0
  %_bop4594 = or i1 %_bop4595, %_bop4597
  br i1 %_bop4594, label %_then4599, label %_else4600
_then4599:
  %_cstr_loc4602 = getelementptr [1 x i8], [1 x i8]* @_cstr_glb4603, i32 0, i32 0
  %_4604 = load i8, i8* %_cstr_loc4602
  ret i8* %_4604
_else4600:
  br label %_end4601
_end4601:
  store { i64, [0 x i64] }* %_Call_retval4607, { i64, [0 x i64] }** %_a_chars4605
  %_id4606 = load i8*, i8** %_a4592
  %_Call_retval4607 = call { i64, [0 x i64] }* @array_of_string(i8* %_id4606)
  store { i64, [0 x i64] }* %_Call_retval4610, { i64, [0 x i64] }** %_b_chars4608
  %_id4609 = load i8*, i8** %_b4593
  %_Call_retval4610 = call { i64, [0 x i64] }* @array_of_string(i8* %_id4609)
  store i64* %_index_ptr4614, i64** %_last_char_a4611
  %_id4612 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4605
  %_id4613 = load i64, i64* %_i4590
  %_index_ptr4614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4612, i32 0, i32 1, i64 %_id4613
  store i64* %_index_ptr4618, i64** %_last_char_b4615
  %_id4616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars4608
  %_id4617 = load i64, i64* %_j4591
  %_index_ptr4618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4616, i32 0, i32 1, i64 %_id4617
  %_id4620 = load i64*, i64** %_last_char_a4611
  %_4622 = load i64, i64* %_id4620
  %_id4621 = load i64*, i64** %_last_char_b4615
  %_4623 = load i64, i64* %_id4621
  %_bop4619 = icmp eq i64 %_4622, %_4623
  br i1 %_bop4619, label %_then4624, label %_else4625
_then4624:
  store i8* %_Call_retval4634, i8** %_prev_lcs4627
  %_bop4628 = sub i64 %_id4629, 1
  %_id4629 = load i64, i64* %_i4590
  %_bop4630 = sub i64 %_id4631, 1
  %_id4631 = load i64, i64* %_j4591
  %_id4632 = load i8*, i8** %_a4592
  %_id4633 = load i8*, i8** %_b4593
  %_Call_retval4634 = call i8* @lcs(i64 %_bop4628, i64 %_bop4630, i8* %_id4632, i8* %_id4633)
  %_id4635 = load { i64, [1 x i64] }, { i64, [1 x i64] }* @buf
  %_index_ptr4636 = getelementptr { i64, [1 x i64] }*, { i64, [1 x i64] }** %_id4635, i32 0, i32 1, i32 0
  %_id4637 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4605
  %_id4638 = load i64, i64* %_i4590
  %_index_ptr4639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4637, i32 0, i32 1, i64 %_id4638
  store i64* %_index_ptr4639, i64** %_index_ptr4636
  store i8* %_Call_retval4642, i8** %_next_char4640
  %_id4641 = load { i64, [1 x i64] }, { i64, [1 x i64] }* @buf
  %_Call_retval4642 = call i8* @string_of_array({ i64, [1 x i64] }** %_id4641)
  %_id4643 = load i8*, i8** %_prev_lcs4627
  %_id4644 = load i8*, i8** %_next_char4640
  %_Call_retval4645 = call i8* @string_cat(i8* %_id4643, i8* %_id4644)
  %_4646 = load i8, i8* %_Call_retval4645
  ret i8* %_4646
_else4625:
  br label %_end4626
_end4626:
  store i8* %_Call_retval4653, i8** %_left_lcs4647
  %_id4648 = load i64, i64* %_i4590
  %_bop4649 = sub i64 %_id4650, 1
  %_id4650 = load i64, i64* %_j4591
  %_id4651 = load i8*, i8** %_a4592
  %_id4652 = load i8*, i8** %_b4593
  %_Call_retval4653 = call i8* @lcs(i64 %_id4648, i64 %_bop4649, i8* %_id4651, i8* %_id4652)
  store i8* %_Call_retval4660, i8** %_right_lcs4654
  %_bop4655 = sub i64 %_id4656, 1
  %_id4656 = load i64, i64* %_i4590
  %_id4657 = load i64, i64* %_j4591
  %_id4658 = load i8*, i8** %_a4592
  %_id4659 = load i8*, i8** %_b4593
  %_Call_retval4660 = call i8* @lcs(i64 %_bop4655, i64 %_id4657, i8* %_id4658, i8* %_id4659)
  store i64 %_Call_retval4663, i64* %_left_len4661
  %_id4662 = load i8*, i8** %_left_lcs4647
  %_Call_retval4663 = call i64 @length_of_string(i8* %_id4662)
  store i64 %_Call_retval4666, i64* %_right_len4664
  %_id4665 = load i8*, i8** %_right_lcs4654
  %_Call_retval4666 = call i64 @length_of_string(i8* %_id4665)
  %_id4668 = load i64, i64* %_left_len4661
  %_id4669 = load i64, i64* %_right_len4664
  %_bop4667 = icmp slt i64 %_id4668, %_id4669
  br i1 %_bop4667, label %_then4670, label %_else4671
_then4670:
  %_id4673 = load i8*, i8** %_right_lcs4654
  %_4674 = load i8, i8* %_id4673
  ret i8* %_4674
_else4671:
  %_id4675 = load i8*, i8** %_left_lcs4647
  %_4676 = load i8, i8* %_id4675
  ret i8* %_4676
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4577 = alloca i64
  store i64 %argc, i64* %_argc4577
  %_argv4578 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4578
  %_tomato4579 = alloca i8*
  %_orating4582 = alloca i8*
  store i8* %_cstr_loc4580, i8** %_tomato4579
  %_cstr_loc4580 = getelementptr [7 x i8], [7 x i8]* @_cstr_glb4581, i32 0, i32 0
  store i8* %_cstr_loc4583, i8** %_orating4582
  %_cstr_loc4583 = getelementptr [8 x i8], [8 x i8]* @_cstr_glb4584, i32 0, i32 0
  %_Call_retval4587 = call i8* @lcs(i64 5, i64 6, i8* %_id4585, i8* %_id4586)
  %_id4586 = load i8*, i8** %_orating4582
  %_id4585 = load i8*, i8** %_tomato4579
  call void @print_string(i8* %_Call_retval4587)
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
