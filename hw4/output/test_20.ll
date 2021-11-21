; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x353 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x353
  %_y354 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y354
  %_b355 = alloca i1
  store i1 %b, i1* %_b355
  %_id356 = load i1, i1* %_b355
  br i1 %_id356, label %_then357, label %_else358
_then357:
  %_id360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x353
  ret { i64, [0 x i64] }* %_id360
_else358:
  %_id362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y354
  ret { i64, [0 x i64] }* %_id362
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc338 = alloca i64
  store i64 %argc, i64* %_argc338
  %_argv339 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv339
  %_x340 = alloca { i64, [0 x i64] }*
  %_y343 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array342, { i64, [0 x i64] }** %_x340
  %_raw_array341 = call i64* @oat_alloc_array(i64 3)
  %_array342 = bitcast i64* %_raw_array341 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array345, { i64, [0 x i64] }** %_y343
  %_raw_array344 = call i64* @oat_alloc_array(i64 3)
  %_array345 = bitcast i64* %_raw_array344 to { i64, [0 x i64] }*
  %_id346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x340
  %_id347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y343
  %_Call_retval348 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id346, { i64, [0 x i64] }* %_id347, i1 1)
  %_index_ptr349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval348, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr349
  %_id350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x340
  %_index_ptr351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id350, i32 0, i32 1, i32 0
  %_352 = load i64, i64* %_index_ptr351
  ret i64 %_352
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
