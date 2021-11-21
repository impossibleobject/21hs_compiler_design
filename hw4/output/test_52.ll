; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str_tmp5869 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator5956 = alloca i64
  store i64 %numerator, i64* %_numerator5956
  %_denominator5957 = alloca i64
  store i64 %denominator, i64* %_denominator5957
  %_quotient5977 = alloca i64
  %_remainder5979 = alloca i64
  %_id5961 = load i64, i64* %_denominator5957
  %_bop5959 = icmp slt i64 %_id5961, 0
  br i1 %_bop5959, label %_then5963, label %_else5964
_then5963:
  %_uop5967 = sub i64 0, %_Call_retval5975
  %_id5970 = load i64, i64* %_numerator5956
  %_id5974 = load i64, i64* %_denominator5957
  %_uop5972 = sub i64 0, %_id5974
  %_Call_retval5975 = call i64 @euclid_division(i64 %_id5970, i64 %_uop5972)
  ret i64 %_uop5967
_else5964:
  br label %_end5965
_end5965:
  store i64 0, i64* %_quotient5977
  store i64 %_id5981, i64* %_remainder5979
  %_id5981 = load i64, i64* %_numerator5956
  %_id5985 = load i64, i64* %_numerator5956
  %_bop5983 = icmp slt i64 %_id5985, 0
  br i1 %_bop5983, label %_then5987, label %_else5988
_then5987:
  %_uop5993 = sub i64 0, %_id5995
  %_id5995 = load i64, i64* %_numerator5956
  store i64 %_uop5993, i64* %_remainder5979
  br label %_start6002
_start6002:
  %_id6001 = load i64, i64* %_denominator5957
  %_bop5997 = icmp sge i64 %_uop5993, %_id6001
  br i1 %_bop5997, label %_body6003, label %_end6004
_body6003:
  %_id6010 = load i64, i64* %_quotient5977
  %_bop6008 = add i64 %_id6010, 1
  store i64 %_bop6008, i64* %_quotient5977
  %_id6019 = load i64, i64* %_denominator5957
  %_bop6015 = sub i64 %_uop5993, %_id6019
  store i64 %_bop6015, i64* @remainder
  br label %_start6002
_end6004:
  %_bop6021 = icmp eq i64 %_uop5993, 0
  br i1 %_bop6021, label %_then6025, label %_else6026
_then6025:
  %_uop6029 = sub i64 0, %_id6031
  %_id6031 = load i64, i64* %_quotient5977
  ret i64 %_uop6029
_else6026:
  %_uop6036 = sub i64 0, %_id6038
  %_id6038 = load i64, i64* %_quotient5977
  %_bop6034 = sub i64 %_uop6036, 1
  ret i64 %_bop6034
_end6027:
  br label %_end5989
_else5988:
  br label %_end5989
_end5989:
  br label %_start6047
_start6047:
  %_id6044 = load i64, i64* %_remainder5979
  %_id6046 = load i64, i64* %_denominator5957
  %_bop6042 = icmp sge i64 %_id6044, %_id6046
  br i1 %_bop6042, label %_body6048, label %_end6049
_body6048:
  %_id6055 = load i64, i64* %_quotient5977
  %_bop6053 = add i64 %_id6055, 1
  store i64 %_bop6053, i64* %_quotient5977
  %_id6062 = load i64, i64* %_remainder5979
  %_id6064 = load i64, i64* %_denominator5957
  %_bop6060 = sub i64 %_id6062, %_id6064
  store i64 %_bop6060, i64* %_remainder5979
  br label %_start6047
_end6049:
  %_id6066 = load i64, i64* %_quotient5977
  ret i64 %_id6066
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input5873 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input5873
  %_key5874 = alloca i64
  store i64 %key, i64* %_key5874
  %_min5875 = alloca i64
  store i64 %min, i64* %_min5875
  %_max5876 = alloca i64
  store i64 %max, i64* %_max5876
  %_midpt5888 = alloca i64
  %_id5880 = load i64, i64* %_max5876
  %_id5882 = load i64, i64* %_min5875
  %_bop5878 = icmp slt i64 %_id5880, %_id5882
  br i1 %_bop5878, label %_then5883, label %_else5884
_then5883:
  ret i1 0
_else5884:
  br label %_end5885
_end5885:
  store i64 %_Call_retval5897, i64* %_midpt5888
  %_bop5891 = add i64 %_id5893, %_id5895
  %_id5895 = load i64, i64* %_min5875
  %_id5893 = load i64, i64* %_max5876
  %_Call_retval5897 = call i64 @euclid_division(i64 %_bop5891, i64 2)
  %_id5902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input5873
  %_id5904 = load i64, i64* %_midpt5888
  %_index_ptr5905 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id5902, i32 0, i32 1, i64 %_id5904
  %_5908 = load i64, i64* %_index_ptr5905
  %_id5907 = load i64, i64* %_key5874
  %_bop5899 = icmp sgt i64 %_5908, %_id5907
  br i1 %_bop5899, label %_then5909, label %_else5910
_then5909:
  %_id5914 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input5873
  %_id5916 = load i64, i64* %_key5874
  %_id5918 = load i64, i64* %_min5875
  %_bop5920 = sub i64 %_id5922, 1
  %_id5922 = load i64, i64* %_midpt5888
  %_Call_retval5924 = call i1 @binary_search({ i64, [0 x i64] }* %_id5914, i64 %_id5916, i64 %_id5918, i64 %_bop5920)
  ret i1 %_Call_retval5924
_else5910:
  br label %_end5911
_end5911:
  %_id5930 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input5873
  %_id5932 = load i64, i64* %_midpt5888
  %_index_ptr5933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id5930, i32 0, i32 1, i64 %_id5932
  %_5936 = load i64, i64* %_index_ptr5933
  %_id5935 = load i64, i64* %_key5874
  %_bop5927 = icmp slt i64 %_5936, %_id5935
  br i1 %_bop5927, label %_then5937, label %_else5938
_then5937:
  %_id5942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input5873
  %_id5944 = load i64, i64* %_key5874
  %_bop5946 = add i64 %_id5948, 1
  %_id5948 = load i64, i64* %_midpt5888
  %_id5951 = load i64, i64* %_max5876
  %_Call_retval5952 = call i1 @binary_search({ i64, [0 x i64] }* %_id5942, i64 %_id5944, i64 %_bop5946, i64 %_id5951)
  ret i1 %_Call_retval5952
_else5938:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5793 = alloca i64
  store i64 %argc, i64* %_argc5793
  %_argv5794 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5794
  %_test_array5795 = alloca { i64, [0 x i64] }*
  %_i5800 = alloca i64
  %_even5831 = alloca i1
  %_odd5839 = alloca i1
  store { i64, [0 x i64] }* %_array5799, { i64, [0 x i64] }** %_test_array5795
  %_raw_array5798 = call i64* @oat_alloc_array(i64 100)
  %_array5799 = bitcast i64* %_raw_array5798 to { i64, [0 x i64] }*
  store i64 0, i64* %_i5800
  br label %_start5807
_start5807:
  %_id5805 = load i64, i64* %_i5800
  %_bop5803 = icmp slt i64 %_id5805, 100
  br i1 %_bop5803, label %_body5808, label %_end5809
_body5808:
  %_id5812 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array5795
  %_id5814 = load i64, i64* %_i5800
  %_index_ptr5815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id5812, i32 0, i32 1, i64 %_id5814
  %_id5822 = load i64, i64* %_i5800
  %_bop5819 = mul i64 2, %_id5822
  %_bop5817 = add i64 %_bop5819, 1
  store i64 %_bop5817, i64* %_index_ptr5815
  %_id5829 = load i64, i64* %_i5800
  %_bop5827 = add i64 %_id5829, 1
  store i64 %_bop5827, i64* %_i5800
  br label %_start5807
_end5809:
  store i1 %_Call_retval5838, i1* %_even5831
  %_id5834 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array5795
  %_Call_retval5838 = call i1 @binary_search({ i64, [0 x i64] }* %_id5834, i64 80, i64 0, i64 99)
  store i1 %_Call_retval5846, i1* %_odd5839
  %_id5842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array5795
  %_Call_retval5846 = call i1 @binary_search({ i64, [0 x i64] }* %_id5842, i64 81, i64 0, i64 99)
  %_uop5850 = icmp eq i1 0, %_bop5852
  %_id5854 = load i1, i1* %_even5831
  %_id5856 = load i1, i1* %_odd5839
  %_bop5852 = and i1 %_id5854, %_id5856
  %_id5860 = load i1, i1* %_even5831
  %_id5862 = load i1, i1* %_odd5839
  %_bop5858 = or i1 %_id5860, %_id5862
  %_bop5848 = and i1 %_uop5850, %_bop5858
  br i1 %_bop5848, label %_then5863, label %_else5864
_then5863:
  %_cstr5868 = getelementptr [9 x i8], [9 x i8]* @_str_tmp5869, i32 0, i32 0
  call void @print_string(i8* %_cstr5868)
  br label %_end5865
_else5864:
  br label %_end5865
_end5865:
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
