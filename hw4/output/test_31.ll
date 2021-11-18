; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i925 = alloca i64
  store i64 %i, i64* %_i925
  %_r926 = alloca i64
  store i64 0, i64* %_r926
  %_930 = load i64, i64* %_i925
  %_928 = icmp eq i64 %_930, 0
  br i1 %_928, label %_then932, label %_else933
_then932:
  store i64 1, i64* %_r926
  br label %_end934
_else933:
  %_942 = load i64, i64* %_i925
  %_944 = sub i64 %_946, 1
  %_946 = load i64, i64* %_i925
  %_retval948 = call i64 @f(i64 %_944)
  %_940 = mul i64 %_942, %_retval948
  store i64 %_940, i64* %_r926
  br label %_end934
_end934:
  %_950 = load i64, i64* %_r926
  ret i64 %_950
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc919 = alloca i64
  store i64 %argc, i64* %_argc919
  %_argv920 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv920
  %_retval923 = call i64 @f(i64 5)
  ret i64 %_retval923
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
