; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x751 = alloca i64
  store i64 %x, i64* %_x751
  %_id752 = load i64, i64* %_x751
  ret i64 %_id752
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y747 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y747
  %_id748 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y747
  %_index_ptr749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id748, i32 0, i32 1, i32 2
  %_idx_tmp750 = load i64, i64* %_index_ptr749
  ret i64 %_idx_tmp750
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %garr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %arr = alloca { i64, [0 x i64] }*
  %p = alloca i64
  %j = alloca i64
  %_argc698 = alloca i64
  store i64 %argc, i64* %_argc698
  %_argv699 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv699
  %_raw_array700 = call i64* @oat_alloc_array(i64 2)
  %_array701 = bitcast i64* %_raw_array700 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array706 = call i64* @oat_alloc_array(i64 2)
  %_array707 = bitcast i64* %_raw_array706 to { i64, [0 x i64] }*
  %_CArr_elem_1709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array707, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1709
  %_CArr_elem_0708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array707, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0708
  %_CArr_elem_1711 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array701, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array707, { i64, [0 x i64] }** %_CArr_elem_1711
  %_raw_array702 = call i64* @oat_alloc_array(i64 2)
  %_array703 = bitcast i64* %_raw_array702 to { i64, [0 x i64] }*
  %_CArr_elem_1705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array703, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1705
  %_CArr_elem_0704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array703, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0704
  %_CArr_elem_0710 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array701, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array703, { i64, [0 x i64] }** %_CArr_elem_0710
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array701, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_raw_array712 = call i64* @oat_alloc_array(i64 4)
  %_array713 = bitcast i64* %_raw_array712 to { i64, [0 x i64] }*
  %_CArr_elem_3717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array713, i32 0, i32 1, i32 3
  store i64 4, i64* %_CArr_elem_3717
  %_CArr_elem_2716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array713, i32 0, i32 1, i32 2
  store i64 3, i64* %_CArr_elem_2716
  %_CArr_elem_1715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array713, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1715
  %_CArr_elem_0714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array713, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0714
  store { i64, [0 x i64] }* %_array713, { i64, [0 x i64] }** %arr
  store i64 0, i64* %p
  store i64 0, i64* %j
  br label %_start720
_start720:
  %_id719 = load i64, i64* %j
  %_bop718 = icmp slt i64 %_id719, 100
  br i1 %_bop718, label %_body721, label %_end722
_body721:
  %_id724 = load i64, i64* %p
  %_bop723 = add i64 %_id724, 1
  store i64 %_bop723, i64* %p
  %_id726 = load i64, i64* %j
  %_bop725 = add i64 %_id726, 1
  store i64 %_bop725, i64* %j
  br label %_start720
_end722:
  %_id731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_Call_retval732 = call i64 @g({ i64, [0 x i64] }* %_id731)
  %_id733 = load i64, i64* @i
  %_Call_retval734 = call i64 @f(i64 %_id733)
  %_bop730 = add i64 %_Call_retval732, %_Call_retval734
  %_idx_tmp737 = load i64, i64* %_index_ptr736
  %_index_ptr736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id735, i32 0, i32 1, i32 3
  %_id735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_Call_retval738 = call i64 @f(i64 %_idx_tmp737)
  %_bop729 = add i64 %_bop730, %_Call_retval738
  %_idx_tmp743 = load i64, i64* %_index_ptr742
  %_index_ptr742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp741, i32 0, i32 1, i32 1
  %_idx_tmp741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr740
  %_index_ptr740 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id739, i32 0, i32 1, i32 1
  %_id739 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %garr
  %_Call_retval744 = call i64 @f(i64 %_idx_tmp743)
  %_bop728 = add i64 %_bop729, %_Call_retval744
  %_id745 = load i64, i64* %p
  %_Call_retval746 = call i64 @f(i64 %_id745)
  %_bop727 = add i64 %_bop728, %_Call_retval746
  ret i64 %_bop727
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
