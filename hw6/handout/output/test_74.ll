; generated from: hw5programs/compile_nested_struct.oat
target triple = "x86_64-unknown-linux"
%RGB = type { i64, i64, i64 }
%Point = type { %RGB*, %RGB*, %RGB* }

@red = global %RGB* @_global_struct6793
@_global_struct6793 = global %RGB { i64 255, i64 0, i64 0 }
@green = global %RGB* @_global_struct6792
@_global_struct6792 = global %RGB { i64 0, i64 255, i64 0 }
@blue = global %RGB* @_global_struct6791
@_global_struct6791 = global %RGB { i64 0, i64 0, i64 255 }
@points = global { i64, [0 x %Point*] }* bitcast ({ i64, [1 x %Point*] }* @_global_arr6790 to { i64, [0 x %Point*] }*)
@_global_arr6790 = global { i64, [1 x %Point*] } { i64 1, [1 x %Point*] [ %Point* @_global_struct6789 ] }
@_global_struct6789 = global %Point { %RGB* @_global_struct6788, %RGB* @_global_struct6787, %RGB* @_global_struct6786 }
@_global_struct6788 = global %RGB { i64 255, i64 0, i64 0 }
@_global_struct6787 = global %RGB { i64 0, i64 255, i64 0 }
@_global_struct6786 = global %RGB { i64 0, i64 0, i64 255 }

define i64 @program(i64 %_argc6727, { i64, [0 x i8*] }* %_argv6724) {
  %_points6730 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6732 = bitcast { i64, [0 x %Point*] }* %_points6730 to i64*
  call void @oat_assert_array_length(i64* %_tmp6732, i64 0)
  %_index_ptr6733 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6730, i32 0, i32 1, i32 0
  %_index6734 = load %Point*, %Point** %_index_ptr6733
  %_index6735 = getelementptr %Point, %Point* %_index6734, i32 0, i32 0
  %_proj6736 = load %RGB*, %RGB** %_index6735
  %_index6737 = getelementptr %RGB, %RGB* %_proj6736, i32 0, i32 0
  store i64 3, i64* %_index6737
  %_points6739 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6741 = bitcast { i64, [0 x %Point*] }* %_points6739 to i64*
  call void @oat_assert_array_length(i64* %_tmp6741, i64 0)
  %_index_ptr6742 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6739, i32 0, i32 1, i32 0
  %_index6743 = load %Point*, %Point** %_index_ptr6742
  %_index6744 = getelementptr %Point, %Point* %_index6743, i32 0, i32 0
  %_proj6745 = load %RGB*, %RGB** %_index6744
  %_index6746 = getelementptr %RGB, %RGB* %_proj6745, i32 0, i32 1
  store i64 2, i64* %_index6746
  %_points6748 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6750 = bitcast { i64, [0 x %Point*] }* %_points6748 to i64*
  call void @oat_assert_array_length(i64* %_tmp6750, i64 0)
  %_index_ptr6751 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6748, i32 0, i32 1, i32 0
  %_index6752 = load %Point*, %Point** %_index_ptr6751
  %_index6753 = getelementptr %Point, %Point* %_index6752, i32 0, i32 0
  %_proj6754 = load %RGB*, %RGB** %_index6753
  %_index6755 = getelementptr %RGB, %RGB* %_proj6754, i32 0, i32 2
  store i64 4, i64* %_index6755
  %_points6757 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6759 = bitcast { i64, [0 x %Point*] }* %_points6757 to i64*
  call void @oat_assert_array_length(i64* %_tmp6759, i64 0)
  %_index_ptr6760 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6757, i32 0, i32 1, i32 0
  %_index6761 = load %Point*, %Point** %_index_ptr6760
  %_index6762 = getelementptr %Point, %Point* %_index6761, i32 0, i32 0
  %_proj6763 = load %RGB*, %RGB** %_index6762
  %_index6764 = getelementptr %RGB, %RGB* %_proj6763, i32 0, i32 0
  %_proj6765 = load i64, i64* %_index6764
  %_points6766 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6768 = bitcast { i64, [0 x %Point*] }* %_points6766 to i64*
  call void @oat_assert_array_length(i64* %_tmp6768, i64 0)
  %_index_ptr6769 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6766, i32 0, i32 1, i32 0
  %_index6770 = load %Point*, %Point** %_index_ptr6769
  %_index6771 = getelementptr %Point, %Point* %_index6770, i32 0, i32 0
  %_proj6772 = load %RGB*, %RGB** %_index6771
  %_index6773 = getelementptr %RGB, %RGB* %_proj6772, i32 0, i32 1
  %_proj6774 = load i64, i64* %_index6773
  %_bop6775 = mul i64 %_proj6765, %_proj6774
  %_points6776 = load { i64, [0 x %Point*] }*, { i64, [0 x %Point*] }** @points
  %_tmp6778 = bitcast { i64, [0 x %Point*] }* %_points6776 to i64*
  call void @oat_assert_array_length(i64* %_tmp6778, i64 0)
  %_index_ptr6779 = getelementptr { i64, [0 x %Point*] }, { i64, [0 x %Point*] }* %_points6776, i32 0, i32 1, i32 0
  %_index6780 = load %Point*, %Point** %_index_ptr6779
  %_index6781 = getelementptr %Point, %Point* %_index6780, i32 0, i32 0
  %_proj6782 = load %RGB*, %RGB** %_index6781
  %_index6783 = getelementptr %RGB, %RGB* %_proj6782, i32 0, i32 2
  %_proj6784 = load i64, i64* %_index6783
  %_bop6785 = add i64 %_bop6775, %_proj6784
  ret i64 %_bop6785
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
