; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr8811 to { i64, [0 x i64] }*)
@_global_arr8811 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr8810 to { i64, [0 x i64] }*)
@_global_arr8810 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x8818, { i64, [0 x i64] }* %_y8815, i1 %_b8812) {
  %_x8819 = alloca { i64, [0 x i64] }*
  %_y8816 = alloca { i64, [0 x i64] }*
  %_b8813 = alloca i1
  store { i64, [0 x i64] }* %_x8818, { i64, [0 x i64] }** %_x8819
  store { i64, [0 x i64] }* %_y8815, { i64, [0 x i64] }** %_y8816
  store i1 %_b8812, i1* %_b8813
  %_b8821 = load i1, i1* %_b8813
  br i1 %_b8821, label %_then8826, label %_else8825
_else8825:
  %_y8823 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y8816
  ret { i64, [0 x i64] }* %_y8823
_merge8824:
  ret { i64, [0 x i64] }* null
_then8826:
  %_x8822 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x8819
  ret { i64, [0 x i64] }* %_x8822
}

define i64 @program(i64 %_argc8782, { i64, [0 x i8*] }* %_argv8779) {
  %_z8807 = alloca i64
  %_y8785 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x8786 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_result8787 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x8786, { i64, [0 x i64] }* %_y8785, i1 1)
  %_tmp8789 = bitcast { i64, [0 x i64] }* %_result8787 to i64*
  call void @oat_assert_array_length(i64* %_tmp8789, i64 0)
  %_index_ptr8790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result8787, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr8790
  %_y8792 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x8793 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_result8794 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x8793, { i64, [0 x i64] }* %_y8792, i1 1)
  %_tmp8796 = bitcast { i64, [0 x i64] }* %_result8794 to i64*
  call void @oat_assert_array_length(i64* %_tmp8796, i64 0)
  %_index_ptr8797 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result8794, i32 0, i32 1, i32 0
  %_index8798 = load i64, i64* %_index_ptr8797
  %_x8799 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y8800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_result8801 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y8800, { i64, [0 x i64] }* %_x8799, i1 0)
  %_tmp8803 = bitcast { i64, [0 x i64] }* %_result8801 to i64*
  call void @oat_assert_array_length(i64* %_tmp8803, i64 0)
  %_index_ptr8804 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result8801, i32 0, i32 1, i32 0
  %_index8805 = load i64, i64* %_index_ptr8804
  %_bop8806 = add i64 %_index8798, %_index8805
  store i64 %_bop8806, i64* %_z8807
  %_z8809 = load i64, i64* %_z8807
  ret i64 %_z8809
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
