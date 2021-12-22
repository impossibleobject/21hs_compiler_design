; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %_a9230, i64 %_l9227, i64 %_r9224) {
  %_a9231 = alloca { i64, [0 x i64] }*
  %_l9228 = alloca i64
  %_r9225 = alloca i64
  %_j9233 = alloca i64
  store { i64, [0 x i64] }* %_a9230, { i64, [0 x i64] }** %_a9231
  store i64 %_l9227, i64* %_l9228
  store i64 %_r9224, i64* %_r9225
  store i64 0, i64* %_j9233
  %_l9235 = load i64, i64* %_l9228
  %_r9236 = load i64, i64* %_r9225
  %_bop9237 = icmp slt i64 %_l9235, %_r9236
  br i1 %_bop9237, label %_then9255, label %_else9254
_else9254:
  br label %_merge9253
_merge9253:
  ret void
_then9255:
  %_r9238 = load i64, i64* %_r9225
  %_l9239 = load i64, i64* %_l9228
  %_a9240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9231
  %_result9241 = call i64 @partition({ i64, [0 x i64] }* %_a9240, i64 %_l9239, i64 %_r9238)
  store i64 %_result9241, i64* %_j9233
  %_j9243 = load i64, i64* %_j9233
  %_bop9244 = sub i64 %_j9243, 1
  %_l9245 = load i64, i64* %_l9228
  %_a9246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9231
  call void @quick_sort({ i64, [0 x i64] }* %_a9246, i64 %_l9245, i64 %_bop9244)
  %_r9248 = load i64, i64* %_r9225
  %_j9249 = load i64, i64* %_j9233
  %_bop9250 = add i64 %_j9249, 1
  %_a9251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9231
  call void @quick_sort({ i64, [0 x i64] }* %_a9251, i64 %_bop9250, i64 %_r9248)
  br label %_merge9253
}

define i64 @partition({ i64, [0 x i64] }* %_a9094, i64 %_l9091, i64 %_r9088) {
  %_a9095 = alloca { i64, [0 x i64] }*
  %_l9092 = alloca i64
  %_r9089 = alloca i64
  %_pivot9103 = alloca i64
  %_i9106 = alloca i64
  %_j9110 = alloca i64
  %_t9112 = alloca i64
  %_done9114 = alloca i64
  store { i64, [0 x i64] }* %_a9094, { i64, [0 x i64] }** %_a9095
  store i64 %_l9091, i64* %_l9092
  store i64 %_r9088, i64* %_r9089
  %_a9097 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_l9098 = load i64, i64* %_l9092
  %_tmp9100 = bitcast { i64, [0 x i64] }* %_a9097 to i64*
  call void @oat_assert_array_length(i64* %_tmp9100, i64 %_l9098)
  %_index_ptr9101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9097, i32 0, i32 1, i64 %_l9098
  %_index9102 = load i64, i64* %_index_ptr9101
  store i64 %_index9102, i64* %_pivot9103
  %_l9105 = load i64, i64* %_l9092
  store i64 %_l9105, i64* %_i9106
  %_r9108 = load i64, i64* %_r9089
  %_bop9109 = add i64 %_r9108, 1
  store i64 %_bop9109, i64* %_j9110
  store i64 0, i64* %_t9112
  store i64 0, i64* %_done9114
  br label %_cond9120
_body9119:
  %_i9121 = load i64, i64* %_i9106
  %_bop9122 = add i64 %_i9121, 1
  store i64 %_bop9122, i64* %_i9106
  br label %_cond9138
_body9137:
  %_i9139 = load i64, i64* %_i9106
  %_bop9140 = add i64 %_i9139, 1
  store i64 %_bop9140, i64* %_i9106
  br label %_cond9138
_body9154:
  %_j9156 = load i64, i64* %_j9110
  %_bop9157 = sub i64 %_j9156, 1
  store i64 %_bop9157, i64* %_j9110
  br label %_cond9155
_cond9120:
  %_done9116 = load i64, i64* %_done9114
  %_bop9117 = icmp eq i64 %_done9116, 0
  br i1 %_bop9117, label %_body9119, label %_post9118
_cond9138:
  %_a9124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_i9125 = load i64, i64* %_i9106
  %_tmp9127 = bitcast { i64, [0 x i64] }* %_a9124 to i64*
  call void @oat_assert_array_length(i64* %_tmp9127, i64 %_i9125)
  %_index_ptr9128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9124, i32 0, i32 1, i64 %_i9125
  %_index9129 = load i64, i64* %_index_ptr9128
  %_pivot9130 = load i64, i64* %_pivot9103
  %_bop9131 = icmp sle i64 %_index9129, %_pivot9130
  %_i9132 = load i64, i64* %_i9106
  %_r9133 = load i64, i64* %_r9089
  %_bop9134 = icmp sle i64 %_i9132, %_r9133
  %_bop9135 = and i1 %_bop9131, %_bop9134
  br i1 %_bop9135, label %_body9137, label %_post9136
_cond9155:
  %_a9145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_j9146 = load i64, i64* %_j9110
  %_tmp9148 = bitcast { i64, [0 x i64] }* %_a9145 to i64*
  call void @oat_assert_array_length(i64* %_tmp9148, i64 %_j9146)
  %_index_ptr9149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9145, i32 0, i32 1, i64 %_j9146
  %_index9150 = load i64, i64* %_index_ptr9149
  %_pivot9151 = load i64, i64* %_pivot9103
  %_bop9152 = icmp sgt i64 %_index9150, %_pivot9151
  br i1 %_bop9152, label %_body9154, label %_post9153
_else9164:
  br label %_merge9163
_else9195:
  br label %_merge9194
_merge9163:
  %_done9166 = load i64, i64* %_done9114
  %_bop9167 = icmp eq i64 %_done9166, 0
  br i1 %_bop9167, label %_then9196, label %_else9195
_merge9194:
  br label %_cond9120
_post9118:
  %_a9197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_l9198 = load i64, i64* %_l9092
  %_tmp9200 = bitcast { i64, [0 x i64] }* %_a9197 to i64*
  call void @oat_assert_array_length(i64* %_tmp9200, i64 %_l9198)
  %_index_ptr9201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9197, i32 0, i32 1, i64 %_l9198
  %_index9202 = load i64, i64* %_index_ptr9201
  store i64 %_index9202, i64* %_t9112
  %_a9204 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_l9205 = load i64, i64* %_l9092
  %_tmp9207 = bitcast { i64, [0 x i64] }* %_a9204 to i64*
  call void @oat_assert_array_length(i64* %_tmp9207, i64 %_l9205)
  %_index_ptr9208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9204, i32 0, i32 1, i64 %_l9205
  %_a9209 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_j9210 = load i64, i64* %_j9110
  %_tmp9212 = bitcast { i64, [0 x i64] }* %_a9209 to i64*
  call void @oat_assert_array_length(i64* %_tmp9212, i64 %_j9210)
  %_index_ptr9213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9209, i32 0, i32 1, i64 %_j9210
  %_index9214 = load i64, i64* %_index_ptr9213
  store i64 %_index9214, i64* %_index_ptr9208
  %_a9216 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_j9217 = load i64, i64* %_j9110
  %_tmp9219 = bitcast { i64, [0 x i64] }* %_a9216 to i64*
  call void @oat_assert_array_length(i64* %_tmp9219, i64 %_j9217)
  %_index_ptr9220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9216, i32 0, i32 1, i64 %_j9217
  %_t9221 = load i64, i64* %_t9112
  store i64 %_t9221, i64* %_index_ptr9220
  %_j9223 = load i64, i64* %_j9110
  ret i64 %_j9223
_post9136:
  %_j9142 = load i64, i64* %_j9110
  %_bop9143 = sub i64 %_j9142, 1
  store i64 %_bop9143, i64* %_j9110
  br label %_cond9155
_post9153:
  %_i9159 = load i64, i64* %_i9106
  %_j9160 = load i64, i64* %_j9110
  %_bop9161 = icmp sge i64 %_i9159, %_j9160
  br i1 %_bop9161, label %_then9165, label %_else9164
_then9165:
  store i64 1, i64* %_done9114
  br label %_merge9163
_then9196:
  %_a9168 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_i9169 = load i64, i64* %_i9106
  %_tmp9171 = bitcast { i64, [0 x i64] }* %_a9168 to i64*
  call void @oat_assert_array_length(i64* %_tmp9171, i64 %_i9169)
  %_index_ptr9172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9168, i32 0, i32 1, i64 %_i9169
  %_index9173 = load i64, i64* %_index_ptr9172
  store i64 %_index9173, i64* %_t9112
  %_a9175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_i9176 = load i64, i64* %_i9106
  %_tmp9178 = bitcast { i64, [0 x i64] }* %_a9175 to i64*
  call void @oat_assert_array_length(i64* %_tmp9178, i64 %_i9176)
  %_index_ptr9179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9175, i32 0, i32 1, i64 %_i9176
  %_a9180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_j9181 = load i64, i64* %_j9110
  %_tmp9183 = bitcast { i64, [0 x i64] }* %_a9180 to i64*
  call void @oat_assert_array_length(i64* %_tmp9183, i64 %_j9181)
  %_index_ptr9184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9180, i32 0, i32 1, i64 %_j9181
  %_index9185 = load i64, i64* %_index_ptr9184
  store i64 %_index9185, i64* %_index_ptr9179
  %_a9187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9095
  %_j9188 = load i64, i64* %_j9110
  %_tmp9190 = bitcast { i64, [0 x i64] }* %_a9187 to i64*
  call void @oat_assert_array_length(i64* %_tmp9190, i64 %_j9188)
  %_index_ptr9191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a9187, i32 0, i32 1, i64 %_j9188
  %_t9192 = load i64, i64* %_t9112
  store i64 %_t9192, i64* %_index_ptr9191
  br label %_merge9194
}

define i64 @program(i64 %_argc9055, { i64, [0 x i8*] }* %_argv9052) {
  %_a9078 = alloca { i64, [0 x i64] }*
  %_raw_array9058 = call i64* @oat_alloc_array(i64 9)
  %_array9059 = bitcast i64* %_raw_array9058 to { i64, [0 x i64] }*
  %_ind9060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9059, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind9060
  %_ind9062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9059, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind9062
  %_ind9064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9059, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind9064
  %_ind9066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9059, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind9066
  %_ind9068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9059, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind9068
  %_ind9070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9059, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind9070
  %_ind9072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9059, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind9072
  %_ind9074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9059, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind9074
  %_ind9076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array9059, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind9076
  store { i64, [0 x i64] }* %_array9059, { i64, [0 x i64] }** %_a9078
  %_a9080 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9078
  %_result9081 = call i8* @string_of_array({ i64, [0 x i64] }* %_a9080)
  call void @print_string(i8* %_result9081)
  %_a9083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9078
  call void @quick_sort({ i64, [0 x i64] }* %_a9083, i64 0, i64 8)
  %_a9085 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a9078
  %_result9086 = call i8* @string_of_array({ i64, [0 x i64] }* %_a9085)
  call void @print_string(i8* %_result9086)
  ret i64 255
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
