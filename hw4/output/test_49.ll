; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_r818 = alloca i64
  %_x816 = alloca i64
  store i64 %x, i64* %_x816
  %_y817 = alloca i64
  store i64 %y, i64* %_y817
  store i64 0, i64* %_r818
  %_id820 = load i64, i64* %_x816
  %_bop819 = icmp sge i64 %_id820, 1
  br i1 %_bop819, label %_then821, label %_else822
_then821:
  %_id827 = load i64, i64* %_y817
  %_id826 = load i64, i64* %_x816
  %_bop825 = sub i64 %_id826, 1
  %_Call_retval828 = call i64 @f(i64 %_bop825, i64 %_id827)
  %_bop824 = add i64 1, %_Call_retval828
  store i64 %_bop824, i64* %_r818
  br label %_end823
_else822:
  %_id830 = load i64, i64* %_x816
  %_id831 = load i64, i64* %_y817
  %_bop829 = add i64 %_id830, %_id831
  store i64 %_bop829, i64* %_r818
  br label %_end823
_end823:
  %_id832 = load i64, i64* %_r818
  ret i64 %_id832
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x809 = alloca i64
  %_y810 = alloca i64
  %_argc807 = alloca i64
  store i64 %argc, i64* %_argc807
  %_argv808 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv808
  store i64 3, i64* %_x809
  store i64 3, i64* %_y810
  %_id813 = load i64, i64* %_y810
  %_id812 = load i64, i64* %_x809
  %_Call_retval814 = call i64 @f(i64 %_id812, i64 %_id813)
  %_id815 = load i64, i64* @i
  %_bop811 = add i64 %_Call_retval814, %_id815
  ret i64 %_bop811
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
