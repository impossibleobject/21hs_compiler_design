; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i904 = alloca i64
  store i64 %i, i64* %_i904
  %_r905 = alloca i64
  store i64 0, i64* %_r905
  %_909 = load i64, i64* %_i904
  %_907 = icmp eq i64 %_909, 0
  br i1 %_907, label %_then911, label %_else912
_then911:
  store i64 1, i64* %_r905
  br label %_end913
_else912:
  %_921 = load i64, i64* %_i904
  %_923 = sub i64 %_925, 1
  %_925 = load i64, i64* %_i904
  %_retval927 = call i64 @f(i64 %_923)
  %_919 = mul i64 %_921, %_retval927
  store i64 %_919, i64* %_r905
  br label %_end913
_end913:
  %_929 = load i64, i64* %_r905
  ret i64 %_929
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc898 = alloca i64
  store i64 %argc, i64* %_argc898
  %_argv899 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv899
  %_retval902 = call i64 @f(i64 5)
  ret i64 %_retval902
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
