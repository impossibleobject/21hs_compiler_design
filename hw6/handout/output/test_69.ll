; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr5367 to { i64, [0 x i64] }*)
@_global_arr5367 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr5366 to { i64, [0 x i64] }*)
@_global_arr5366 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %_ar15332, { i64, [0 x i64] }* %_ar25329, i64 %_len5326) {
  %_ar15333 = alloca { i64, [0 x i64] }*
  %_ar25330 = alloca { i64, [0 x i64] }*
  %_len5327 = alloca i64
  %_val5335 = alloca i64
  %_i5337 = alloca i64
  store { i64, [0 x i64] }* %_ar15332, { i64, [0 x i64] }** %_ar15333
  store { i64, [0 x i64] }* %_ar25329, { i64, [0 x i64] }** %_ar25330
  store i64 %_len5326, i64* %_len5327
  store i64 0, i64* %_val5335
  store i64 0, i64* %_i5337
  br label %_cond5344
_body5343:
  %_ar15345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar15333
  %_i5346 = load i64, i64* %_i5337
  %_tmp5348 = bitcast { i64, [0 x i64] }* %_ar15345 to i64*
  call void @oat_assert_array_length(i64* %_tmp5348, i64 %_i5346)
  %_index_ptr5349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar15345, i32 0, i32 1, i64 %_i5346
  %_index5350 = load i64, i64* %_index_ptr5349
  %_ar25351 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar25330
  %_i5352 = load i64, i64* %_i5337
  %_tmp5354 = bitcast { i64, [0 x i64] }* %_ar25351 to i64*
  call void @oat_assert_array_length(i64* %_tmp5354, i64 %_i5352)
  %_index_ptr5355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar25351, i32 0, i32 1, i64 %_i5352
  %_index5356 = load i64, i64* %_index_ptr5355
  %_bop5357 = icmp ne i64 %_index5350, %_index5356
  br i1 %_bop5357, label %_then5361, label %_else5360
_cond5344:
  %_i5339 = load i64, i64* %_i5337
  %_len5340 = load i64, i64* %_len5327
  %_bop5341 = icmp slt i64 %_i5339, %_len5340
  br i1 %_bop5341, label %_body5343, label %_post5342
_else5360:
  br label %_merge5359
_merge5359:
  %_i5362 = load i64, i64* %_i5337
  %_bop5363 = add i64 %_i5362, 1
  store i64 %_bop5363, i64* %_i5337
  br label %_cond5344
_post5342:
  %_val5365 = load i64, i64* %_val5335
  ret i64 %_val5365
_then5361:
  store i64 1, i64* %_val5335
  br label %_merge5359
}

define i64 @program(i64 %_argc5312, { i64, [0 x i8*] }* %_argv5309) {
  %_val5315 = alloca i64
  store i64 1, i64* %_val5315
  %_arr25317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_arr15318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_result5319 = call i64 @arrcheck({ i64, [0 x i64] }* %_arr15318, { i64, [0 x i64] }* %_arr25317, i64 4)
  %_bop5320 = icmp eq i64 %_result5319, 1
  br i1 %_bop5320, label %_then5324, label %_else5323
_else5323:
  br label %_merge5322
_merge5322:
  %_val5325 = load i64, i64* %_val5315
  ret i64 %_val5325
_then5324:
  store i64 0, i64* %_val5315
  br label %_merge5322
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
