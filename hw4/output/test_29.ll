; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i835 = alloca i64
  store i64 %i, i64* %_i835
  %_r836 = alloca i64
  store i64 0, i64* %_r836
  %_840 = load i64, i64* %_i835
  %_838 = icmp eq i64 %_840, 0
  br i1 %_838, label %_then842, label %_else843
_then842:
  store i64 1, i64* %_r836
  br label %_end844
_else843:
  %_852 = load i64, i64* %_i835
  %_854 = sub i64 %_856, 1
  %_856 = load i64, i64* %_i835
  %_retval858 = call i64 @f(i64 %_854)
  %_850 = mul i64 %_852, %_retval858
  store i64 %_850, i64* %_r836
  br label %_end844
_end844:
  %_860 = load i64, i64* %_r836
  ret i64 %_860
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc829 = alloca i64
  store i64 %argc, i64* %_argc829
  %_argv830 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv830
  %_retval833 = call i64 @f(i64 5)
  ret i64 %_retval833
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
