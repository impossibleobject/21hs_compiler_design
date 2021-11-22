; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_r816 = alloca i64
  %_x814 = alloca i64
  store i64 %x, i64* %_x814
  %_y815 = alloca i64
  store i64 %y, i64* %_y815
  store i64 0, i64* %_r816
  %_id818 = load i64, i64* %_x814
  %_bop817 = icmp sge i64 %_id818, 1
  br i1 %_bop817, label %_then819, label %_else820
_then819:
  %_bop823 = sub i64 %_id824, 1
  %_id824 = load i64, i64* %_x814
  %_id825 = load i64, i64* %_y815
  %_Call_retval826 = call i64 @f(i64 %_bop823, i64 %_id825)
  %_bop822 = add i64 1, %_Call_retval826
  store i64 %_bop822, i64* %_r816
  br label %_end821
_else820:
  %_id828 = load i64, i64* %_x814
  %_id829 = load i64, i64* %_y815
  %_bop827 = add i64 %_id828, %_id829
  store i64 %_bop827, i64* %_r816
  br label %_end821
_end821:
  %_id830 = load i64, i64* %_r816
  ret i64 %_id830
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x807 = alloca i64
  %_y808 = alloca i64
  %_argc805 = alloca i64
  store i64 %argc, i64* %_argc805
  %_argv806 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv806
  store i64 3, i64* %_x807
  store i64 3, i64* %_y808
  %_id810 = load i64, i64* %_x807
  %_id811 = load i64, i64* %_y808
  %_Call_retval812 = call i64 @f(i64 %_id810, i64 %_id811)
  %_id813 = load i64, i64* @i
  %_bop809 = add i64 %_Call_retval812, %_id813
  ret i64 %_bop809
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
