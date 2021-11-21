; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x834 = alloca i64
  store i64 %x, i64* %_x834
  %_y835 = alloca i64
  store i64 %y, i64* %_y835
  %_r836 = alloca i64
  store i64 0, i64* %_r836
  %_id838 = load i64, i64* %_x834
  %_bop837 = icmp sge i64 %_id838, 1
  br i1 %_bop837, label %_then839, label %_else840
_then839:
  %_bop844 = sub i64 %_id845, 1
  %_id845 = load i64, i64* %_x834
  %_id846 = load i64, i64* %_y835
  %_Call_retval847 = call i64 @f(i64 %_bop844, i64 %_id846)
  %_bop843 = add i64 1, %_Call_retval847
  store i64 %_bop843, i64* %_r836
  br label %_end841
_else840:
  %_id850 = load i64, i64* %_x834
  %_id851 = load i64, i64* %_y835
  %_bop849 = add i64 %_id850, %_id851
  store i64 %_bop849, i64* %_r836
  br label %_end841
_end841:
  %_id852 = load i64, i64* %_r836
  ret i64 %_id852
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc824 = alloca i64
  store i64 %argc, i64* %_argc824
  %_argv825 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv825
  %_x826 = alloca i64
  %_y827 = alloca i64
  store i64 3, i64* %_x826
  store i64 3, i64* %_y827
  %_id829 = load i64, i64* %_x826
  %_id830 = load i64, i64* %_y827
  %_Call_retval831 = call i64 @f(i64 %_id829, i64 %_id830)
  %_bop828 = add i64 %_Call_retval831, 0
  ret i64 %_bop828
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
