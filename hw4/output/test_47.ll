; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_acc736 = alloca i64
  %_x735 = alloca i64
  store i64 %x, i64* %_x735
  store i64 1, i64* %_acc736
  br label %_start739
_start739:
  %_id738 = load i64, i64* %_x735
  %_bop737 = icmp sgt i64 %_id738, 0
  br i1 %_bop737, label %_body740, label %_end741
_body740:
  %_id743 = load i64, i64* %_acc736
  %_id744 = load i64, i64* %_x735
  %_bop742 = mul i64 %_id743, %_id744
  store i64 %_bop742, i64* %_acc736
  %_id746 = load i64, i64* %_x735
  %_bop745 = sub i64 %_id746, 1
  store i64 %_bop745, i64* %_x735
  br label %_start739
_end741:
  %_id747 = load i64, i64* %_acc736
  ret i64 %_id747
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc730 = alloca i64
  store i64 %argc, i64* %_argc730
  %_argv731 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv731
  %_Call_retval732 = call i64 @fact(i64 5)
  %_Call_retval733 = call i8* @string_of_int(i64 %_Call_retval732)
  call void @print_string(i8* %_Call_retval733)
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
