; generated from: hw5programs/compile_struct_array.oat
target triple = "x86_64-unknown-linux"
%Test = type { { i64, [0 x i64] }*, i64, { i64, [0 x i64] }* }

@arr_x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr6861 to { i64, [0 x i64] }*)
@_global_arr6861 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 3, i64 4, i64 5 ] }
@arr_z = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr6860 to { i64, [0 x i64] }*)
@_global_arr6860 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define i64 @program(i64 %_argc6830, { i64, [0 x i8*] }* %_argv6827) {
  %_t6843 = alloca %Test*
  %_raw_struct6833 = call i64* @oat_malloc(i64 24)
  %_struct6834 = bitcast i64* %_raw_struct6833 to %Test*
  %_arr_x6835 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr_x
  %_ind6836 = getelementptr %Test, %Test* %_struct6834, i32 0, i32 0
  store { i64, [0 x i64] }* %_arr_x6835, { i64, [0 x i64] }** %_ind6836
  %_ind6838 = getelementptr %Test, %Test* %_struct6834, i32 0, i32 1
  store i64 3, i64* %_ind6838
  %_arr_z6840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr_z
  %_ind6841 = getelementptr %Test, %Test* %_struct6834, i32 0, i32 2
  store { i64, [0 x i64] }* %_arr_z6840, { i64, [0 x i64] }** %_ind6841
  store %Test* %_struct6834, %Test** %_t6843
  %_t6845 = load %Test*, %Test** %_t6843
  %_index6846 = getelementptr %Test, %Test* %_t6845, i32 0, i32 0
  %_proj6847 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index6846
  %_tmp6849 = bitcast { i64, [0 x i64] }* %_proj6847 to i64*
  call void @oat_assert_array_length(i64* %_tmp6849, i64 0)
  %_index_ptr6850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_proj6847, i32 0, i32 1, i32 0
  %_index6851 = load i64, i64* %_index_ptr6850
  %_t6852 = load %Test*, %Test** %_t6843
  %_index6853 = getelementptr %Test, %Test* %_t6852, i32 0, i32 2
  %_proj6854 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index6853
  %_tmp6856 = bitcast { i64, [0 x i64] }* %_proj6854 to i64*
  call void @oat_assert_array_length(i64* %_tmp6856, i64 1)
  %_index_ptr6857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_proj6854, i32 0, i32 1, i32 1
  %_index6858 = load i64, i64* %_index_ptr6857
  %_bop6859 = mul i64 %_index6851, %_index6858
  ret i64 %_bop6859
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
