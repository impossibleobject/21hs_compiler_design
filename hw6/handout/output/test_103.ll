; generated from: hw5programs/length1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc8628, { i64, [0 x i8*] }* %_argv8625) {
  %_x8643 = alloca { i64, [0 x i64] }*
  %_raw_array8631 = call i64* @oat_alloc_array(i64 5)
  %_array8632 = bitcast i64* %_raw_array8631 to { i64, [0 x i64] }*
  %_ind8633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8632, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind8633
  %_ind8635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8632, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind8635
  %_ind8637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8632, i32 0, i32 1, i32 2
  store i64 5, i64* %_ind8637
  %_ind8639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8632, i32 0, i32 1, i32 3
  store i64 6, i64* %_ind8639
  %_ind8641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array8632, i32 0, i32 1, i32 4
  store i64 7, i64* %_ind8641
  store { i64, [0 x i64] }* %_array8632, { i64, [0 x i64] }** %_x8643
  %_x8645 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x8643
  %_index_ptr8647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x8645, i32 0, i32 0
  %_len8648 = load i64, i64* %_index_ptr8647
  ret i64 %_len8648
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
