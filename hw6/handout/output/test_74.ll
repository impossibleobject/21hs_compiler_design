; generated from: hw5programs/compile_assign_struct.oat
target triple = "x86_64-unknown-linux"
%Point = type { i64, i64 }

define i64 @program(i64 %_argc6645, { i64, [0 x i8*] }* %_argv6642) {
  %_p6654 = alloca %Point*
  %_raw_struct6648 = call i64* @oat_malloc(i64 16)
  %_struct6649 = bitcast i64* %_raw_struct6648 to %Point*
  %_ind6650 = getelementptr %Point, %Point* %_struct6649, i32 0, i32 0
  store i64 3, i64* %_ind6650
  %_ind6652 = getelementptr %Point, %Point* %_struct6649, i32 0, i32 1
  store i64 4, i64* %_ind6652
  store %Point* %_struct6649, %Point** %_p6654
  %_p6656 = load %Point*, %Point** %_p6654
  %_index6657 = getelementptr %Point, %Point* %_p6656, i32 0, i32 0
  store i64 5, i64* %_index6657
  %_p6659 = load %Point*, %Point** %_p6654
  %_index6660 = getelementptr %Point, %Point* %_p6659, i32 0, i32 1
  %_p6661 = load %Point*, %Point** %_p6654
  %_index6662 = getelementptr %Point, %Point* %_p6661, i32 0, i32 0
  %_proj6663 = load i64, i64* %_index6662
  %_p6664 = load %Point*, %Point** %_p6654
  %_index6665 = getelementptr %Point, %Point* %_p6664, i32 0, i32 1
  %_proj6666 = load i64, i64* %_index6665
  %_bop6667 = add i64 %_proj6663, %_proj6666
  %_bop6668 = add i64 %_bop6667, 3
  store i64 %_bop6668, i64* %_index6660
  %_p6670 = load %Point*, %Point** %_p6654
  %_index6671 = getelementptr %Point, %Point* %_p6670, i32 0, i32 0
  %_p6672 = load %Point*, %Point** %_p6654
  %_index6673 = getelementptr %Point, %Point* %_p6672, i32 0, i32 1
  %_proj6674 = load i64, i64* %_index6673
  %_bop6675 = add i64 %_proj6674, 4
  store i64 %_bop6675, i64* %_index6671
  %_p6677 = load %Point*, %Point** %_p6654
  %_index6678 = getelementptr %Point, %Point* %_p6677, i32 0, i32 0
  %_proj6679 = load i64, i64* %_index6678
  ret i64 %_proj6679
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
