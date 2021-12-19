; generated from: hw5programs/compile_basic_struct.oat
target triple = "x86_64-unknown-linux"
%Color = type { i64, i64, i64 }

define i64 @program(i64 %_argc6683, { i64, [0 x i8*] }* %_argv6680) {
  %_garr6694 = alloca %Color*
  %_raw_struct6686 = call i64* @oat_malloc(i64 24)
  %_struct6687 = bitcast i64* %_raw_struct6686 to %Color*
  %_ind6688 = getelementptr %Color, %Color* %_struct6687, i32 0, i32 0
  store i64 3, i64* %_ind6688
  %_ind6690 = getelementptr %Color, %Color* %_struct6687, i32 0, i32 1
  store i64 4, i64* %_ind6690
  %_ind6692 = getelementptr %Color, %Color* %_struct6687, i32 0, i32 2
  store i64 5, i64* %_ind6692
  store %Color* %_struct6687, %Color** %_garr6694
  %_garr6696 = load %Color*, %Color** %_garr6694
  %_index6697 = getelementptr %Color, %Color* %_garr6696, i32 0, i32 0
  %_proj6698 = load i64, i64* %_index6697
  %_garr6699 = load %Color*, %Color** %_garr6694
  %_index6700 = getelementptr %Color, %Color* %_garr6699, i32 0, i32 1
  %_proj6701 = load i64, i64* %_index6700
  %_bop6702 = add i64 %_proj6698, %_proj6701
  ret i64 %_bop6702
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
