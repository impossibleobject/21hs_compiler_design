; generated from: oatprograms/run51.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x18911, i64 %_x28908, i64 %_x38905, i64 %_x48902, i64 %_x58899, i64 %_x68896, i64 %_x78893, i64 %_x88890) {
  %_x18912 = alloca i64
  %_x28909 = alloca i64
  %_x38906 = alloca i64
  %_x48903 = alloca i64
  %_x58900 = alloca i64
  %_x68897 = alloca i64
  %_x78894 = alloca i64
  %_x88891 = alloca i64
  store i64 %_x18911, i64* %_x18912
  store i64 %_x28908, i64* %_x28909
  store i64 %_x38905, i64* %_x38906
  store i64 %_x48902, i64* %_x48903
  store i64 %_x58899, i64* %_x58900
  store i64 %_x68896, i64* %_x68897
  store i64 %_x78893, i64* %_x78894
  store i64 %_x88890, i64* %_x88891
  %_x18914 = load i64, i64* %_x18912
  %_x28915 = load i64, i64* %_x28909
  %_bop8916 = add i64 %_x18914, %_x28915
  %_x38917 = load i64, i64* %_x38906
  %_bop8918 = add i64 %_bop8916, %_x38917
  %_x48919 = load i64, i64* %_x48903
  %_bop8920 = add i64 %_bop8918, %_x48919
  %_x58921 = load i64, i64* %_x58900
  %_bop8922 = add i64 %_bop8920, %_x58921
  %_x68923 = load i64, i64* %_x68897
  %_bop8924 = add i64 %_bop8922, %_x68923
  %_x78925 = load i64, i64* %_x78894
  %_bop8926 = add i64 %_bop8924, %_x78925
  %_x88927 = load i64, i64* %_x88891
  %_bop8928 = add i64 %_bop8926, %_x88927
  ret i64 %_bop8928
}

define i64 @program(i64 %_argc8879, { i64, [0 x i8*] }* %_argv8876) {
  %_x8886 = alloca i64
  %_result8885 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  store i64 %_result8885, i64* %_x8886
  %_x8888 = load i64, i64* %_x8886
  call void @print_int(i64 %_x8888)
  ret i64 41
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
