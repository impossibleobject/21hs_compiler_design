; generated from: oatprograms/run55.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17644, i64 %_x27641, i64 %_x37638, i64 %_x47635, i64 %_x57632, i64 %_x67629, i64 %_x77626, i64 %_x87623) {
  %_x17645 = alloca i64
  %_x27642 = alloca i64
  %_x37639 = alloca i64
  store i64 %_x17644, i64* %_x17645
  store i64 %_x27641, i64* %_x27642
  store i64 %_x37638, i64* %_x37639
  %_x17647 = load i64, i64* %_x17645
  %_x27648 = load i64, i64* %_x27642
  %_bop7649 = add i64 %_x17647, %_x27648
  %_x37650 = load i64, i64* %_x37639
  %_bop7651 = add i64 %_bop7649, %_x37650
  ret i64 %_bop7651
}

define i64 @program(i64 %_argc7616, { i64, [0 x i8*] }* %_argv7613) {
  %_result7622 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result7622
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
