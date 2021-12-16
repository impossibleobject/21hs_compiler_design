; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_global_arr5180 to { i64, [0 x i1] }*)
@_global_arr5180 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_str_arr5158 = global [2 x i8] c"T\00"
@_str_arr5160 = global [2 x i8] c"F\00"
@_str_arr5123 = global [2 x i8] c" \00"

define i1 @xor(i1 %_x5168, i1 %_y5165) {
  %_x5169 = alloca i1
  %_y5166 = alloca i1
  store i1 %_x5168, i1* %_x5169
  store i1 %_y5165, i1* %_y5166
  %_x5171 = load i1, i1* %_x5169
  %_y5172 = load i1, i1* %_y5166
  %_unop5173 = icmp eq i1 %_y5172, 0
  %_bop5174 = and i1 %_x5171, %_unop5173
  %_x5175 = load i1, i1* %_x5169
  %_unop5176 = icmp eq i1 %_x5175, 0
  %_y5177 = load i1, i1* %_y5166
  %_bop5178 = and i1 %_unop5176, %_y5177
  %_bop5179 = or i1 %_bop5174, %_bop5178
  ret i1 %_bop5179
}

define i8* @string_of_bool(i1 %_b5154) {
  %_b5155 = alloca i1
  store i1 %_b5154, i1* %_b5155
  %_b5157 = load i1, i1* %_b5155
  br i1 %_b5157, label %_then5164, label %_else5163
_else5163:
  %_str5161 = getelementptr [2 x i8], [2 x i8]* @_str_arr5160, i32 0, i32 0
  ret i8* %_str5161
_merge5162:
  ret i8* null
_then5164:
  %_str5159 = getelementptr [2 x i8], [2 x i8]* @_str_arr5158, i32 0, i32 0
  ret i8* %_str5159
}

define void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register5132, i64 %_len5129) {
  %_lfsr_register5133 = alloca { i64, [0 x i1] }*
  %_len5130 = alloca i64
  %_i5135 = alloca i64
  store { i64, [0 x i1] }* %_lfsr_register5132, { i64, [0 x i1] }** %_lfsr_register5133
  store i64 %_len5129, i64* %_len5130
  store i64 0, i64* %_i5135
  br label %_cond5142
_body5141:
  %_lfsr_register5143 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5133
  %_i5144 = load i64, i64* %_i5135
  %_tmp5146 = bitcast { i64, [0 x i1] }* %_lfsr_register5143 to i64*
  call void @oat_assert_array_length(i64* %_tmp5146, i64 %_i5144)
  %_index_ptr5147 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5143, i32 0, i32 1, i64 %_i5144
  %_index5148 = load i1, i1* %_index_ptr5147
  %_result5149 = call i8* @string_of_bool(i1 %_index5148)
  call void @print_string(i8* %_result5149)
  %_i5151 = load i64, i64* %_i5135
  %_bop5152 = add i64 %_i5151, 1
  store i64 %_bop5152, i64* %_i5135
  br label %_cond5142
_cond5142:
  %_i5137 = load i64, i64* %_i5135
  %_len5138 = load i64, i64* %_len5130
  %_bop5139 = icmp slt i64 %_i5137, %_len5138
  br i1 %_bop5139, label %_body5141, label %_post5140
_post5140:
  ret void
}

define i64 @program(i64 %_argc5009, { i64, [0 x i8*] }* %_argv5006) {
  %_i5017 = alloca i64
  %_lfsr_register5036 = alloca { i64, [0 x i1] }*
  %_i5038 = alloca i64
  %_i5061 = alloca i64
  %_new_first5084 = alloca i1
  %_j5088 = alloca i64
  %_lfsr_length5014 = load i64, i64* @lfsr_length
  %_raw_array5015 = call i64* @oat_alloc_array(i64 %_lfsr_length5014)
  %_array5016 = bitcast i64* %_raw_array5015 to { i64, [0 x i1] }*
  %_bnd_5013 = alloca i64
  store i64 %_lfsr_length5014, i64* %_bnd_5013
  %_ptr_5012 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array5016, { i64, [0 x i1] }** %_ptr_5012
  store i64 0, i64* %_i5017
  br label %_cond5024
_body5023:
  %__ptr_50125025 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_ptr_5012
  %_i5026 = load i64, i64* %_i5017
  %_tmp5028 = bitcast { i64, [0 x i1] }* %__ptr_50125025 to i64*
  call void @oat_assert_array_length(i64* %_tmp5028, i64 %_i5026)
  %_index_ptr5029 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %__ptr_50125025, i32 0, i32 1, i64 %_i5026
  store i1 0, i1* %_index_ptr5029
  %_i5031 = load i64, i64* %_i5017
  %_bop5032 = add i64 %_i5031, 1
  store i64 %_bop5032, i64* %_i5017
  br label %_cond5024
_body5044:
  %_lfsr_register5046 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5036
  %_i5047 = load i64, i64* %_i5038
  %_tmp5049 = bitcast { i64, [0 x i1] }* %_lfsr_register5046 to i64*
  call void @oat_assert_array_length(i64* %_tmp5049, i64 %_i5047)
  %_index_ptr5050 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5046, i32 0, i32 1, i64 %_i5047
  %_lfsr_init_values5051 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_i5052 = load i64, i64* %_i5038
  %_tmp5054 = bitcast { i64, [0 x i1] }* %_lfsr_init_values5051 to i64*
  call void @oat_assert_array_length(i64* %_tmp5054, i64 %_i5052)
  %_index_ptr5055 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_init_values5051, i32 0, i32 1, i64 %_i5052
  %_index5056 = load i1, i1* %_index_ptr5055
  store i1 %_index5056, i1* %_index_ptr5050
  %_i5058 = load i64, i64* %_i5038
  %_bop5059 = add i64 %_i5058, 1
  store i64 %_bop5059, i64* %_i5038
  br label %_cond5045
_body5067:
  %_lfsr_register5069 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5036
  %_lfsr_length5070 = load i64, i64* @lfsr_length
  %_bop5071 = sub i64 %_lfsr_length5070, 2
  %_tmp5073 = bitcast { i64, [0 x i1] }* %_lfsr_register5069 to i64*
  call void @oat_assert_array_length(i64* %_tmp5073, i64 %_bop5071)
  %_index_ptr5074 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5069, i32 0, i32 1, i64 %_bop5071
  %_index5075 = load i1, i1* %_index_ptr5074
  %_lfsr_register5076 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5036
  %_lfsr_length5077 = load i64, i64* @lfsr_length
  %_bop5078 = sub i64 %_lfsr_length5077, 1
  %_tmp5080 = bitcast { i64, [0 x i1] }* %_lfsr_register5076 to i64*
  call void @oat_assert_array_length(i64* %_tmp5080, i64 %_bop5078)
  %_index_ptr5081 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5076, i32 0, i32 1, i64 %_bop5078
  %_index5082 = load i1, i1* %_index_ptr5081
  %_result5083 = call i1 @xor(i1 %_index5082, i1 %_index5075)
  store i1 %_result5083, i1* %_new_first5084
  %_lfsr_length5086 = load i64, i64* @lfsr_length
  %_bop5087 = sub i64 %_lfsr_length5086, 1
  store i64 %_bop5087, i64* %_j5088
  br label %_cond5094
_body5093:
  %_lfsr_register5095 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5036
  %_j5096 = load i64, i64* %_j5088
  %_tmp5098 = bitcast { i64, [0 x i1] }* %_lfsr_register5095 to i64*
  call void @oat_assert_array_length(i64* %_tmp5098, i64 %_j5096)
  %_index_ptr5099 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5095, i32 0, i32 1, i64 %_j5096
  %_lfsr_register5100 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5036
  %_j5101 = load i64, i64* %_j5088
  %_bop5102 = sub i64 %_j5101, 1
  %_tmp5104 = bitcast { i64, [0 x i1] }* %_lfsr_register5100 to i64*
  call void @oat_assert_array_length(i64* %_tmp5104, i64 %_bop5102)
  %_index_ptr5105 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5100, i32 0, i32 1, i64 %_bop5102
  %_index5106 = load i1, i1* %_index_ptr5105
  store i1 %_index5106, i1* %_index_ptr5099
  %_j5108 = load i64, i64* %_j5088
  %_bop5109 = sub i64 %_j5108, 1
  store i64 %_bop5109, i64* %_j5088
  br label %_cond5094
_cond5024:
  %_i5019 = load i64, i64* %_i5017
  %__bnd_50135020 = load i64, i64* %_bnd_5013
  %_bop5021 = icmp slt i64 %_i5019, %__bnd_50135020
  br i1 %_bop5021, label %_body5023, label %_post5022
_cond5045:
  %_i5040 = load i64, i64* %_i5038
  %_lfsr_length5041 = load i64, i64* @lfsr_length
  %_bop5042 = icmp slt i64 %_i5040, %_lfsr_length5041
  br i1 %_bop5042, label %_body5044, label %_post5043
_cond5068:
  %_i5063 = load i64, i64* %_i5061
  %_lfsr_iterations5064 = load i64, i64* @lfsr_iterations
  %_bop5065 = icmp slt i64 %_i5063, %_lfsr_iterations5064
  br i1 %_bop5065, label %_body5067, label %_post5066
_cond5094:
  %_j5090 = load i64, i64* %_j5088
  %_bop5091 = icmp sgt i64 %_j5090, 0
  br i1 %_bop5091, label %_body5093, label %_post5092
_post5022:
  store { i64, [0 x i1] }* %_array5016, { i64, [0 x i1] }** %_lfsr_register5036
  store i64 0, i64* %_i5038
  br label %_cond5045
_post5043:
  store i64 0, i64* %_i5061
  br label %_cond5068
_post5066:
  %_lfsr_length5120 = load i64, i64* @lfsr_length
  %_lfsr_init_values5121 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_init_values5121, i64 %_lfsr_length5120)
  %_str5124 = getelementptr [2 x i8], [2 x i8]* @_str_arr5123, i32 0, i32 0
  call void @print_string(i8* %_str5124)
  %_lfsr_length5126 = load i64, i64* @lfsr_length
  %_lfsr_register5127 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5036
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register5127, i64 %_lfsr_length5126)
  ret i64 0
_post5092:
  %_lfsr_register5111 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5036
  %_tmp5113 = bitcast { i64, [0 x i1] }* %_lfsr_register5111 to i64*
  call void @oat_assert_array_length(i64* %_tmp5113, i64 0)
  %_index_ptr5114 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register5111, i32 0, i32 1, i32 0
  %_new_first5115 = load i1, i1* %_new_first5084
  store i1 %_new_first5115, i1* %_index_ptr5114
  %_i5117 = load i64, i64* %_i5061
  %_bop5118 = add i64 %_i5117, 1
  store i64 %_bop5118, i64* %_i5061
  br label %_cond5068
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
