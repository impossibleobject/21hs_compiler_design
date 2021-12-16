; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_global_arr8778 to { i64, [0 x i64] }*)
@_global_arr8778 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_str_arr8684 = global [1 x i8] c"\00"
@_str_arr8655 = global [7 x i8] c"TOMATO\00"
@_str_arr8659 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %_i8676, i64 %_j8673, i8* %_a8670, i8* %_b8667) {
  %_i8677 = alloca i64
  %_j8674 = alloca i64
  %_a8671 = alloca i8*
  %_b8668 = alloca i8*
  %_a_chars8691 = alloca { i64, [0 x i64] }*
  %_b_chars8695 = alloca { i64, [0 x i64] }*
  %_last_char_a8703 = alloca i64
  %_last_char_b8711 = alloca i64
  %_prev_lcs8723 = alloca i8*
  %_next_char8738 = alloca i8*
  %_left_lcs8752 = alloca i8*
  %_right_lcs8760 = alloca i8*
  %_left_len8764 = alloca i64
  %_right_len8768 = alloca i64
  store i64 %_i8676, i64* %_i8677
  store i64 %_j8673, i64* %_j8674
  store i8* %_a8670, i8** %_a8671
  store i8* %_b8667, i8** %_b8668
  %_i8679 = load i64, i64* %_i8677
  %_bop8680 = icmp slt i64 %_i8679, 0
  %_j8681 = load i64, i64* %_j8674
  %_bop8682 = icmp slt i64 %_j8681, 0
  %_bop8683 = or i1 %_bop8680, %_bop8682
  br i1 %_bop8683, label %_then8688, label %_else8687
_else8687:
  br label %_merge8686
_else8744:
  br label %_merge8743
_else8776:
  %_left_lcs8774 = load i8*, i8** %_left_lcs8752
  ret i8* %_left_lcs8774
_merge8686:
  %_a8689 = load i8*, i8** %_a8671
  %_result8690 = call { i64, [0 x i64] }* @array_of_string(i8* %_a8689)
  store { i64, [0 x i64] }* %_result8690, { i64, [0 x i64] }** %_a_chars8691
  %_b8693 = load i8*, i8** %_b8668
  %_result8694 = call { i64, [0 x i64] }* @array_of_string(i8* %_b8693)
  store { i64, [0 x i64] }* %_result8694, { i64, [0 x i64] }** %_b_chars8695
  %_a_chars8697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars8691
  %_i8698 = load i64, i64* %_i8677
  %_tmp8700 = bitcast { i64, [0 x i64] }* %_a_chars8697 to i64*
  call void @oat_assert_array_length(i64* %_tmp8700, i64 %_i8698)
  %_index_ptr8701 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars8697, i32 0, i32 1, i64 %_i8698
  %_index8702 = load i64, i64* %_index_ptr8701
  store i64 %_index8702, i64* %_last_char_a8703
  %_b_chars8705 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars8695
  %_j8706 = load i64, i64* %_j8674
  %_tmp8708 = bitcast { i64, [0 x i64] }* %_b_chars8705 to i64*
  call void @oat_assert_array_length(i64* %_tmp8708, i64 %_j8706)
  %_index_ptr8709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars8705, i32 0, i32 1, i64 %_j8706
  %_index8710 = load i64, i64* %_index_ptr8709
  store i64 %_index8710, i64* %_last_char_b8711
  %_last_char_a8713 = load i64, i64* %_last_char_a8703
  %_last_char_b8714 = load i64, i64* %_last_char_b8711
  %_bop8715 = icmp eq i64 %_last_char_a8713, %_last_char_b8714
  br i1 %_bop8715, label %_then8745, label %_else8744
_merge8743:
  %_b8746 = load i8*, i8** %_b8668
  %_a8747 = load i8*, i8** %_a8671
  %_j8748 = load i64, i64* %_j8674
  %_bop8749 = sub i64 %_j8748, 1
  %_i8750 = load i64, i64* %_i8677
  %_result8751 = call i8* @lcs(i64 %_i8750, i64 %_bop8749, i8* %_a8747, i8* %_b8746)
  store i8* %_result8751, i8** %_left_lcs8752
  %_b8754 = load i8*, i8** %_b8668
  %_a8755 = load i8*, i8** %_a8671
  %_j8756 = load i64, i64* %_j8674
  %_i8757 = load i64, i64* %_i8677
  %_bop8758 = sub i64 %_i8757, 1
  %_result8759 = call i8* @lcs(i64 %_bop8758, i64 %_j8756, i8* %_a8755, i8* %_b8754)
  store i8* %_result8759, i8** %_right_lcs8760
  %_left_lcs8762 = load i8*, i8** %_left_lcs8752
  %_result8763 = call i64 @length_of_string(i8* %_left_lcs8762)
  store i64 %_result8763, i64* %_left_len8764
  %_right_lcs8766 = load i8*, i8** %_right_lcs8760
  %_result8767 = call i64 @length_of_string(i8* %_right_lcs8766)
  store i64 %_result8767, i64* %_right_len8768
  %_left_len8770 = load i64, i64* %_left_len8764
  %_right_len8771 = load i64, i64* %_right_len8768
  %_bop8772 = icmp slt i64 %_left_len8770, %_right_len8771
  br i1 %_bop8772, label %_then8777, label %_else8776
_merge8775:
  ret i8* null
_then8688:
  %_str8685 = getelementptr [1 x i8], [1 x i8]* @_str_arr8684, i32 0, i32 0
  ret i8* %_str8685
_then8745:
  %_b8716 = load i8*, i8** %_b8668
  %_a8717 = load i8*, i8** %_a8671
  %_j8718 = load i64, i64* %_j8674
  %_bop8719 = sub i64 %_j8718, 1
  %_i8720 = load i64, i64* %_i8677
  %_bop8721 = sub i64 %_i8720, 1
  %_result8722 = call i8* @lcs(i64 %_bop8721, i64 %_bop8719, i8* %_a8717, i8* %_b8716)
  store i8* %_result8722, i8** %_prev_lcs8723
  %_buf8725 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_tmp8727 = bitcast { i64, [0 x i64] }* %_buf8725 to i64*
  call void @oat_assert_array_length(i64* %_tmp8727, i64 0)
  %_index_ptr8728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_buf8725, i32 0, i32 1, i32 0
  %_a_chars8729 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars8691
  %_i8730 = load i64, i64* %_i8677
  %_tmp8732 = bitcast { i64, [0 x i64] }* %_a_chars8729 to i64*
  call void @oat_assert_array_length(i64* %_tmp8732, i64 %_i8730)
  %_index_ptr8733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars8729, i32 0, i32 1, i64 %_i8730
  %_index8734 = load i64, i64* %_index_ptr8733
  store i64 %_index8734, i64* %_index_ptr8728
  %_buf8736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_result8737 = call i8* @string_of_array({ i64, [0 x i64] }* %_buf8736)
  store i8* %_result8737, i8** %_next_char8738
  %_next_char8740 = load i8*, i8** %_next_char8738
  %_prev_lcs8741 = load i8*, i8** %_prev_lcs8723
  %_result8742 = call i8* @string_cat(i8* %_prev_lcs8741, i8* %_next_char8740)
  ret i8* %_result8742
_then8777:
  %_right_lcs8773 = load i8*, i8** %_right_lcs8760
  ret i8* %_right_lcs8773
}

define i64 @program(i64 %_argc8652, { i64, [0 x i8*] }* %_argv8649) {
  %_tomato8657 = alloca i8*
  %_orating8661 = alloca i8*
  %_str8656 = getelementptr [7 x i8], [7 x i8]* @_str_arr8655, i32 0, i32 0
  store i8* %_str8656, i8** %_tomato8657
  %_str8660 = getelementptr [8 x i8], [8 x i8]* @_str_arr8659, i32 0, i32 0
  store i8* %_str8660, i8** %_orating8661
  %_orating8663 = load i8*, i8** %_orating8661
  %_tomato8664 = load i8*, i8** %_tomato8657
  %_result8665 = call i8* @lcs(i64 5, i64 6, i8* %_tomato8664, i8* %_orating8663)
  call void @print_string(i8* %_result8665)
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
