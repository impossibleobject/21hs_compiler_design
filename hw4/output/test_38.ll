; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_acc734 = alloca i64
  %_x733 = alloca i64
  store i64 %x, i64* %_x733
  store i64 1, i64* %_acc734
  br label %_start737
_start737:
  %_id736 = load i64, i64* %_x733
  %_bop735 = icmp sgt i64 %_id736, 0
  br i1 %_bop735, label %_body738, label %_end739
_body738:
  %_id741 = load i64, i64* %_acc734
  %_id742 = load i64, i64* %_x733
  %_bop740 = mul i64 %_id741, %_id742
  store i64 %_bop740, i64* %_acc734
  %_id744 = load i64, i64* %_x733
  %_bop743 = sub i64 %_id744, 1
  store i64 %_bop743, i64* %_x733
  br label %_start737
_end739:
  %_id745 = load i64, i64* %_acc734
  ret i64 %_id745
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc728 = alloca i64
  store i64 %argc, i64* %_argc728
  %_argv729 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv729
  %_Call_retval731 = call i8* @string_of_int(i64 %_Call_retval730)
  %_Call_retval730 = call i64 @fact(i64 5)
  call void @print_string(i8* %_Call_retval731)
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
