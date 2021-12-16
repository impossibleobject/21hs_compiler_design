; generated from: oatprograms/conquest.oat
target triple = "x86_64-unknown-linux"
@meaning_of_life = global i64 42
@kesha_to_fling = global i1 1
@professor = global i8* bitcast ([11 x i8]* @_str6194 to i8*)
@_str6194 = global [11 x i8] c"Zdancewic!\00"
@global_arr = global { i64, [0 x i64] }* bitcast ({ i64, [7 x i64] }* @_global_arr6193 to { i64, [0 x i64] }*)
@_global_arr6193 = global { i64, [7 x i64] } { i64 7, [7 x i64] [ i64 1, i64 1, i64 2, i64 3, i64 5, i64 8, i64 13 ] }
@null_arr = global { i64, [0 x i64] }* null
@ideal_341_midterm_score = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_global_arr6192 to { i64, [0 x i64] }*)
@_global_arr6192 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 100 ] }
@actual_341_midterm_score = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_global_arr6191 to { i64, [0 x i64] }*)
@_global_arr6191 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_str_arr6161 = global [16 x i8] c"Meaning of Life\00"
@_str_arr5688 = global [20 x i8] c"My name is Jeff...
\00"
@_str_arr5739 = global [38 x i8] c"Charizard is the BEST Pokemon ever!!!\00"

define i64 @four() {
  %_what_rhymes_with_moore6187 = alloca i64
  %_meaning_of_life6168 = load i64, i64* @meaning_of_life
  %_global_arr6169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @global_arr
  %_tmp6171 = bitcast { i64, [0 x i64] }* %_global_arr6169 to i64*
  call void @oat_assert_array_length(i64* %_tmp6171, i64 5)
  %_index_ptr6172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_global_arr6169, i32 0, i32 1, i32 5
  %_index6173 = load i64, i64* %_index_ptr6172
  %_global_arr6174 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @global_arr
  %_tmp6176 = bitcast { i64, [0 x i64] }* %_global_arr6174 to i64*
  call void @oat_assert_array_length(i64* %_tmp6176, i64 4)
  %_index_ptr6177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_global_arr6174, i32 0, i32 1, i32 4
  %_index6178 = load i64, i64* %_index_ptr6177
  %_bop6179 = mul i64 %_index6173, %_index6178
  %_bop6180 = sub i64 %_meaning_of_life6168, %_bop6179
  %_global_arr6181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @global_arr
  %_tmp6183 = bitcast { i64, [0 x i64] }* %_global_arr6181 to i64*
  call void @oat_assert_array_length(i64* %_tmp6183, i64 2)
  %_index_ptr6184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_global_arr6181, i32 0, i32 1, i32 2
  %_index6185 = load i64, i64* %_index_ptr6184
  %_bop6186 = add i64 %_bop6180, %_index6185
  store i64 %_bop6186, i64* %_what_rhymes_with_moore6187
  %_what_rhymes_with_moore6189 = load i64, i64* %_what_rhymes_with_moore6187
  %_bop6190 = add i64 0, %_what_rhymes_with_moore6189
  ret i64 %_bop6190
}

define { i64, [0 x i64] }* @asian_brother_of_foo_named_fui(i8* %_s6154, i1 %_b6151, i64 %_i6148) {
  %_fui6158 = alloca { i64, [0 x i64] }*
  %_global_arr6157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @global_arr
  store { i64, [0 x i64] }* %_global_arr6157, { i64, [0 x i64] }** %_fui6158
  %_fui6160 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_fui6158
  ret { i64, [0 x i64] }* %_fui6160
}

define void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr5911, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5908, i64 %_row5905, i64 %_col5902, i64 %_i5899, i64 %_j5896) {
  %_arr5912 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_visited5909 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row5906 = alloca i64
  %_col5903 = alloca i64
  %_i5900 = alloca i64
  %_j5897 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arr5911, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5912
  store { i64, [0 x { i64, [0 x i64] }*] }* %_visited5908, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  store i64 %_row5905, i64* %_row5906
  store i64 %_col5902, i64* %_col5903
  store i64 %_i5899, i64* %_i5900
  store i64 %_j5896, i64* %_j5897
  %_i5914 = load i64, i64* %_i5900
  %_bop5915 = sub i64 %_i5914, 1
  %_bop5916 = icmp sge i64 %_bop5915, 0
  br i1 %_bop5916, label %_then5971, label %_else5970
_else5964:
  br label %_merge5963
_else5967:
  br label %_merge5966
_else5970:
  br label %_merge5969
_else6023:
  br label %_merge6022
_else6026:
  br label %_merge6025
_else6029:
  br label %_merge6028
_else6081:
  br label %_merge6080
_else6084:
  br label %_merge6083
_else6087:
  br label %_merge6086
_else6140:
  br label %_merge6139
_else6143:
  br label %_merge6142
_else6146:
  br label %_merge6145
_merge5963:
  br label %_merge5966
_merge5966:
  br label %_merge5969
_merge5969:
  %_i5972 = load i64, i64* %_i5900
  %_bop5973 = add i64 %_i5972, 1
  %_row5974 = load i64, i64* %_row5906
  %_bop5975 = icmp slt i64 %_bop5973, %_row5974
  br i1 %_bop5975, label %_then6030, label %_else6029
_merge6022:
  br label %_merge6025
_merge6025:
  br label %_merge6028
_merge6028:
  %_j6031 = load i64, i64* %_j5897
  %_bop6032 = sub i64 %_j6031, 1
  %_bop6033 = icmp sge i64 %_bop6032, 0
  br i1 %_bop6033, label %_then6088, label %_else6087
_merge6080:
  br label %_merge6083
_merge6083:
  br label %_merge6086
_merge6086:
  %_j6089 = load i64, i64* %_j5897
  %_bop6090 = add i64 %_j6089, 1
  %_col6091 = load i64, i64* %_col5903
  %_bop6092 = icmp slt i64 %_bop6090, %_col6091
  br i1 %_bop6092, label %_then6147, label %_else6146
_merge6139:
  br label %_merge6142
_merge6142:
  br label %_merge6145
_merge6145:
  ret void
_then5965:
  %_j5955 = load i64, i64* %_j5897
  %_i5956 = load i64, i64* %_i5900
  %_bop5957 = sub i64 %_i5956, 1
  %_col5958 = load i64, i64* %_col5903
  %_row5959 = load i64, i64* %_row5906
  %_visited5960 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_arr5961 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5912
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr5961, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5960, i64 %_row5959, i64 %_col5958, i64 %_bop5957, i64 %_j5955)
  br label %_merge5963
_then5968:
  %_visited5930 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_i5931 = load i64, i64* %_i5900
  %_bop5932 = sub i64 %_i5931, 1
  %_tmp5934 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5930 to i64*
  call void @oat_assert_array_length(i64* %_tmp5934, i64 %_bop5932)
  %_index_ptr5935 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5930, i32 0, i32 1, i64 %_bop5932
  %_index5936 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5935
  %_j5937 = load i64, i64* %_j5897
  %_tmp5939 = bitcast { i64, [0 x i64] }* %_index5936 to i64*
  call void @oat_assert_array_length(i64* %_tmp5939, i64 %_j5937)
  %_index_ptr5940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5936, i32 0, i32 1, i64 %_j5937
  store i64 1, i64* %_index_ptr5940
  %_arr5942 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5912
  %_i5943 = load i64, i64* %_i5900
  %_bop5944 = sub i64 %_i5943, 1
  %_tmp5946 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr5942 to i64*
  call void @oat_assert_array_length(i64* %_tmp5946, i64 %_bop5944)
  %_index_ptr5947 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr5942, i32 0, i32 1, i64 %_bop5944
  %_index5948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5947
  %_j5949 = load i64, i64* %_j5897
  %_tmp5951 = bitcast { i64, [0 x i64] }* %_index5948 to i64*
  call void @oat_assert_array_length(i64* %_tmp5951, i64 %_j5949)
  %_index_ptr5952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5948, i32 0, i32 1, i64 %_j5949
  %_index5953 = load i64, i64* %_index_ptr5952
  %_bop5954 = icmp eq i64 %_index5953, 1
  br i1 %_bop5954, label %_then5965, label %_else5964
_then5971:
  %_visited5917 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_i5918 = load i64, i64* %_i5900
  %_bop5919 = sub i64 %_i5918, 1
  %_tmp5921 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5917 to i64*
  call void @oat_assert_array_length(i64* %_tmp5921, i64 %_bop5919)
  %_index_ptr5922 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5917, i32 0, i32 1, i64 %_bop5919
  %_index5923 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5922
  %_j5924 = load i64, i64* %_j5897
  %_tmp5926 = bitcast { i64, [0 x i64] }* %_index5923 to i64*
  call void @oat_assert_array_length(i64* %_tmp5926, i64 %_j5924)
  %_index_ptr5927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5923, i32 0, i32 1, i64 %_j5924
  %_index5928 = load i64, i64* %_index_ptr5927
  %_bop5929 = icmp ne i64 %_index5928, 1
  br i1 %_bop5929, label %_then5968, label %_else5967
_then6024:
  %_j6014 = load i64, i64* %_j5897
  %_i6015 = load i64, i64* %_i5900
  %_bop6016 = add i64 %_i6015, 1
  %_col6017 = load i64, i64* %_col5903
  %_row6018 = load i64, i64* %_row5906
  %_visited6019 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_arr6020 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5912
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr6020, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6019, i64 %_row6018, i64 %_col6017, i64 %_bop6016, i64 %_j6014)
  br label %_merge6022
_then6027:
  %_visited5989 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_i5990 = load i64, i64* %_i5900
  %_bop5991 = add i64 %_i5990, 1
  %_tmp5993 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5989 to i64*
  call void @oat_assert_array_length(i64* %_tmp5993, i64 %_bop5991)
  %_index_ptr5994 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5989, i32 0, i32 1, i64 %_bop5991
  %_index5995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5994
  %_j5996 = load i64, i64* %_j5897
  %_tmp5998 = bitcast { i64, [0 x i64] }* %_index5995 to i64*
  call void @oat_assert_array_length(i64* %_tmp5998, i64 %_j5996)
  %_index_ptr5999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5995, i32 0, i32 1, i64 %_j5996
  store i64 1, i64* %_index_ptr5999
  %_arr6001 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5912
  %_i6002 = load i64, i64* %_i5900
  %_bop6003 = add i64 %_i6002, 1
  %_tmp6005 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr6001 to i64*
  call void @oat_assert_array_length(i64* %_tmp6005, i64 %_bop6003)
  %_index_ptr6006 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr6001, i32 0, i32 1, i64 %_bop6003
  %_index6007 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6006
  %_j6008 = load i64, i64* %_j5897
  %_tmp6010 = bitcast { i64, [0 x i64] }* %_index6007 to i64*
  call void @oat_assert_array_length(i64* %_tmp6010, i64 %_j6008)
  %_index_ptr6011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6007, i32 0, i32 1, i64 %_j6008
  %_index6012 = load i64, i64* %_index_ptr6011
  %_bop6013 = icmp eq i64 %_index6012, 1
  br i1 %_bop6013, label %_then6024, label %_else6023
_then6030:
  %_visited5976 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_i5977 = load i64, i64* %_i5900
  %_bop5978 = add i64 %_i5977, 1
  %_tmp5980 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5976 to i64*
  call void @oat_assert_array_length(i64* %_tmp5980, i64 %_bop5978)
  %_index_ptr5981 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5976, i32 0, i32 1, i64 %_bop5978
  %_index5982 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5981
  %_j5983 = load i64, i64* %_j5897
  %_tmp5985 = bitcast { i64, [0 x i64] }* %_index5982 to i64*
  call void @oat_assert_array_length(i64* %_tmp5985, i64 %_j5983)
  %_index_ptr5986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5982, i32 0, i32 1, i64 %_j5983
  %_index5987 = load i64, i64* %_index_ptr5986
  %_bop5988 = icmp ne i64 %_index5987, 1
  br i1 %_bop5988, label %_then6027, label %_else6026
_then6082:
  %_j6072 = load i64, i64* %_j5897
  %_bop6073 = sub i64 %_j6072, 1
  %_i6074 = load i64, i64* %_i5900
  %_col6075 = load i64, i64* %_col5903
  %_row6076 = load i64, i64* %_row5906
  %_visited6077 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_arr6078 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5912
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr6078, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6077, i64 %_row6076, i64 %_col6075, i64 %_i6074, i64 %_bop6073)
  br label %_merge6080
_then6085:
  %_visited6047 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_i6048 = load i64, i64* %_i5900
  %_tmp6050 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited6047 to i64*
  call void @oat_assert_array_length(i64* %_tmp6050, i64 %_i6048)
  %_index_ptr6051 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6047, i32 0, i32 1, i64 %_i6048
  %_index6052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6051
  %_j6053 = load i64, i64* %_j5897
  %_bop6054 = sub i64 %_j6053, 1
  %_tmp6056 = bitcast { i64, [0 x i64] }* %_index6052 to i64*
  call void @oat_assert_array_length(i64* %_tmp6056, i64 %_bop6054)
  %_index_ptr6057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6052, i32 0, i32 1, i64 %_bop6054
  store i64 1, i64* %_index_ptr6057
  %_arr6059 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5912
  %_i6060 = load i64, i64* %_i5900
  %_tmp6062 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr6059 to i64*
  call void @oat_assert_array_length(i64* %_tmp6062, i64 %_i6060)
  %_index_ptr6063 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr6059, i32 0, i32 1, i64 %_i6060
  %_index6064 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6063
  %_j6065 = load i64, i64* %_j5897
  %_bop6066 = sub i64 %_j6065, 1
  %_tmp6068 = bitcast { i64, [0 x i64] }* %_index6064 to i64*
  call void @oat_assert_array_length(i64* %_tmp6068, i64 %_bop6066)
  %_index_ptr6069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6064, i32 0, i32 1, i64 %_bop6066
  %_index6070 = load i64, i64* %_index_ptr6069
  %_bop6071 = icmp eq i64 %_index6070, 1
  br i1 %_bop6071, label %_then6082, label %_else6081
_then6088:
  %_visited6034 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_i6035 = load i64, i64* %_i5900
  %_tmp6037 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited6034 to i64*
  call void @oat_assert_array_length(i64* %_tmp6037, i64 %_i6035)
  %_index_ptr6038 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6034, i32 0, i32 1, i64 %_i6035
  %_index6039 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6038
  %_j6040 = load i64, i64* %_j5897
  %_bop6041 = sub i64 %_j6040, 1
  %_tmp6043 = bitcast { i64, [0 x i64] }* %_index6039 to i64*
  call void @oat_assert_array_length(i64* %_tmp6043, i64 %_bop6041)
  %_index_ptr6044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6039, i32 0, i32 1, i64 %_bop6041
  %_index6045 = load i64, i64* %_index_ptr6044
  %_bop6046 = icmp ne i64 %_index6045, 1
  br i1 %_bop6046, label %_then6085, label %_else6084
_then6141:
  %_j6131 = load i64, i64* %_j5897
  %_bop6132 = add i64 %_j6131, 1
  %_i6133 = load i64, i64* %_i5900
  %_col6134 = load i64, i64* %_col5903
  %_row6135 = load i64, i64* %_row5906
  %_visited6136 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_arr6137 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5912
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr6137, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6136, i64 %_row6135, i64 %_col6134, i64 %_i6133, i64 %_bop6132)
  br label %_merge6139
_then6144:
  %_visited6106 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_i6107 = load i64, i64* %_i5900
  %_tmp6109 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited6106 to i64*
  call void @oat_assert_array_length(i64* %_tmp6109, i64 %_i6107)
  %_index_ptr6110 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6106, i32 0, i32 1, i64 %_i6107
  %_index6111 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6110
  %_j6112 = load i64, i64* %_j5897
  %_bop6113 = add i64 %_j6112, 1
  %_tmp6115 = bitcast { i64, [0 x i64] }* %_index6111 to i64*
  call void @oat_assert_array_length(i64* %_tmp6115, i64 %_bop6113)
  %_index_ptr6116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6111, i32 0, i32 1, i64 %_bop6113
  store i64 1, i64* %_index_ptr6116
  %_arr6118 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5912
  %_i6119 = load i64, i64* %_i5900
  %_tmp6121 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr6118 to i64*
  call void @oat_assert_array_length(i64* %_tmp6121, i64 %_i6119)
  %_index_ptr6122 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr6118, i32 0, i32 1, i64 %_i6119
  %_index6123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6122
  %_j6124 = load i64, i64* %_j5897
  %_bop6125 = add i64 %_j6124, 1
  %_tmp6127 = bitcast { i64, [0 x i64] }* %_index6123 to i64*
  call void @oat_assert_array_length(i64* %_tmp6127, i64 %_bop6125)
  %_index_ptr6128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6123, i32 0, i32 1, i64 %_bop6125
  %_index6129 = load i64, i64* %_index_ptr6128
  %_bop6130 = icmp eq i64 %_index6129, 1
  br i1 %_bop6130, label %_then6141, label %_else6140
_then6147:
  %_visited6093 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5909
  %_i6094 = load i64, i64* %_i5900
  %_tmp6096 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited6093 to i64*
  call void @oat_assert_array_length(i64* %_tmp6096, i64 %_i6094)
  %_index_ptr6097 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited6093, i32 0, i32 1, i64 %_i6094
  %_index6098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr6097
  %_j6099 = load i64, i64* %_j5897
  %_bop6100 = add i64 %_j6099, 1
  %_tmp6102 = bitcast { i64, [0 x i64] }* %_index6098 to i64*
  call void @oat_assert_array_length(i64* %_tmp6102, i64 %_bop6100)
  %_index_ptr6103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index6098, i32 0, i32 1, i64 %_bop6100
  %_index6104 = load i64, i64* %_index_ptr6103
  %_bop6105 = icmp ne i64 %_index6104, 1
  br i1 %_bop6105, label %_then6144, label %_else6143
}

define i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_arr5767, i64 %_row5764, i64 %_col5761) {
  %_arr5768 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row5765 = alloca i64
  %_col5762 = alloca i64
  %_i5775 = alloca i64
  %_j5793 = alloca i64
  %_visited5818 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_counter5820 = alloca i64
  %_i5822 = alloca i64
  %_j5830 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_arr5767, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5768
  store i64 %_row5764, i64* %_row5765
  store i64 %_col5761, i64* %_col5762
  %_row5772 = load i64, i64* %_row5765
  %_raw_array5773 = call i64* @oat_alloc_array(i64 %_row5772)
  %_array5774 = bitcast i64* %_raw_array5773 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_5771 = alloca i64
  store i64 %_row5772, i64* %_bnd_5771
  %_ptr_5770 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5774, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5770
  store i64 0, i64* %_i5775
  br label %_cond5782
_body5781:
  %__ptr_57705783 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5770
  %_i5784 = load i64, i64* %_i5775
  %_tmp5786 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_57705783 to i64*
  call void @oat_assert_array_length(i64* %_tmp5786, i64 %_i5784)
  %_index_ptr5787 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_57705783, i32 0, i32 1, i64 %_i5784
  %_col5790 = load i64, i64* %_col5762
  %_raw_array5791 = call i64* @oat_alloc_array(i64 %_col5790)
  %_array5792 = bitcast i64* %_raw_array5791 to { i64, [0 x i64] }*
  %_bnd_5789 = alloca i64
  store i64 %_col5790, i64* %_bnd_5789
  %_ptr_5788 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5792, { i64, [0 x i64] }** %_ptr_5788
  store i64 0, i64* %_j5793
  br label %_cond5800
_body5799:
  %__ptr_57885801 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_5788
  %_j5802 = load i64, i64* %_j5793
  %_tmp5804 = bitcast { i64, [0 x i64] }* %__ptr_57885801 to i64*
  call void @oat_assert_array_length(i64* %_tmp5804, i64 %_j5802)
  %_index_ptr5805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_57885801, i32 0, i32 1, i64 %_j5802
  store i64 0, i64* %_index_ptr5805
  %_j5807 = load i64, i64* %_j5793
  %_bop5808 = add i64 %_j5807, 1
  store i64 %_bop5808, i64* %_j5793
  br label %_cond5800
_body5828:
  store i64 0, i64* %_j5830
  br label %_cond5837
_body5836:
  %_visited5838 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5818
  %_i5839 = load i64, i64* %_i5822
  %_tmp5841 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5838 to i64*
  call void @oat_assert_array_length(i64* %_tmp5841, i64 %_i5839)
  %_index_ptr5842 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5838, i32 0, i32 1, i64 %_i5839
  %_index5843 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5842
  %_j5844 = load i64, i64* %_j5830
  %_tmp5846 = bitcast { i64, [0 x i64] }* %_index5843 to i64*
  call void @oat_assert_array_length(i64* %_tmp5846, i64 %_j5844)
  %_index_ptr5847 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5843, i32 0, i32 1, i64 %_j5844
  %_index5848 = load i64, i64* %_index_ptr5847
  %_bop5849 = icmp eq i64 %_index5848, 0
  br i1 %_bop5849, label %_then5888, label %_else5887
_cond5782:
  %_i5777 = load i64, i64* %_i5775
  %__bnd_57715778 = load i64, i64* %_bnd_5771
  %_bop5779 = icmp slt i64 %_i5777, %__bnd_57715778
  br i1 %_bop5779, label %_body5781, label %_post5780
_cond5800:
  %_j5795 = load i64, i64* %_j5793
  %__bnd_57895796 = load i64, i64* %_bnd_5789
  %_bop5797 = icmp slt i64 %_j5795, %__bnd_57895796
  br i1 %_bop5797, label %_body5799, label %_post5798
_cond5829:
  %_i5824 = load i64, i64* %_i5822
  %_row5825 = load i64, i64* %_row5765
  %_bop5826 = icmp slt i64 %_i5824, %_row5825
  br i1 %_bop5826, label %_body5828, label %_post5827
_cond5837:
  %_j5832 = load i64, i64* %_j5830
  %_col5833 = load i64, i64* %_col5762
  %_bop5834 = icmp slt i64 %_j5832, %_col5833
  br i1 %_bop5834, label %_body5836, label %_post5835
_else5884:
  br label %_merge5883
_else5887:
  br label %_merge5886
_merge5883:
  br label %_merge5886
_merge5886:
  %_j5889 = load i64, i64* %_j5830
  %_bop5890 = add i64 %_j5889, 1
  store i64 %_bop5890, i64* %_j5830
  br label %_cond5837
_post5780:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5774, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5818
  store i64 0, i64* %_counter5820
  store i64 0, i64* %_i5822
  br label %_cond5829
_post5798:
  store { i64, [0 x i64] }* %_array5792, { i64, [0 x i64] }** %_index_ptr5787
  %_i5813 = load i64, i64* %_i5775
  %_bop5814 = add i64 %_i5813, 1
  store i64 %_bop5814, i64* %_i5775
  br label %_cond5782
_post5827:
  %_counter5895 = load i64, i64* %_counter5820
  ret i64 %_counter5895
_post5835:
  %_i5892 = load i64, i64* %_i5822
  %_bop5893 = add i64 %_i5892, 1
  store i64 %_bop5893, i64* %_i5822
  br label %_cond5829
_then5885:
  %_counter5873 = load i64, i64* %_counter5820
  %_bop5874 = add i64 %_counter5873, 1
  store i64 %_bop5874, i64* %_counter5820
  %_j5876 = load i64, i64* %_j5830
  %_i5877 = load i64, i64* %_i5822
  %_col5878 = load i64, i64* %_col5762
  %_row5879 = load i64, i64* %_row5765
  %_visited5880 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5818
  %_arr5881 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5768
  call void @dfs({ i64, [0 x { i64, [0 x i64] }*] }* %_arr5881, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5880, i64 %_row5879, i64 %_col5878, i64 %_i5877, i64 %_j5876)
  br label %_merge5883
_then5888:
  %_visited5850 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_visited5818
  %_i5851 = load i64, i64* %_i5822
  %_tmp5853 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_visited5850 to i64*
  call void @oat_assert_array_length(i64* %_tmp5853, i64 %_i5851)
  %_index_ptr5854 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_visited5850, i32 0, i32 1, i64 %_i5851
  %_index5855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5854
  %_j5856 = load i64, i64* %_j5830
  %_tmp5858 = bitcast { i64, [0 x i64] }* %_index5855 to i64*
  call void @oat_assert_array_length(i64* %_tmp5858, i64 %_j5856)
  %_index_ptr5859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5855, i32 0, i32 1, i64 %_j5856
  store i64 1, i64* %_index_ptr5859
  %_arr5861 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr5768
  %_i5862 = load i64, i64* %_i5822
  %_tmp5864 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %_arr5861 to i64*
  call void @oat_assert_array_length(i64* %_tmp5864, i64 %_i5862)
  %_index_ptr5865 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr5861, i32 0, i32 1, i64 %_i5862
  %_index5866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5865
  %_j5867 = load i64, i64* %_j5830
  %_tmp5869 = bitcast { i64, [0 x i64] }* %_index5866 to i64*
  call void @oat_assert_array_length(i64* %_tmp5869, i64 %_j5867)
  %_index_ptr5870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5866, i32 0, i32 1, i64 %_j5867
  %_index5871 = load i64, i64* %_index_ptr5870
  %_bop5872 = icmp eq i64 %_index5871, 1
  br i1 %_bop5872, label %_then5885, label %_else5884
}

define i64 @program(i64 %_argc5371, { i64, [0 x i8*] }* %_argv5368) {
  %_territory_a5424 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_territory_b5470 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_territory_c5504 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5511 = alloca i64
  %_j5528 = alloca i64
  %_none_conquered5558 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5564 = alloca i64
  %_j5581 = alloca i64
  %_all_conquered5609 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_island5617 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5623 = alloca i64
  %_j5640 = alloca i64
  %_emptyland5677 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_temp5682 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5693 = alloca i64
  %_b5697 = alloca i64
  %_c5701 = alloca i64
  %_none5705 = alloca i64
  %_all5709 = alloca i64
  %_i5713 = alloca i64
  %_e5717 = alloca i64
  %_sum5758 = alloca i64
  %_raw_array5374 = call i64* @oat_alloc_array(i64 4)
  %_array5375 = bitcast i64* %_raw_array5374 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5376 = call i64* @oat_alloc_array(i64 4)
  %_array5377 = bitcast i64* %_raw_array5376 to { i64, [0 x i64] }*
  %_ind5378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5377, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5378
  %_ind5380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5377, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5380
  %_ind5382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5377, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5382
  %_ind5384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5377, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind5384
  %_ind5386 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5375, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5377, { i64, [0 x i64] }** %_ind5386
  %_raw_array5388 = call i64* @oat_alloc_array(i64 4)
  %_array5389 = bitcast i64* %_raw_array5388 to { i64, [0 x i64] }*
  %_ind5390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5389, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5390
  %_ind5392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5389, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5392
  %_ind5394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5389, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind5394
  %_ind5396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5389, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind5396
  %_ind5398 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5375, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5389, { i64, [0 x i64] }** %_ind5398
  %_raw_array5400 = call i64* @oat_alloc_array(i64 4)
  %_array5401 = bitcast i64* %_raw_array5400 to { i64, [0 x i64] }*
  %_ind5402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5401, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5402
  %_ind5404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5401, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5404
  %_ind5406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5401, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5406
  %_ind5408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5401, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind5408
  %_ind5410 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5375, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5401, { i64, [0 x i64] }** %_ind5410
  %_raw_array5412 = call i64* @oat_alloc_array(i64 4)
  %_array5413 = bitcast i64* %_raw_array5412 to { i64, [0 x i64] }*
  %_ind5414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5413, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5414
  %_ind5416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5413, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5416
  %_ind5418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5413, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5418
  %_ind5420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5413, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind5420
  %_ind5422 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5375, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5413, { i64, [0 x i64] }** %_ind5422
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5375, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_a5424
  %_raw_array5426 = call i64* @oat_alloc_array(i64 3)
  %_array5427 = bitcast i64* %_raw_array5426 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5428 = call i64* @oat_alloc_array(i64 5)
  %_array5429 = bitcast i64* %_raw_array5428 to { i64, [0 x i64] }*
  %_ind5430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5429, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5430
  %_ind5432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5429, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5432
  %_ind5434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5429, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5434
  %_ind5436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5429, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind5436
  %_ind5438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5429, i32 0, i32 1, i32 4
  store i64 1, i64* %_ind5438
  %_ind5440 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5427, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5429, { i64, [0 x i64] }** %_ind5440
  %_raw_array5442 = call i64* @oat_alloc_array(i64 5)
  %_array5443 = bitcast i64* %_raw_array5442 to { i64, [0 x i64] }*
  %_ind5444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5444
  %_ind5446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5446
  %_ind5448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5448
  %_ind5450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind5450
  %_ind5452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 4
  store i64 1, i64* %_ind5452
  %_ind5454 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5427, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5443, { i64, [0 x i64] }** %_ind5454
  %_raw_array5456 = call i64* @oat_alloc_array(i64 5)
  %_array5457 = bitcast i64* %_raw_array5456 to { i64, [0 x i64] }*
  %_ind5458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5457, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5458
  %_ind5460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5457, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5460
  %_ind5462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5457, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5462
  %_ind5464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5457, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind5464
  %_ind5466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5457, i32 0, i32 1, i32 4
  store i64 1, i64* %_ind5466
  %_ind5468 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5427, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5457, { i64, [0 x i64] }** %_ind5468
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5427, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_b5470
  %_raw_array5472 = call i64* @oat_alloc_array(i64 3)
  %_array5473 = bitcast i64* %_raw_array5472 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5474 = call i64* @oat_alloc_array(i64 3)
  %_array5475 = bitcast i64* %_raw_array5474 to { i64, [0 x i64] }*
  %_ind5476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5475, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5476
  %_ind5478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5475, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5478
  %_ind5480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5475, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5480
  %_ind5482 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5473, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5475, { i64, [0 x i64] }** %_ind5482
  %_raw_array5484 = call i64* @oat_alloc_array(i64 3)
  %_array5485 = bitcast i64* %_raw_array5484 to { i64, [0 x i64] }*
  %_ind5486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5485, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5486
  %_ind5488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5485, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind5488
  %_ind5490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5485, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind5490
  %_ind5492 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5473, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5485, { i64, [0 x i64] }** %_ind5492
  %_raw_array5494 = call i64* @oat_alloc_array(i64 3)
  %_array5495 = bitcast i64* %_raw_array5494 to { i64, [0 x i64] }*
  %_ind5496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5495, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5496
  %_ind5498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5495, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind5498
  %_ind5500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5495, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5500
  %_ind5502 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5473, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5495, { i64, [0 x i64] }** %_ind5502
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5473, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_c5504
  %_result5508 = call i64 @four()
  %_raw_array5509 = call i64* @oat_alloc_array(i64 %_result5508)
  %_array5510 = bitcast i64* %_raw_array5509 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_5507 = alloca i64
  store i64 %_result5508, i64* %_bnd_5507
  %_ptr_5506 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5510, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5506
  store i64 0, i64* %_i5511
  br label %_cond5518
_body5517:
  %__ptr_55065519 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5506
  %_i5520 = load i64, i64* %_i5511
  %_tmp5522 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_55065519 to i64*
  call void @oat_assert_array_length(i64* %_tmp5522, i64 %_i5520)
  %_index_ptr5523 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_55065519, i32 0, i32 1, i64 %_i5520
  %_raw_array5526 = call i64* @oat_alloc_array(i64 2)
  %_array5527 = bitcast i64* %_raw_array5526 to { i64, [0 x i64] }*
  %_bnd_5525 = alloca i64
  store i64 2, i64* %_bnd_5525
  %_ptr_5524 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5527, { i64, [0 x i64] }** %_ptr_5524
  store i64 0, i64* %_j5528
  br label %_cond5535
_body5534:
  %__ptr_55245536 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_5524
  %_j5537 = load i64, i64* %_j5528
  %_tmp5539 = bitcast { i64, [0 x i64] }* %__ptr_55245536 to i64*
  call void @oat_assert_array_length(i64* %_tmp5539, i64 %_j5537)
  %_index_ptr5540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_55245536, i32 0, i32 1, i64 %_j5537
  %_actual_341_midterm_score5541 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @actual_341_midterm_score
  %_tmp5543 = bitcast { i64, [0 x i64] }* %_actual_341_midterm_score5541 to i64*
  call void @oat_assert_array_length(i64* %_tmp5543, i64 0)
  %_index_ptr5544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_actual_341_midterm_score5541, i32 0, i32 1, i32 0
  %_index5545 = load i64, i64* %_index_ptr5544
  store i64 %_index5545, i64* %_index_ptr5540
  %_j5547 = load i64, i64* %_j5528
  %_bop5548 = add i64 %_j5547, 1
  store i64 %_bop5548, i64* %_j5528
  br label %_cond5535
_body5570:
  %__ptr_55605572 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5560
  %_i5573 = load i64, i64* %_i5564
  %_tmp5575 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_55605572 to i64*
  call void @oat_assert_array_length(i64* %_tmp5575, i64 %_i5573)
  %_index_ptr5576 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_55605572, i32 0, i32 1, i64 %_i5573
  %_raw_array5579 = call i64* @oat_alloc_array(i64 6)
  %_array5580 = bitcast i64* %_raw_array5579 to { i64, [0 x i64] }*
  %_bnd_5578 = alloca i64
  store i64 6, i64* %_bnd_5578
  %_ptr_5577 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5580, { i64, [0 x i64] }** %_ptr_5577
  store i64 0, i64* %_j5581
  br label %_cond5588
_body5587:
  %__ptr_55775589 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_5577
  %_j5590 = load i64, i64* %_j5581
  %_tmp5592 = bitcast { i64, [0 x i64] }* %__ptr_55775589 to i64*
  call void @oat_assert_array_length(i64* %_tmp5592, i64 %_j5590)
  %_index_ptr5593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_55775589, i32 0, i32 1, i64 %_j5590
  %_i5594 = load i64, i64* %_i5564
  %_bop5595 = mul i64 %_i5594, 0
  %_bop5596 = add i64 %_bop5595, 1
  store i64 %_bop5596, i64* %_index_ptr5593
  %_j5598 = load i64, i64* %_j5581
  %_bop5599 = add i64 %_j5598, 1
  store i64 %_bop5599, i64* %_j5581
  br label %_cond5588
_body5629:
  %__ptr_56195631 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5619
  %_i5632 = load i64, i64* %_i5623
  %_tmp5634 = bitcast { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_56195631 to i64*
  call void @oat_assert_array_length(i64* %_tmp5634, i64 %_i5632)
  %_index_ptr5635 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %__ptr_56195631, i32 0, i32 1, i64 %_i5632
  %_raw_array5638 = call i64* @oat_alloc_array(i64 1)
  %_array5639 = bitcast i64* %_raw_array5638 to { i64, [0 x i64] }*
  %_bnd_5637 = alloca i64
  store i64 1, i64* %_bnd_5637
  %_ptr_5636 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5639, { i64, [0 x i64] }** %_ptr_5636
  store i64 0, i64* %_j5640
  br label %_cond5647
_body5646:
  %__ptr_56365648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_5636
  %_j5649 = load i64, i64* %_j5640
  %_tmp5651 = bitcast { i64, [0 x i64] }* %__ptr_56365648 to i64*
  call void @oat_assert_array_length(i64* %_tmp5651, i64 %_j5649)
  %_index_ptr5652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_56365648, i32 0, i32 1, i64 %_j5649
  %_ideal_341_midterm_score5653 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @ideal_341_midterm_score
  %_tmp5655 = bitcast { i64, [0 x i64] }* %_ideal_341_midterm_score5653 to i64*
  call void @oat_assert_array_length(i64* %_tmp5655, i64 0)
  %_index_ptr5656 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ideal_341_midterm_score5653, i32 0, i32 1, i32 0
  %_index5657 = load i64, i64* %_index_ptr5656
  %_kesha_to_fling5658 = load i1, i1* @kesha_to_fling
  %_professor5659 = load i8*, i8** @professor
  %_result5660 = call { i64, [0 x i64] }* @asian_brother_of_foo_named_fui(i8* %_professor5659, i1 %_kesha_to_fling5658, i64 %_index5657)
  %_tmp5662 = bitcast { i64, [0 x i64] }* %_result5660 to i64*
  call void @oat_assert_array_length(i64* %_tmp5662, i64 1)
  %_index_ptr5663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result5660, i32 0, i32 1, i32 1
  %_index5664 = load i64, i64* %_index_ptr5663
  store i64 %_index5664, i64* %_index_ptr5652
  %_j5666 = load i64, i64* %_j5640
  %_bop5667 = add i64 %_j5666, 1
  store i64 %_bop5667, i64* %_j5640
  br label %_cond5647
_cond5518:
  %_i5513 = load i64, i64* %_i5511
  %__bnd_55075514 = load i64, i64* %_bnd_5507
  %_bop5515 = icmp slt i64 %_i5513, %__bnd_55075514
  br i1 %_bop5515, label %_body5517, label %_post5516
_cond5535:
  %_j5530 = load i64, i64* %_j5528
  %__bnd_55255531 = load i64, i64* %_bnd_5525
  %_bop5532 = icmp slt i64 %_j5530, %__bnd_55255531
  br i1 %_bop5532, label %_body5534, label %_post5533
_cond5571:
  %_i5566 = load i64, i64* %_i5564
  %__bnd_55615567 = load i64, i64* %_bnd_5561
  %_bop5568 = icmp slt i64 %_i5566, %__bnd_55615567
  br i1 %_bop5568, label %_body5570, label %_post5569
_cond5588:
  %_j5583 = load i64, i64* %_j5581
  %__bnd_55785584 = load i64, i64* %_bnd_5578
  %_bop5585 = icmp slt i64 %_j5583, %__bnd_55785584
  br i1 %_bop5585, label %_body5587, label %_post5586
_cond5630:
  %_i5625 = load i64, i64* %_i5623
  %__bnd_56205626 = load i64, i64* %_bnd_5620
  %_bop5627 = icmp slt i64 %_i5625, %__bnd_56205626
  br i1 %_bop5627, label %_body5629, label %_post5628
_cond5647:
  %_j5642 = load i64, i64* %_j5640
  %__bnd_56375643 = load i64, i64* %_bnd_5637
  %_bop5644 = icmp slt i64 %_j5642, %__bnd_56375643
  br i1 %_bop5644, label %_body5646, label %_post5645
_else5743:
  br label %_merge5742
_merge5742:
  %_a5745 = load i64, i64* %_a5693
  %_b5746 = load i64, i64* %_b5697
  %_bop5747 = add i64 %_a5745, %_b5746
  %_c5748 = load i64, i64* %_c5701
  %_bop5749 = add i64 %_bop5747, %_c5748
  %_none5750 = load i64, i64* %_none5705
  %_bop5751 = add i64 %_bop5749, %_none5750
  %_all5752 = load i64, i64* %_all5709
  %_bop5753 = add i64 %_bop5751, %_all5752
  %_i5754 = load i64, i64* %_i5713
  %_bop5755 = add i64 %_bop5753, %_i5754
  %_e5756 = load i64, i64* %_e5717
  %_bop5757 = add i64 %_bop5755, %_e5756
  store i64 %_bop5757, i64* %_sum5758
  %_sum5760 = load i64, i64* %_sum5758
  ret i64 %_sum5760
_post5516:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5510, { i64, [0 x { i64, [0 x i64] }*] }** %_none_conquered5558
  %_raw_array5562 = call i64* @oat_alloc_array(i64 6)
  %_array5563 = bitcast i64* %_raw_array5562 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_5561 = alloca i64
  store i64 6, i64* %_bnd_5561
  %_ptr_5560 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5563, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5560
  store i64 0, i64* %_i5564
  br label %_cond5571
_post5533:
  store { i64, [0 x i64] }* %_array5527, { i64, [0 x i64] }** %_index_ptr5523
  %_i5553 = load i64, i64* %_i5511
  %_bop5554 = add i64 %_i5553, 1
  store i64 %_bop5554, i64* %_i5511
  br label %_cond5518
_post5569:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5563, { i64, [0 x { i64, [0 x i64] }*] }** %_all_conquered5609
  %_raw_array5611 = call i64* @oat_alloc_array(i64 1)
  %_array5612 = bitcast i64* %_raw_array5611 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5613 = call i64* @oat_alloc_array(i64 0)
  %_array5614 = bitcast i64* %_raw_array5613 to { i64, [0 x i64] }*
  %_ind5615 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5612, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5614, { i64, [0 x i64] }** %_ind5615
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5612, { i64, [0 x { i64, [0 x i64] }*] }** %_island5617
  %_raw_array5621 = call i64* @oat_alloc_array(i64 1)
  %_array5622 = bitcast i64* %_raw_array5621 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_bnd_5620 = alloca i64
  store i64 1, i64* %_bnd_5620
  %_ptr_5619 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5622, { i64, [0 x { i64, [0 x i64] }*] }** %_ptr_5619
  store i64 0, i64* %_i5623
  br label %_cond5630
_post5586:
  store { i64, [0 x i64] }* %_array5580, { i64, [0 x i64] }** %_index_ptr5576
  %_i5604 = load i64, i64* %_i5564
  %_bop5605 = add i64 %_i5604, 1
  store i64 %_bop5605, i64* %_i5564
  br label %_cond5571
_post5628:
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5622, { i64, [0 x { i64, [0 x i64] }*] }** %_emptyland5677
  %_all_conquered5679 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_all_conquered5609
  store { i64, [0 x { i64, [0 x i64] }*] }* %_all_conquered5679, { i64, [0 x { i64, [0 x i64] }*] }** %_all_conquered5609
  %_island5681 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_island5617
  store { i64, [0 x { i64, [0 x i64] }*] }* %_island5681, { i64, [0 x { i64, [0 x i64] }*] }** %_temp5682
  %_emptyland5684 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_emptyland5677
  store { i64, [0 x { i64, [0 x i64] }*] }* %_emptyland5684, { i64, [0 x { i64, [0 x i64] }*] }** %_island5617
  %_temp5686 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_temp5682
  store { i64, [0 x { i64, [0 x i64] }*] }* %_temp5686, { i64, [0 x { i64, [0 x i64] }*] }** %_emptyland5677
  %_str5689 = getelementptr [20 x i8], [20 x i8]* @_str_arr5688, i32 0, i32 0
  call void @print_string(i8* %_str5689)
  %_territory_a5691 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_a5424
  %_result5692 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_territory_a5691, i64 4, i64 4)
  store i64 %_result5692, i64* %_a5693
  %_territory_b5695 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_b5470
  %_result5696 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_territory_b5695, i64 3, i64 5)
  store i64 %_result5696, i64* %_b5697
  %_territory_c5699 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_territory_c5504
  %_result5700 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_territory_c5699, i64 3, i64 3)
  store i64 %_result5700, i64* %_c5701
  %_none_conquered5703 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_none_conquered5558
  %_result5704 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_none_conquered5703, i64 4, i64 2)
  store i64 %_result5704, i64* %_none5705
  %_all_conquered5707 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_all_conquered5609
  %_result5708 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_all_conquered5707, i64 6, i64 6)
  store i64 %_result5708, i64* %_all5709
  %_island5711 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_island5617
  %_result5712 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_island5711, i64 1, i64 1)
  store i64 %_result5712, i64* %_i5713
  %_emptyland5715 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_emptyland5677
  %_result5716 = call i64 @connected({ i64, [0 x { i64, [0 x i64] }*] }* %_emptyland5715, i64 0, i64 0)
  store i64 %_result5716, i64* %_e5717
  %_a5719 = load i64, i64* %_a5693
  %_bop5720 = icmp eq i64 %_a5719, 3
  %_b5721 = load i64, i64* %_b5697
  %_bop5722 = icmp eq i64 %_b5721, 1
  %_bop5723 = and i1 %_bop5720, %_bop5722
  %_c5724 = load i64, i64* %_c5701
  %_bop5725 = icmp eq i64 %_c5724, 5
  %_bop5726 = and i1 %_bop5723, %_bop5725
  %_none5727 = load i64, i64* %_none5705
  %_bop5728 = icmp eq i64 %_none5727, 0
  %_bop5729 = and i1 %_bop5726, %_bop5728
  %_all5730 = load i64, i64* %_all5709
  %_bop5731 = icmp eq i64 %_all5730, 1
  %_bop5732 = and i1 %_bop5729, %_bop5731
  %_i5733 = load i64, i64* %_i5713
  %_bop5734 = icmp eq i64 %_i5733, 1
  %_bop5735 = and i1 %_bop5732, %_bop5734
  %_e5736 = load i64, i64* %_e5717
  %_bop5737 = icmp eq i64 %_e5736, 0
  %_bop5738 = and i1 %_bop5735, %_bop5737
  br i1 %_bop5738, label %_then5744, label %_else5743
_post5645:
  store { i64, [0 x i64] }* %_array5639, { i64, [0 x i64] }** %_index_ptr5635
  %_i5672 = load i64, i64* %_i5623
  %_bop5673 = add i64 %_i5672, 1
  store i64 %_bop5673, i64* %_i5623
  br label %_cond5630
_then5744:
  %_str5740 = getelementptr [38 x i8], [38 x i8]* @_str_arr5739, i32 0, i32 0
  call void @print_string(i8* %_str5740)
  br label %_merge5742
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
