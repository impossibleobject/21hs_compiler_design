; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1640 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2652 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3664 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4676 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5688 = alloca { i64, [0 x i64] }*
  %_argc638 = alloca i64
  store i64 %argc, i64* %_argc638
  %_argv639 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv639
  %_raw_array641 = call i64* @oat_alloc_array(i64 3)
  %_array642 = bitcast i64* %_raw_array641 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array647 = call i64* @oat_alloc_array(i64 1)
  %_array648 = bitcast i64* %_raw_array647 to { i64, [0 x i64] }*
  %_CArr_elem_2651 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array642, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array648, { i64, [0 x i64] }** %_CArr_elem_2651
  %_raw_array645 = call i64* @oat_alloc_array(i64 1)
  %_array646 = bitcast i64* %_raw_array645 to { i64, [0 x i64] }*
  %_CArr_elem_1650 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array642, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array646, { i64, [0 x i64] }** %_CArr_elem_1650
  %_raw_array643 = call i64* @oat_alloc_array(i64 1)
  %_array644 = bitcast i64* %_raw_array643 to { i64, [0 x i64] }*
  %_CArr_elem_0649 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array642, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array644, { i64, [0 x i64] }** %_CArr_elem_0649
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array642, { i64, [0 x { i64, [0 x i64] }*] }** %_a1640
  %_raw_array653 = call i64* @oat_alloc_array(i64 3)
  %_array654 = bitcast i64* %_raw_array653 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array659 = call i64* @oat_alloc_array(i64 1)
  %_array660 = bitcast i64* %_raw_array659 to { i64, [0 x i64] }*
  %_CArr_elem_2663 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array654, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array660, { i64, [0 x i64] }** %_CArr_elem_2663
  %_raw_array657 = call i64* @oat_alloc_array(i64 1)
  %_array658 = bitcast i64* %_raw_array657 to { i64, [0 x i64] }*
  %_CArr_elem_1662 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array654, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array658, { i64, [0 x i64] }** %_CArr_elem_1662
  %_raw_array655 = call i64* @oat_alloc_array(i64 1)
  %_array656 = bitcast i64* %_raw_array655 to { i64, [0 x i64] }*
  %_CArr_elem_0661 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array654, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array656, { i64, [0 x i64] }** %_CArr_elem_0661
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array654, { i64, [0 x { i64, [0 x i64] }*] }** %_a2652
  %_raw_array665 = call i64* @oat_alloc_array(i64 3)
  %_array666 = bitcast i64* %_raw_array665 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array671 = call i64* @oat_alloc_array(i64 1)
  %_array672 = bitcast i64* %_raw_array671 to { i64, [0 x i64] }*
  %_CArr_elem_2675 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array666, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array672, { i64, [0 x i64] }** %_CArr_elem_2675
  %_raw_array669 = call i64* @oat_alloc_array(i64 1)
  %_array670 = bitcast i64* %_raw_array669 to { i64, [0 x i64] }*
  %_CArr_elem_1674 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array666, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array670, { i64, [0 x i64] }** %_CArr_elem_1674
  %_raw_array667 = call i64* @oat_alloc_array(i64 1)
  %_array668 = bitcast i64* %_raw_array667 to { i64, [0 x i64] }*
  %_CArr_elem_0673 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array666, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array668, { i64, [0 x i64] }** %_CArr_elem_0673
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array666, { i64, [0 x { i64, [0 x i64] }*] }** %_a3664
  %_raw_array677 = call i64* @oat_alloc_array(i64 3)
  %_array678 = bitcast i64* %_raw_array677 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array683 = call i64* @oat_alloc_array(i64 1)
  %_array684 = bitcast i64* %_raw_array683 to { i64, [0 x i64] }*
  %_CArr_elem_2687 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array678, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array684, { i64, [0 x i64] }** %_CArr_elem_2687
  %_raw_array681 = call i64* @oat_alloc_array(i64 1)
  %_array682 = bitcast i64* %_raw_array681 to { i64, [0 x i64] }*
  %_CArr_elem_1686 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array678, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array682, { i64, [0 x i64] }** %_CArr_elem_1686
  %_raw_array679 = call i64* @oat_alloc_array(i64 1)
  %_array680 = bitcast i64* %_raw_array679 to { i64, [0 x i64] }*
  %_CArr_elem_0685 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array678, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array680, { i64, [0 x i64] }** %_CArr_elem_0685
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array678, { i64, [0 x { i64, [0 x i64] }*] }** %_a4676
  %_raw_array689 = call i64* @oat_alloc_array(i64 3)
  %_array690 = bitcast i64* %_raw_array689 to { i64, [0 x i64] }*
  %_CArr_elem_2693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array690, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_2693
  %_CArr_elem_1692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array690, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1692
  %_CArr_elem_0691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array690, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_0691
  store { i64, [0 x i64] }* %_array690, { i64, [0 x i64] }** %_a5688
  %_id694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5688
  %_id695 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2652
  %_index_ptr696 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id695, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id694, { i64, [0 x i64] }** %_index_ptr696
  %_id697 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2652
  %_index_ptr698 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id697, i32 0, i32 1, i32 0
  %_idx_tmp699 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr698
  %_index_ptr700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp699, i32 0, i32 1, i32 0
  store i64 2, i64* %_index_ptr700
  %_id701 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2652
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id701, { i64, [0 x { i64, [0 x i64] }*] }** %_a1640
  %_id702 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1640
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id702, { i64, [0 x { i64, [0 x i64] }*] }** %_a3664
  %_id703 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4676
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id703, { i64, [0 x { i64, [0 x i64] }*] }** %_a1640
  %_id704 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3664
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id704, { i64, [0 x { i64, [0 x i64] }*] }** %_a2652
  %_id705 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2652
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id705, { i64, [0 x { i64, [0 x i64] }*] }** %_a4676
  %_id706 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4676
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id706, { i64, [0 x { i64, [0 x i64] }*] }** %_a3664
  %_id707 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3664
  %_index_ptr708 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id707, i32 0, i32 1, i32 0
  %_idx_tmp709 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr708
  %_index_ptr710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp709, i32 0, i32 1, i32 0
  %_idx_tmp711 = load i64, i64* %_index_ptr710
  ret i64 %_idx_tmp711
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
