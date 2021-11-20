; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc772 = alloca i64
  store i64 %argc, i64* %_argc772
  %_argv773 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv773
  %_i774 = alloca i64
  %_j778 = alloca i64
  %_776 = alloca i64
  store i64 9, i64* %_776
  %_decl777 = load i64, i64* %_776
  store i64 %_decl777, i64* %_i774
  %_id782 = load i64, i64* %_i774
  %_id784 = load i64, i64* %_i774
  %_bop_tmp785 = add i64 %_id782, %_id784
  %_bop780 = alloca i64
  store i64 %_bop_tmp785, i64* %_bop780
  %_decl786 = load i64, i64* %_bop780
  store i64 %_decl786, i64* %_j778
  %_id798 = load i64, i64* %_i774
  %_id802 = load i64, i64* %_i774
  %_id804 = load i64, i64* %_i774
  %_bop_tmp805 = mul i64 %_id802, %_id804
  %_bop800 = alloca i64
  store i64 %_bop_tmp805, i64* %_bop800
  %_806 = load i64, i64* %_bop800
  %_bop_tmp807 = add i64 %_id798, %_806
  %_bop796 = alloca i64
  store i64 %_bop_tmp807, i64* %_bop796
  %_810 = load i64, i64* %_bop796
  %_id809 = load i64, i64* %_j778
  %_bop_tmp811 = sub i64 %_810, %_id809
  %_bop794 = alloca i64
  store i64 %_bop_tmp811, i64* %_bop794
  %_814 = load i64, i64* %_bop794
  %_813 = alloca i64
  store i64 2, i64* %_813
  %_815 = load i64, i64* %_813
  %_bop_tmp816 = lshr i64 %_814, %_815
  %_bop792 = alloca i64
  store i64 %_bop_tmp816, i64* %_bop792
  %_819 = load i64, i64* %_bop792
  %_818 = alloca i64
  store i64 2, i64* %_818
  %_820 = load i64, i64* %_818
  %_bop_tmp821 = shl i64 %_819, %_820
  %_bop790 = alloca i64
  store i64 %_bop_tmp821, i64* %_bop790
  %_824 = load i64, i64* %_bop790
  %_823 = alloca i64
  store i64 2, i64* %_823
  %_825 = load i64, i64* %_823
  %_bop_tmp826 = ashr i64 %_824, %_825
  %_bop788 = alloca i64
  store i64 %_bop_tmp826, i64* %_bop788
  %_ret827 = load i64, i64* %_bop788
  ret i64 %_ret827
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
