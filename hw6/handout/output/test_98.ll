; generated from: oatprograms/run52.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x17560, i64 %_x27557, i64 %_x37554, i64 %_x47551, i64 %_x57548, i64 %_x67545, i64 %_x77542, i64 %_x87539) {
  %_x17561 = alloca i64
  %_x27558 = alloca i64
  %_x37555 = alloca i64
  %_x47552 = alloca i64
  %_x57549 = alloca i64
  store i64 %_x17560, i64* %_x17561
  store i64 %_x27557, i64* %_x27558
  store i64 %_x37554, i64* %_x37555
  store i64 %_x47551, i64* %_x47552
  store i64 %_x57548, i64* %_x57549
  %_x17563 = load i64, i64* %_x17561
  %_x27564 = load i64, i64* %_x27558
  %_bop7565 = add i64 %_x17563, %_x27564
  %_x37566 = load i64, i64* %_x37555
  %_bop7567 = add i64 %_bop7565, %_x37566
  %_x47568 = load i64, i64* %_x47552
  %_bop7569 = add i64 %_bop7567, %_x47568
  %_x57570 = load i64, i64* %_x57549
  %_bop7571 = add i64 %_bop7569, %_x57570
  ret i64 %_bop7571
}

define i64 @program(i64 %_argc7532, { i64, [0 x i8*] }* %_argv7529) {
  %_result7538 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result7538
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
