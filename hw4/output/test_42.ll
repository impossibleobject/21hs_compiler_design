; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a1 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %a2 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %a3 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %a4 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %a5 = alloca { i64, [0 x i64] }*
  %_argc594 = alloca i64
  store i64 %argc, i64* %_argc594
  %_argv595 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv595
  %_raw_array596 = call i64* @oat_alloc_array(i64 3)
  %_array597 = bitcast i64* %_raw_array596 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array602 = call i64* @oat_alloc_array(i64 1)
  %_array603 = bitcast i64* %_raw_array602 to { i64, [0 x i64] }*
  %_CArr_elem_2606 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array597, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array603, { i64, [0 x i64] }** %_CArr_elem_2606
  %_raw_array600 = call i64* @oat_alloc_array(i64 1)
  %_array601 = bitcast i64* %_raw_array600 to { i64, [0 x i64] }*
  %_CArr_elem_1605 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array597, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array601, { i64, [0 x i64] }** %_CArr_elem_1605
  %_raw_array598 = call i64* @oat_alloc_array(i64 1)
  %_array599 = bitcast i64* %_raw_array598 to { i64, [0 x i64] }*
  %_CArr_elem_0604 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array597, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array599, { i64, [0 x i64] }** %_CArr_elem_0604
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array597, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_raw_array607 = call i64* @oat_alloc_array(i64 3)
  %_array608 = bitcast i64* %_raw_array607 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array613 = call i64* @oat_alloc_array(i64 1)
  %_array614 = bitcast i64* %_raw_array613 to { i64, [0 x i64] }*
  %_CArr_elem_2617 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array608, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array614, { i64, [0 x i64] }** %_CArr_elem_2617
  %_raw_array611 = call i64* @oat_alloc_array(i64 1)
  %_array612 = bitcast i64* %_raw_array611 to { i64, [0 x i64] }*
  %_CArr_elem_1616 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array608, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array612, { i64, [0 x i64] }** %_CArr_elem_1616
  %_raw_array609 = call i64* @oat_alloc_array(i64 1)
  %_array610 = bitcast i64* %_raw_array609 to { i64, [0 x i64] }*
  %_CArr_elem_0615 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array608, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array610, { i64, [0 x i64] }** %_CArr_elem_0615
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array608, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_raw_array618 = call i64* @oat_alloc_array(i64 3)
  %_array619 = bitcast i64* %_raw_array618 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array624 = call i64* @oat_alloc_array(i64 1)
  %_array625 = bitcast i64* %_raw_array624 to { i64, [0 x i64] }*
  %_CArr_elem_2628 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array619, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array625, { i64, [0 x i64] }** %_CArr_elem_2628
  %_raw_array622 = call i64* @oat_alloc_array(i64 1)
  %_array623 = bitcast i64* %_raw_array622 to { i64, [0 x i64] }*
  %_CArr_elem_1627 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array619, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array623, { i64, [0 x i64] }** %_CArr_elem_1627
  %_raw_array620 = call i64* @oat_alloc_array(i64 1)
  %_array621 = bitcast i64* %_raw_array620 to { i64, [0 x i64] }*
  %_CArr_elem_0626 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array619, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array621, { i64, [0 x i64] }** %_CArr_elem_0626
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array619, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_raw_array629 = call i64* @oat_alloc_array(i64 3)
  %_array630 = bitcast i64* %_raw_array629 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array635 = call i64* @oat_alloc_array(i64 1)
  %_array636 = bitcast i64* %_raw_array635 to { i64, [0 x i64] }*
  %_CArr_elem_2639 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array630, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array636, { i64, [0 x i64] }** %_CArr_elem_2639
  %_raw_array633 = call i64* @oat_alloc_array(i64 1)
  %_array634 = bitcast i64* %_raw_array633 to { i64, [0 x i64] }*
  %_CArr_elem_1638 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array630, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array634, { i64, [0 x i64] }** %_CArr_elem_1638
  %_raw_array631 = call i64* @oat_alloc_array(i64 1)
  %_array632 = bitcast i64* %_raw_array631 to { i64, [0 x i64] }*
  %_CArr_elem_0637 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array630, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array632, { i64, [0 x i64] }** %_CArr_elem_0637
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array630, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  %_raw_array640 = call i64* @oat_alloc_array(i64 3)
  %_array641 = bitcast i64* %_raw_array640 to { i64, [0 x i64] }*
  %_CArr_elem_2644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array641, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_2644
  %_CArr_elem_1643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array641, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1643
  %_CArr_elem_0642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array641, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_0642
  store { i64, [0 x i64] }* %_array641, { i64, [0 x i64] }** %a5
  %_id645 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a5
  %_id646 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_index_ptr647 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id646, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_id645, { i64, [0 x i64] }** %_index_ptr647
  %_id648 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_index_ptr649 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id648, i32 0, i32 1, i32 0
  %_idx_tmp650 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr649
  %_index_ptr651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp650, i32 0, i32 1, i32 0
  store i64 2, i64* %_index_ptr651
  %_id652 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id652, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_id653 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id653, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_id654 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id654, { i64, [0 x { i64, [0 x i64] }*] }** %a1
  %_id655 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id655, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  %_id656 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id656, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  %_id657 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a4
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id657, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_id658 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a3
  %_index_ptr659 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id658, i32 0, i32 1, i32 0
  %_idx_tmp660 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr659
  %_index_ptr661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp660, i32 0, i32 1, i32 0
  %_idx_tmp662 = load i64, i64* %_index_ptr661
  ret i64 %_idx_tmp662
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
