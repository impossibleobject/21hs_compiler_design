; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str5839 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator5923 = alloca i64
  store i64 %numerator, i64* %_numerator5923
  %_denominator5924 = alloca i64
  store i64 %denominator, i64* %_denominator5924
  %_quotient5941 = alloca i64
  %_remainder5943 = alloca i64
  %_5927 = load i64, i64* %_denominator5924
  %_5925 = icmp slt i64 %_5927, 0
  br i1 %_5925, label %_then5929, label %_else5930
_then5929:
  %_5932 = sub i64 0, %_retval5939
  %_5935 = load i64, i64* %_numerator5923
  %_5938 = load i64, i64* %_denominator5924
  %_5936 = sub i64 0, %_5938
  %_retval5939 = call i64 @euclid_division(i64 %_5935, i64 %_5936)
  ret i64 %_5932
_else5930:
  br label %_end5931
_end5931:
  store i64 0, i64* %_quotient5941
  store i64 %_5945, i64* %_remainder5943
  %_5945 = load i64, i64* %_numerator5923
  %_5948 = load i64, i64* %_numerator5923
  %_5946 = icmp slt i64 %_5948, 0
  br i1 %_5946, label %_then5950, label %_else5951
_then5950:
  %_5955 = sub i64 0, %_5957
  %_5957 = load i64, i64* %_numerator5923
  store i64 %_5955, i64* %_remainder5943
  br label %_start5963
_start5963:
  %_5962 = load i64, i64* %_denominator5924
  %_5958 = icmp sge i64 %_5955, %_5962
  br i1 %_5958, label %_body5964, label %_end5965
_body5964:
  %_5970 = load i64, i64* %_quotient5941
  %_5968 = add i64 %_5970, 1
  store i64 %_5968, i64* %_quotient5941
  %_5978 = load i64, i64* %_denominator5924
  %_5974 = sub i64 %_5955, %_5978
  store i64 %_5974, i64* @remainder
  br label %_start5963
_end5965:
  %_5979 = icmp eq i64 %_5955, 0
  br i1 %_5979, label %_then5983, label %_else5984
_then5983:
  %_5986 = sub i64 0, %_5988
  %_5988 = load i64, i64* %_quotient5941
  ret i64 %_5986
_else5984:
  %_5991 = sub i64 0, %_5993
  %_5993 = load i64, i64* %_quotient5941
  %_5990 = sub i64 %_5991, 1
  ret i64 %_5990
_end5985:
  br label %_end5952
_else5951:
  br label %_end5952
_end5952:
  br label %_start6001
_start6001:
  %_5998 = load i64, i64* %_remainder5943
  %_6000 = load i64, i64* %_denominator5924
  %_5996 = icmp sge i64 %_5998, %_6000
  br i1 %_5996, label %_body6002, label %_end6003
_body6002:
  %_6008 = load i64, i64* %_quotient5941
  %_6006 = add i64 %_6008, 1
  store i64 %_6006, i64* %_quotient5941
  %_6014 = load i64, i64* %_remainder5943
  %_6016 = load i64, i64* %_denominator5924
  %_6012 = sub i64 %_6014, %_6016
  store i64 %_6012, i64* %_remainder5943
  br label %_start6001
_end6003:
  %_6018 = load i64, i64* %_quotient5941
  ret i64 %_6018
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input5844 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input5844
  %_key5845 = alloca i64
  store i64 %key, i64* %_key5845
  %_min5846 = alloca i64
  store i64 %min, i64* %_min5846
  %_max5847 = alloca i64
  store i64 %max, i64* %_max5847
  %_midpt5858 = alloca i64
  %_5850 = load i64, i64* %_max5847
  %_5852 = load i64, i64* %_min5846
  %_5848 = icmp slt i64 %_5850, %_5852
  br i1 %_5848, label %_then5853, label %_else5854
_then5853:
  ret i1 0
_else5854:
  br label %_end5855
_end5855:
  store i64 %_retval5866, i64* %_midpt5858
  %_5860 = add i64 %_5862, %_5864
  %_5864 = load i64, i64* %_min5846
  %_5862 = load i64, i64* %_max5847
  %_retval5866 = call i64 @euclid_division(i64 %_5860, i64 2)
  %_5870 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input5844
  %_5872 = load i64, i64* %_midpt5858
  %_index_ptr5873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5870, i32 0, i32 1, i64 %_5872
  %_5877 = load i64, i64* %_index_ptr5873
  %_5876 = load i64, i64* %_key5845
  %_5867 = icmp sgt i64 %_5877, %_5876
  br i1 %_5867, label %_then5878, label %_else5879
_then5878:
  %_5883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input5844
  %_5885 = load i64, i64* %_key5845
  %_5887 = load i64, i64* %_min5846
  %_5888 = sub i64 %_5890, 1
  %_5890 = load i64, i64* %_midpt5858
  %_retval5892 = call i1 @binary_search({ i64, [0 x i64] }* %_5883, i64 %_5885, i64 %_5887, i64 %_5888)
  ret i1 %_retval5892
_else5879:
  br label %_end5880
_end5880:
  %_5897 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input5844
  %_5899 = load i64, i64* %_midpt5858
  %_index_ptr5900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5897, i32 0, i32 1, i64 %_5899
  %_5904 = load i64, i64* %_index_ptr5900
  %_5903 = load i64, i64* %_key5845
  %_5894 = icmp slt i64 %_5904, %_5903
  br i1 %_5894, label %_then5905, label %_else5906
_then5905:
  %_5910 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input5844
  %_5912 = load i64, i64* %_key5845
  %_5913 = add i64 %_5915, 1
  %_5915 = load i64, i64* %_midpt5858
  %_5918 = load i64, i64* %_max5847
  %_retval5919 = call i1 @binary_search({ i64, [0 x i64] }* %_5910, i64 %_5912, i64 %_5913, i64 %_5918)
  ret i1 %_retval5919
_else5906:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5771 = alloca i64
  store i64 %argc, i64* %_argc5771
  %_argv5772 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5772
  %_test_array5773 = alloca { i64, [0 x i64] }*
  %_i5778 = alloca i64
  %_even5806 = alloca i1
  %_odd5814 = alloca i1
  store { i64, [0 x i64] }* %_array5777, { i64, [0 x i64] }** %_test_array5773
  %_raw_array5776 = call i64* @oat_alloc_array(i64 100)
  %_array5777 = bitcast i64* %_raw_array5776 to { i64, [0 x i64] }*
  store i64 0, i64* %_i5778
  br label %_start5784
_start5784:
  %_5782 = load i64, i64* %_i5778
  %_5780 = icmp slt i64 %_5782, 100
  br i1 %_5780, label %_body5785, label %_end5786
_body5785:
  %_5789 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array5773
  %_5791 = load i64, i64* %_i5778
  %_index_ptr5792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_5789, i32 0, i32 1, i64 %_5791
  %_5798 = load i64, i64* %_i5778
  %_5795 = mul i64 2, %_5798
  %_5794 = add i64 %_5795, 1
  store i64 %_5794, i64* %_index_ptr5792
  %_5804 = load i64, i64* %_i5778
  %_5802 = add i64 %_5804, 1
  store i64 %_5802, i64* %_i5778
  br label %_start5784
_end5786:
  store i1 %_retval5813, i1* %_even5806
  %_5809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array5773
  %_retval5813 = call i1 @binary_search({ i64, [0 x i64] }* %_5809, i64 80, i64 0, i64 99)
  store i1 %_retval5821, i1* %_odd5814
  %_5817 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array5773
  %_retval5821 = call i1 @binary_search({ i64, [0 x i64] }* %_5817, i64 81, i64 0, i64 99)
  %_5823 = icmp eq i1 0, %_5824
  %_5826 = load i1, i1* %_even5806
  %_5828 = load i1, i1* %_odd5814
  %_5824 = and i1 %_5826, %_5828
  %_5831 = load i1, i1* %_even5806
  %_5833 = load i1, i1* %_odd5814
  %_5829 = or i1 %_5831, %_5833
  %_5822 = and i1 %_5823, %_5829
  br i1 %_5822, label %_then5834, label %_else5835
_then5834:
  %_5840 = getelementptr [9 x i8], [9 x i8]* @_str5839, i32 0, i32 0
  call void @print_string(i8* %_5840)
  br label %_end5836
_else5835:
  br label %_end5836
_end5836:
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
