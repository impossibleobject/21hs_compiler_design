; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7411 to { i64, [0 x i64] }*)
@_global_arr7411 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7410 to { i64, [0 x i64] }*)
@_global_arr7410 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x7418, { i64, [0 x i64] }* %_y7415, i1 %_b7412) {
  %_x7419 = alloca { i64, [0 x i64] }*
  %_y7416 = alloca { i64, [0 x i64] }*
  %_b7413 = alloca i1
  store { i64, [0 x i64] }* %_x7418, { i64, [0 x i64] }** %_x7419
  store { i64, [0 x i64] }* %_y7415, { i64, [0 x i64] }** %_y7416
  store i1 %_b7412, i1* %_b7413
  %_b7421 = load i1, i1* %_b7413
  br i1 %_b7421, label %_then7426, label %_else7425
_else7425:
  %_y7423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y7416
  ret { i64, [0 x i64] }* %_y7423
_merge7424:
  ret { i64, [0 x i64] }* null
_then7426:
  %_x7422 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7419
  ret { i64, [0 x i64] }* %_x7422
}

define i64 @program(i64 %_argc7382, { i64, [0 x i8*] }* %_argv7379) {
  %_z7407 = alloca i64
  %_y7385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x7386 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_result7387 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x7386, { i64, [0 x i64] }* %_y7385, i1 1)
  %_tmp7389 = bitcast { i64, [0 x i64] }* %_result7387 to i64*
  call void @oat_assert_array_length(i64* %_tmp7389, i64 0)
  %_index_ptr7390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result7387, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr7390
  %_y7392 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x7393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_result7394 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x7393, { i64, [0 x i64] }* %_y7392, i1 1)
  %_tmp7396 = bitcast { i64, [0 x i64] }* %_result7394 to i64*
  call void @oat_assert_array_length(i64* %_tmp7396, i64 0)
  %_index_ptr7397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result7394, i32 0, i32 1, i32 0
  %_index7398 = load i64, i64* %_index_ptr7397
  %_x7399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y7400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_result7401 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y7400, { i64, [0 x i64] }* %_x7399, i1 0)
  %_tmp7403 = bitcast { i64, [0 x i64] }* %_result7401 to i64*
  call void @oat_assert_array_length(i64* %_tmp7403, i64 0)
  %_index_ptr7404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result7401, i32 0, i32 1, i32 0
  %_index7405 = load i64, i64* %_index_ptr7404
  %_bop7406 = add i64 %_index7398, %_index7405
  store i64 %_bop7406, i64* %_z7407
  %_z7409 = load i64, i64* %_z7407
  ret i64 %_z7409
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
