; generated from: oatprograms/bubble_sort.oat
target triple = "x86_64-unknown-linux"
define void @bubble_sort({ i64, [0 x i64] }* %_arr4847, i64 %_len4844) {
  %_arr4848 = alloca { i64, [0 x i64] }*
  %_len4845 = alloca i64
  %_swapped4850 = alloca i1
  %_i4857 = alloca i64
  %_temp4886 = alloca i64
  store { i64, [0 x i64] }* %_arr4847, { i64, [0 x i64] }** %_arr4848
  store i64 %_len4844, i64* %_len4845
  store i1 1, i1* %_swapped4850
  br label %_cond4855
_body4854:
  store i1 0, i1* %_swapped4850
  store i64 0, i64* %_i4857
  br label %_cond4865
_body4864:
  %_arr4866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4848
  %_i4867 = load i64, i64* %_i4857
  %_tmp4869 = bitcast { i64, [0 x i64] }* %_arr4866 to i64*
  call void @oat_assert_array_length(i64* %_tmp4869, i64 %_i4867)
  %_index_ptr4870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4866, i32 0, i32 1, i64 %_i4867
  %_index4871 = load i64, i64* %_index_ptr4870
  %_arr4872 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4848
  %_i4873 = load i64, i64* %_i4857
  %_bop4874 = add i64 %_i4873, 1
  %_tmp4876 = bitcast { i64, [0 x i64] }* %_arr4872 to i64*
  call void @oat_assert_array_length(i64* %_tmp4876, i64 %_bop4874)
  %_index_ptr4877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4872, i32 0, i32 1, i64 %_bop4874
  %_index4878 = load i64, i64* %_index_ptr4877
  %_bop4879 = icmp sgt i64 %_index4871, %_index4878
  br i1 %_bop4879, label %_then4912, label %_else4911
_cond4855:
  %_swapped4852 = load i1, i1* %_swapped4850
  br i1 %_swapped4852, label %_body4854, label %_post4853
_cond4865:
  %_i4859 = load i64, i64* %_i4857
  %_len4860 = load i64, i64* %_len4845
  %_bop4861 = sub i64 %_len4860, 1
  %_bop4862 = icmp slt i64 %_i4859, %_bop4861
  br i1 %_bop4862, label %_body4864, label %_post4863
_else4911:
  br label %_merge4910
_merge4910:
  %_i4913 = load i64, i64* %_i4857
  %_bop4914 = add i64 %_i4913, 1
  store i64 %_bop4914, i64* %_i4857
  br label %_cond4865
_post4853:
  ret void
_post4863:
  br label %_cond4855
_then4912:
  %_arr4880 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4848
  %_i4881 = load i64, i64* %_i4857
  %_tmp4883 = bitcast { i64, [0 x i64] }* %_arr4880 to i64*
  call void @oat_assert_array_length(i64* %_tmp4883, i64 %_i4881)
  %_index_ptr4884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4880, i32 0, i32 1, i64 %_i4881
  %_index4885 = load i64, i64* %_index_ptr4884
  store i64 %_index4885, i64* %_temp4886
  %_arr4888 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4848
  %_i4889 = load i64, i64* %_i4857
  %_tmp4891 = bitcast { i64, [0 x i64] }* %_arr4888 to i64*
  call void @oat_assert_array_length(i64* %_tmp4891, i64 %_i4889)
  %_index_ptr4892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4888, i32 0, i32 1, i64 %_i4889
  %_arr4893 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4848
  %_i4894 = load i64, i64* %_i4857
  %_bop4895 = add i64 %_i4894, 1
  %_tmp4897 = bitcast { i64, [0 x i64] }* %_arr4893 to i64*
  call void @oat_assert_array_length(i64* %_tmp4897, i64 %_bop4895)
  %_index_ptr4898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4893, i32 0, i32 1, i64 %_bop4895
  %_index4899 = load i64, i64* %_index_ptr4898
  store i64 %_index4899, i64* %_index_ptr4892
  %_arr4901 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4848
  %_i4902 = load i64, i64* %_i4857
  %_bop4903 = add i64 %_i4902, 1
  %_tmp4905 = bitcast { i64, [0 x i64] }* %_arr4901 to i64*
  call void @oat_assert_array_length(i64* %_tmp4905, i64 %_bop4903)
  %_index_ptr4906 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4901, i32 0, i32 1, i64 %_bop4903
  %_temp4907 = load i64, i64* %_temp4886
  store i64 %_temp4907, i64* %_index_ptr4906
  store i1 1, i1* %_swapped4850
  br label %_merge4910
}

define i64 @program(i64 %_argc4751, { i64, [0 x i8*] }* %_argv4748) {
  %_i4758 = alloca i64
  %_j4775 = alloca i64
  %_arr4804 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_val4806 = alloca i64
  %_i4808 = alloca i64
  %_raw_array4756 = call i64* @oat_alloc_array(i64 10)
  %_array4757 = bitcast i64* %_raw_array4756 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_4755 = alloca i64
  store i64 10, i64* %_bnd_4755
  %_ptr_4754 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4757, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_4754
  store i64 0, i64* %_i4758
  br label %_cond4765
_body4764:
  %__ptr_47544766 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_4754
  %_i4767 = load i64, i64* %_i4758
  %_tmp4769 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_47544766 to i64*
  call void @oat_assert_array_length(i64* %_tmp4769, i64 %_i4767)
  %_index_ptr4770 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_47544766, i32 0, i32 1, i64 %_i4767
  %_raw_array4773 = call i64* @oat_alloc_array(i64 10)
  %_array4774 = bitcast i64* %_raw_array4773 to { i64, [0 x i64] }*
  %_bnd_4772 = alloca i64
  store i64 10, i64* %_bnd_4772
  %_ptr_4771 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4774, { i64, [0 x i64] }** %_ptr_4771
  store i64 0, i64* %_j4775
  br label %_cond4782
_body4781:
  %__ptr_47714783 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_4771
  %_j4784 = load i64, i64* %_j4775
  %_tmp4786 = bitcast { i64, [0 x i64] }* %__ptr_47714783 to i64*
  call void @oat_assert_array_length(i64* %_tmp4786, i64 %_j4784)
  %_index_ptr4787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_47714783, i32 0, i32 1, i64 %_j4784
  %_i4788 = load i64, i64* %_i4758
  %_bop4789 = mul i64 10, %_i4788
  %_j4790 = load i64, i64* %_j4775
  %_bop4791 = sub i64 %_bop4789, %_j4790
  store i64 %_bop4791, i64* %_index_ptr4787
  %_j4793 = load i64, i64* %_j4775
  %_bop4794 = add i64 %_j4793, 1
  store i64 %_bop4794, i64* %_j4775
  br label %_cond4782
_body4813:
  %_arr4815 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr4804
  %_i4816 = load i64, i64* %_i4808
  %_tmp4818 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr4815 to i64*
  call void @oat_assert_array_length(i64* %_tmp4818, i64 %_i4816)
  %_index_ptr4819 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr4815, i32 0, i32 1, i64 %_i4816
  %_index4820 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4819
  call void @bubble_sort({ i64, [0 x i64] }* %_index4820, i64 10)
  %_val4822 = load i64, i64* %_val4806
  %_arr4823 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr4804
  %_i4824 = load i64, i64* %_i4808
  %_tmp4826 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr4823 to i64*
  call void @oat_assert_array_length(i64* %_tmp4826, i64 %_i4824)
  %_index_ptr4827 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr4823, i32 0, i32 1, i64 %_i4824
  %_index4828 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4827
  %_i4829 = load i64, i64* %_i4808
  %_tmp4831 = bitcast { i64, [0 x i64] }* %_index4828 to i64*
  call void @oat_assert_array_length(i64* %_tmp4831, i64 %_i4829)
  %_index_ptr4832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4828, i32 0, i32 1, i64 %_i4829
  %_index4833 = load i64, i64* %_index_ptr4832
  %_bop4834 = add i64 %_val4822, %_index4833
  store i64 %_bop4834, i64* %_val4806
  %_i4836 = load i64, i64* %_i4808
  %_bop4837 = add i64 %_i4836, 1
  store i64 %_bop4837, i64* %_i4808
  br label %_cond4814
_cond4765:
  %_i4760 = load i64, i64* %_i4758
  %__bnd_47554761 = load i64, i64* %_bnd_4755
  %_bop4762 = icmp slt i64 %_i4760, %__bnd_47554761
  br i1 %_bop4762, label %_body4764, label %_post4763
_cond4782:
  %_j4777 = load i64, i64* %_j4775
  %__bnd_47724778 = load i64, i64* %_bnd_4772
  %_bop4779 = icmp slt i64 %_j4777, %__bnd_47724778
  br i1 %_bop4779, label %_body4781, label %_post4780
_cond4814:
  %_i4810 = load i64, i64* %_i4808
  %_bop4811 = icmp slt i64 %_i4810, 10
  br i1 %_bop4811, label %_body4813, label %_post4812
_else4842:
  ret i64 0
_merge4841:
  ret i64 0
_post4763:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4757, { i64, [0 x { i64, [0 x i64] }*] }** %_arr4804
  store i64 0, i64* %_val4806
  store i64 0, i64* %_i4808
  br label %_cond4814
_post4780:
  store { i64, [0 x i64] }* %_array4774, { i64, [0 x i64] }** %_index_ptr4770
  %_i4799 = load i64, i64* %_i4758
  %_bop4800 = add i64 %_i4799, 1
  store i64 %_bop4800, i64* %_i4758
  br label %_cond4765
_post4812:
  %_val4839 = load i64, i64* %_val4806
  %_bop4840 = icmp eq i64 %_val4839, 405
  br i1 %_bop4840, label %_then4843, label %_else4842
_then4843:
  ret i64 1
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
