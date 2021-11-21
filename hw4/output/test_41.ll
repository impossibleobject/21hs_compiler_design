; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1804 = alloca i64
  store i64 %argc, i64* %_argc1804
  %_argv1805 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1805
  %_arr1806 = alloca { i64, [0 x i64] }*
  %_s1809 = alloca i64
  %_i1810 = alloca i64
  %_id1807 = getelementptr [6 x i8], [6 x i8]* @str, i32 0, i32 0
  %_Call_retval1808 = call { i64, [0 x i64] }* @array_of_string(i8* %_id1807)
  store { i64, [0 x i64] }* %_Call_retval1808, { i64, [0 x i64] }** %_arr1806
  store i64 0, i64* %_s1809
  store i64 0, i64* %_i1810
  br label %_start1813
_start1813:
  %_id1812 = load i64, i64* %_i1810
  %_bop1811 = icmp slt i64 %_id1812, 5
  br i1 %_bop1811, label %_body1814, label %_end1815
_body1814:
  %_id1818 = load i64, i64* %_s1809
  %_id1819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1806
  %_id1820 = load i64, i64* %_i1810
  %_index_ptr1821 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1819, i32 0, i32 1, i64 %_id1820
  %_1822 = load i64, i64* %_index_ptr1821
  %_bop1817 = add i64 %_id1818, %_1822
  store i64 %_bop1817, i64* %_s1809
  %_id1825 = load i64, i64* %_i1810
  %_bop1824 = add i64 %_id1825, 1
  store i64 %_bop1824, i64* %_i1810
  br label %_start1813
_end1815:
  %_id1826 = load i64, i64* %_s1809
  call void @print_int(i64 %_id1826)
  %_id1828 = load i64, i64* %_s1809
  ret i64 %_id1828
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
