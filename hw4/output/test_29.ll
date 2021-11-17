; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i774 = alloca i64
  store i64 %i, i64* %_i774
  %_r775 = alloca i64
  store i64 0, i64* %_r775
  %_779 = load i64, i64* %_i774
  %_777 = icmp eq i64 %_779, 0
  br i1 %_777, label %_then781, label %_else782
_then781:
  store i64 1, i64* %_r775
  br label %_end783
_else782:
  %_791 = load i64, i64* %_i774
  %_793 = sub i64 %_795, 1
  %_795 = load i64, i64* %_i774
  %_retval797 = call i64 @f(i64 %_793)
  %_789 = mul i64 %_791, %_retval797
  store i64 %_789, i64* %_r775
  br label %_end783
_end783:
  %_799 = load i64, i64* %_r775
  ret i64 %_799
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc768 = alloca i64
  store i64 %argc, i64* %_argc768
  %_argv769 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv769
  %_retval772 = call i64 @f(i64 5)
  ret i64 %_retval772
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
