; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x839 = alloca i64
  store i64 %x, i64* %_x839
  %_acc840 = alloca i64
  store i64 1, i64* %_acc840
  br label %_start843
_start843:
  %_id842 = load i64, i64* %_x839
  %_bop841 = icmp sgt i64 %_id842, 0
  br i1 %_bop841, label %_body844, label %_end845
_body844:
  %_id848 = load i64, i64* %_acc840
  %_id849 = load i64, i64* %_x839
  %_bop847 = mul i64 %_id848, %_id849
  store i64 %_bop847, i64* %_acc840
  %_id852 = load i64, i64* %_x839
  %_bop851 = sub i64 %_id852, 1
  store i64 %_bop851, i64* %_x839
  br label %_start843
_end845:
  %_id853 = load i64, i64* %_acc840
  ret i64 %_id853
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc833 = alloca i64
  store i64 %argc, i64* %_argc833
  %_argv834 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv834
  %_Call_retval836 = call i8* @string_of_int(i64 %_Call_retval835)
  %_Call_retval835 = call i64 @fact(i64 5)
  call void @print_string(i8* %_Call_retval836)
  ret i64 0
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
