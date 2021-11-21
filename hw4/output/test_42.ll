; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb1834 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1830 = alloca i64
  store i64 %argc, i64* %_argc1830
  %_argv1831 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1831
  %_str1832 = alloca i8*
  %_arr1835 = alloca { i64, [0 x i64] }*
  %_s1838 = alloca i64
  %_i1839 = alloca i64
  %_cstr_loc1833 = getelementptr [6 x i8], [6 x i8]* @_cstr_glb1834, i32 0, i32 0
  store i8* %_cstr_loc1833, i8** %_str1832
  %_id1836 = load i8*, i8** %_str1832
  %_Call_retval1837 = call { i64, [0 x i64] }* @array_of_string(i8* %_id1836)
  store { i64, [0 x i64] }* %_Call_retval1837, { i64, [0 x i64] }** %_arr1835
  store i64 0, i64* %_s1838
  store i64 0, i64* %_i1839
  br label %_start1842
_start1842:
  %_id1841 = load i64, i64* %_i1839
  %_bop1840 = icmp slt i64 %_id1841, 5
  br i1 %_bop1840, label %_body1843, label %_end1844
_body1843:
  %_id1847 = load i64, i64* %_s1838
  %_id1848 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1835
  %_id1849 = load i64, i64* %_i1839
  %_index_ptr1850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1848, i32 0, i32 1, i64 %_id1849
  %_1851 = load i64, i64* %_index_ptr1850
  %_bop1846 = add i64 %_id1847, %_1851
  store i64 %_bop1846, i64* %_s1838
  %_id1854 = load i64, i64* %_i1839
  %_bop1853 = add i64 %_id1854, 1
  store i64 %_bop1853, i64* %_i1839
  br label %_start1842
_end1844:
  %_id1855 = load i64, i64* %_s1838
  ret i64 %_id1855
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
