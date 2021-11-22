; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %acc = alloca i64
  %_x686 = alloca i64
  store i64 %x, i64* %_x686
  store i64 1, i64* %acc
  br label %_start689
_start689:
  %_id688 = load i64, i64* %_x686
  %_bop687 = icmp sgt i64 %_id688, 0
  br i1 %_bop687, label %_body690, label %_end691
_body690:
  %_id693 = load i64, i64* %acc
  %_id694 = load i64, i64* %_x686
  %_bop692 = mul i64 %_id693, %_id694
  store i64 %_bop692, i64* %acc
  %_id696 = load i64, i64* %_x686
  %_bop695 = sub i64 %_id696, 1
  store i64 %_bop695, i64* %_x686
  br label %_start689
_end691:
  %_id697 = load i64, i64* %acc
  ret i64 %_id697
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc681 = alloca i64
  store i64 %argc, i64* %_argc681
  %_argv682 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv682
  %_Call_retval684 = call i8* @string_of_int(i64 %_Call_retval683)
  %_Call_retval683 = call i64 @fact(i64 5)
  call void @print_string(i8* %_Call_retval684)
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
