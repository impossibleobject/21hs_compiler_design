; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_bop1788 = add i64 1, 1
  store i64 %_bop1788, i64* @a
  ret i64 %_bop1788
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1765 = alloca i64
  store i64 %argc, i64* %_argc1765
  %_argv1766 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1766
  %_b1767 = alloca { i64, [0 x i64] }*
  %_Call_retval1768 = call i64 @f()
  %_raw_array1769 = call i64* @oat_alloc_array(i64 %_Call_retval1768)
  %_array1770 = bitcast i64* %_raw_array1769 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1770, { i64, [0 x i64] }** %_b1767
  %_id1771 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1767
  %_index_ptr1772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1771, i32 0, i32 1, i32 0
  %_Call_retval1773 = call i64 @f()
  store i64 %_Call_retval1773, i64* %_index_ptr1772
  %_id1774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1767
  %_index_ptr1775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1774, i32 0, i32 1, i32 1
  %_Call_retval1776 = call i64 @f()
  store i64 %_Call_retval1776, i64* %_index_ptr1775
  %_id1780 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1767
  %_index_ptr1781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1780, i32 0, i32 1, i32 0
  %_1782 = load i64, i64* %_index_ptr1781
  %_bop1778 = add i64 1, %_1782
  %_id1783 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1767
  %_index_ptr1784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1783, i32 0, i32 1, i32 1
  %_1785 = load i64, i64* %_index_ptr1784
  %_bop1777 = add i64 %_bop1778, %_1785
  ret i64 %_bop1777
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
