; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %_a5232, i64 %_len5229) {
  %_a5233 = alloca { i64, [0 x i64] }*
  %_len5230 = alloca i64
  %_i5235 = alloca i64
  %_j5237 = alloca i64
  %_tmp5271 = alloca i64
  store { i64, [0 x i64] }* %_a5232, { i64, [0 x i64] }** %_a5233
  store i64 %_len5229, i64* %_len5230
  store i64 1, i64* %_i5235
  store i64 2, i64* %_j5237
  br label %_cond5244
_body5243:
  %_a5245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5233
  %_i5246 = load i64, i64* %_i5235
  %_bop5247 = sub i64 %_i5246, 1
  %_tmp5249 = bitcast { i64, [0 x i64] }* %_a5245 to i64*
  call void @oat_assert_array_length(i64* %_tmp5249, i64 %_bop5247)
  %_index_ptr5250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5245, i32 0, i32 1, i64 %_bop5247
  %_index5251 = load i64, i64* %_index_ptr5250
  %_a5252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5233
  %_i5253 = load i64, i64* %_i5235
  %_tmp5255 = bitcast { i64, [0 x i64] }* %_a5252 to i64*
  call void @oat_assert_array_length(i64* %_tmp5255, i64 %_i5253)
  %_index_ptr5256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5252, i32 0, i32 1, i64 %_i5253
  %_index5257 = load i64, i64* %_index_ptr5256
  %_bop5258 = icmp sle i64 %_index5251, %_index5257
  br i1 %_bop5258, label %_then5308, label %_else5307
_cond5244:
  %_i5239 = load i64, i64* %_i5235
  %_len5240 = load i64, i64* %_len5230
  %_bop5241 = icmp slt i64 %_i5239, %_len5240
  br i1 %_bop5241, label %_body5243, label %_post5242
_else5304:
  br label %_merge5303
_else5307:
  %_a5264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5233
  %_i5265 = load i64, i64* %_i5235
  %_bop5266 = sub i64 %_i5265, 1
  %_tmp5268 = bitcast { i64, [0 x i64] }* %_a5264 to i64*
  call void @oat_assert_array_length(i64* %_tmp5268, i64 %_bop5266)
  %_index_ptr5269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5264, i32 0, i32 1, i64 %_bop5266
  %_index5270 = load i64, i64* %_index_ptr5269
  store i64 %_index5270, i64* %_tmp5271
  %_a5273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5233
  %_i5274 = load i64, i64* %_i5235
  %_bop5275 = sub i64 %_i5274, 1
  %_tmp5277 = bitcast { i64, [0 x i64] }* %_a5273 to i64*
  call void @oat_assert_array_length(i64* %_tmp5277, i64 %_bop5275)
  %_index_ptr5278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5273, i32 0, i32 1, i64 %_bop5275
  %_a5279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5233
  %_i5280 = load i64, i64* %_i5235
  %_tmp5282 = bitcast { i64, [0 x i64] }* %_a5279 to i64*
  call void @oat_assert_array_length(i64* %_tmp5282, i64 %_i5280)
  %_index_ptr5283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5279, i32 0, i32 1, i64 %_i5280
  %_index5284 = load i64, i64* %_index_ptr5283
  store i64 %_index5284, i64* %_index_ptr5278
  %_a5286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5233
  %_i5287 = load i64, i64* %_i5235
  %_tmp5289 = bitcast { i64, [0 x i64] }* %_a5286 to i64*
  call void @oat_assert_array_length(i64* %_tmp5289, i64 %_i5287)
  %_index_ptr5290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5286, i32 0, i32 1, i64 %_i5287
  %_tmp5291 = load i64, i64* %_tmp5271
  store i64 %_tmp5291, i64* %_index_ptr5290
  %_i5293 = load i64, i64* %_i5235
  %_bop5294 = sub i64 %_i5293, 1
  store i64 %_bop5294, i64* %_i5235
  %_i5296 = load i64, i64* %_i5235
  %_bop5297 = icmp eq i64 %_i5296, 0
  br i1 %_bop5297, label %_then5305, label %_else5304
_merge5303:
  br label %_merge5306
_merge5306:
  br label %_cond5244
_post5242:
  ret void
_then5305:
  %_j5298 = load i64, i64* %_j5237
  store i64 %_j5298, i64* %_i5235
  %_j5300 = load i64, i64* %_j5237
  %_bop5301 = add i64 %_j5300, 1
  store i64 %_bop5301, i64* %_j5237
  br label %_merge5303
_then5308:
  %_j5259 = load i64, i64* %_j5237
  store i64 %_j5259, i64* %_i5235
  %_j5261 = load i64, i64* %_j5237
  %_bop5262 = add i64 %_j5261, 1
  store i64 %_bop5262, i64* %_j5237
  br label %_merge5306
}

define i64 @program(i64 %_argc5184, { i64, [0 x i8*] }* %_argv5181) {
  %_arr5205 = alloca { i64, [0 x i64] }*
  %_len5207 = alloca i64
  %_i5212 = alloca i64
  %_raw_array5187 = call i64* @oat_alloc_array(i64 8)
  %_array5188 = bitcast i64* %_raw_array5187 to { i64, [0 x i64] }*
  %_ind5189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind5189
  %_ind5191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind5191
  %_ind5193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind5193
  %_ind5195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind5195
  %_ind5197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind5197
  %_ind5199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind5199
  %_ind5201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind5201
  %_ind5203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind5203
  store { i64, [0 x i64] }* %_array5188, { i64, [0 x i64] }** %_arr5205
  store i64 8, i64* %_len5207
  %_len5209 = load i64, i64* %_len5207
  %_arr5210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5205
  call void @gnomeSort({ i64, [0 x i64] }* %_arr5210, i64 %_len5209)
  store i64 0, i64* %_i5212
  br label %_cond5218
_body5217:
  %_arr5219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5205
  %_i5220 = load i64, i64* %_i5212
  %_tmp5222 = bitcast { i64, [0 x i64] }* %_arr5219 to i64*
  call void @oat_assert_array_length(i64* %_tmp5222, i64 %_i5220)
  %_index_ptr5223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5219, i32 0, i32 1, i64 %_i5220
  %_index5224 = load i64, i64* %_index_ptr5223
  call void @print_int(i64 %_index5224)
  %_i5226 = load i64, i64* %_i5212
  %_bop5227 = add i64 %_i5226, 1
  store i64 %_bop5227, i64* %_i5212
  br label %_cond5218
_cond5218:
  %_i5214 = load i64, i64* %_i5212
  %_bop5215 = icmp slt i64 %_i5214, 8
  br i1 %_bop5215, label %_body5217, label %_post5216
_post5216:
  ret i64 0
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
