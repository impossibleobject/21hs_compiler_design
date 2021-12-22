; generated from: hw5programs/compile_global_struct.oat
target triple = "x86_64-unknown-linux"
%Color = type { i64, i64, i64 }

@white = global %Color* @_global_struct6723
@_global_struct6723 = global %Color { i64 255, i64 254, i64 253 }

define i64 @program(i64 %_argc6706, { i64, [0 x i8*] }* %_argv6703) {
  %_raw_struct6709 = call i64* @oat_malloc(i64 24)
  %_struct6710 = bitcast i64* %_raw_struct6709 to %Color*
  %_ind6711 = getelementptr %Color, %Color* %_struct6710, i32 0, i32 0
  store i64 3, i64* %_ind6711
  %_ind6713 = getelementptr %Color, %Color* %_struct6710, i32 0, i32 1
  store i64 5, i64* %_ind6713
  %_ind6715 = getelementptr %Color, %Color* %_struct6710, i32 0, i32 2
  store i64 7, i64* %_ind6715
  %_white6719 = load %Color*, %Color** @white
  %_index6720 = getelementptr %Color, %Color* %_white6719, i32 0, i32 2
  %_proj6721 = load i64, i64* %_index6720
  %_bop6722 = add i64 %_proj6721, 1
  ret i64 %_bop6722
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
