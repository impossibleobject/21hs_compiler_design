; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %r = alloca i64
  %_x760 = alloca i64
  store i64 %x, i64* %_x760
  %_y761 = alloca i64
  store i64 %y, i64* %_y761
  store i64 0, i64* %r
  %_id763 = load i64, i64* %_x760
  %_bop762 = icmp sge i64 %_id763, 1
  br i1 %_bop762, label %_then764, label %_else765
_then764:
  %_bop768 = sub i64 %_id769, 1
  %_id769 = load i64, i64* %_x760
  %_id770 = load i64, i64* %_y761
  %_Call_retval771 = call i64 @f(i64 %_bop768, i64 %_id770)
  %_bop767 = add i64 1, %_Call_retval771
  store i64 %_bop767, i64* %r
  br label %_end766
_else765:
  %_id773 = load i64, i64* %_x760
  %_id774 = load i64, i64* %_y761
  %_bop772 = add i64 %_id773, %_id774
  store i64 %_bop772, i64* %r
  br label %_end766
_end766:
  %_id775 = load i64, i64* %r
  ret i64 %_id775
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca i64
  %y = alloca i64
  %_argc753 = alloca i64
  store i64 %argc, i64* %_argc753
  %_argv754 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv754
  store i64 3, i64* %x
  store i64 3, i64* %y
  %_id756 = load i64, i64* %x
  %_id757 = load i64, i64* %y
  %_Call_retval758 = call i64 @f(i64 %_id756, i64 %_id757)
  %_id759 = load i64, i64* @i
  %_bop755 = add i64 %_Call_retval758, %_id759
  ret i64 %_bop755
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
