; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x805 = alloca i64
  store i64 %x, i64* %_x805
  %_id806 = load i64, i64* %_x805
  ret i64 %_id806
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y801 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y801
  %_id802 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y801
  %_index_ptr803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id802, i32 0, i32 1, i32 2
  %_idx_tmp804 = load i64, i64* %_index_ptr803
  ret i64 %_idx_tmp804
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr750 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr763 = alloca { i64, [0 x i64] }*
  %_p770 = alloca i64
  %_j771 = alloca i64
  %_argc748 = alloca i64
  store i64 %argc, i64* %_argc748
  %_argv749 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv749
  %_raw_array751 = call i64* @oat_alloc_array(i64 2)
  %_array752 = bitcast i64* %_raw_array751 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array757 = call i64* @oat_alloc_array(i64 2)
  %_array758 = bitcast i64* %_raw_array757 to { i64, [0 x i64] }*
  %_CArr_elem_1760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1760
  %_CArr_elem_0759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0759
  %_CArr_elem_1762 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array752, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array758, { i64, [0 x i64] }** %_CArr_elem_1762
  %_raw_array753 = call i64* @oat_alloc_array(i64 2)
  %_array754 = bitcast i64* %_raw_array753 to { i64, [0 x i64] }*
  %_CArr_elem_1756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array754, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1756
  %_CArr_elem_0755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array754, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0755
  %_CArr_elem_0761 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array752, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array754, { i64, [0 x i64] }** %_CArr_elem_0761
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array752, { i64, [0 x { i64, [0 x i64] }*] }** %_garr750
  %_raw_array764 = call i64* @oat_alloc_array(i64 4)
  %_array765 = bitcast i64* %_raw_array764 to { i64, [0 x i64] }*
  %_CArr_elem_3769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array765, i32 0, i32 1, i32 3
  store i64 4, i64* %_CArr_elem_3769
  %_CArr_elem_2768 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array765, i32 0, i32 1, i32 2
  store i64 3, i64* %_CArr_elem_2768
  %_CArr_elem_1767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array765, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1767
  %_CArr_elem_0766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array765, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0766
  store { i64, [0 x i64] }* %_array765, { i64, [0 x i64] }** %_arr763
  store i64 0, i64* %_p770
  store i64 0, i64* %_j771
  br label %_start774
_start774:
  %_id773 = load i64, i64* %_j771
  %_bop772 = icmp slt i64 %_id773, 100
  br i1 %_bop772, label %_body775, label %_end776
_body775:
  %_id778 = load i64, i64* %_p770
  %_bop777 = add i64 %_id778, 1
  store i64 %_bop777, i64* %_p770
  %_id780 = load i64, i64* %_j771
  %_bop779 = add i64 %_id780, 1
  store i64 %_bop779, i64* %_j771
  br label %_start774
_end776:
  %_id785 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr763
  %_Call_retval786 = call i64 @g({ i64, [0 x i64] }* %_id785)
  %_id787 = load i64, i64* @i
  %_Call_retval788 = call i64 @f(i64 %_id787)
  %_bop784 = add i64 %_Call_retval786, %_Call_retval788
  %_id789 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr763
  %_index_ptr790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id789, i32 0, i32 1, i32 3
  %_idx_tmp791 = load i64, i64* %_index_ptr790
  %_Call_retval792 = call i64 @f(i64 %_idx_tmp791)
  %_bop783 = add i64 %_bop784, %_Call_retval792
  %_id793 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr750
  %_index_ptr794 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id793, i32 0, i32 1, i32 1
  %_idx_tmp795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr794
  %_index_ptr796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp795, i32 0, i32 1, i32 1
  %_idx_tmp797 = load i64, i64* %_index_ptr796
  %_Call_retval798 = call i64 @f(i64 %_idx_tmp797)
  %_bop782 = add i64 %_bop783, %_Call_retval798
  %_id799 = load i64, i64* %_p770
  %_Call_retval800 = call i64 @f(i64 %_id799)
  %_bop781 = add i64 %_bop782, %_Call_retval800
  ret i64 %_bop781
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
