; generated from: oatprograms/run54.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17603, i64 %_x27600, i64 %_x37597, i64 %_x47594, i64 %_x57591, i64 %_x67588, i64 %_x77585, i64 %_x87582) {
  %_x17604 = alloca i64
  %_x27601 = alloca i64
  %_x37598 = alloca i64
  %_x47595 = alloca i64
  store i64 %_x17603, i64* %_x17604
  store i64 %_x27600, i64* %_x27601
  store i64 %_x37597, i64* %_x37598
  store i64 %_x47594, i64* %_x47595
  %_x17606 = load i64, i64* %_x17604
  %_x27607 = load i64, i64* %_x27601
  %_bop7608 = add i64 %_x17606, %_x27607
  %_x37609 = load i64, i64* %_x37598
  %_bop7610 = add i64 %_bop7608, %_x37609
  %_x47611 = load i64, i64* %_x47595
  %_bop7612 = add i64 %_bop7610, %_x47611
  ret i64 %_bop7612
}

define i64 @program(i64 %_argc7575, { i64, [0 x i8*] }* %_argv7572) {
  %_result7581 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result7581
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
