; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x18858, i64 %_x28855, i64 %_x38852, i64 %_x48849, i64 %_x58846, i64 %_x68843, i64 %_x78840, i64 %_x88837) {
  %_x18859 = alloca i64
  %_x28856 = alloca i64
  %_x38853 = alloca i64
  %_x48850 = alloca i64
  %_x58847 = alloca i64
  %_x68844 = alloca i64
  %_x78841 = alloca i64
  %_x88838 = alloca i64
  store i64 %_x18858, i64* %_x18859
  store i64 %_x28855, i64* %_x28856
  store i64 %_x38852, i64* %_x38853
  store i64 %_x48849, i64* %_x48850
  store i64 %_x58846, i64* %_x58847
  store i64 %_x68843, i64* %_x68844
  store i64 %_x78840, i64* %_x78841
  store i64 %_x88837, i64* %_x88838
  %_x18861 = load i64, i64* %_x18859
  %_x28862 = load i64, i64* %_x28856
  %_bop8863 = add i64 %_x18861, %_x28862
  %_x38864 = load i64, i64* %_x38853
  %_bop8865 = add i64 %_bop8863, %_x38864
  %_x48866 = load i64, i64* %_x48850
  %_bop8867 = add i64 %_bop8865, %_x48866
  %_x58868 = load i64, i64* %_x58847
  %_bop8869 = add i64 %_bop8867, %_x58868
  %_x68870 = load i64, i64* %_x68844
  %_bop8871 = add i64 %_bop8869, %_x68870
  %_x78872 = load i64, i64* %_x78841
  %_bop8873 = add i64 %_bop8871, %_x78872
  %_x88874 = load i64, i64* %_x88838
  %_bop8875 = add i64 %_bop8873, %_x88874
  ret i64 %_bop8875
}

define i64 @program(i64 %_argc8830, { i64, [0 x i8*] }* %_argv8827) {
  %_result8836 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 -5, i64 -4, i64 -3)
  ret i64 %_result8836
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
