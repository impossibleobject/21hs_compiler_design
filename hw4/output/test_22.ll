; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x306 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x306
  %_y307 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y307
  %_b308 = alloca i1
  store i1 %b, i1* %_b308
  %_id309 = load i1, i1* %_b308
  br i1 %_id309, label %_then310, label %_else311
_then310:
  %_id313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x306
  ret { i64, [0 x i64] }* %_id313
_else311:
  %_id314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y307
  ret { i64, [0 x i64] }* %_id314
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x293 = alloca { i64, [0 x i64] }*
  %_y296 = alloca { i64, [0 x i64] }*
  %_argc291 = alloca i64
  store i64 %argc, i64* %_argc291
  %_argv292 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv292
  %_raw_array294 = call i64* @oat_alloc_array(i64 3)
  %_array295 = bitcast i64* %_raw_array294 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array295, { i64, [0 x i64] }** %_x293
  %_raw_array297 = call i64* @oat_alloc_array(i64 3)
  %_array298 = bitcast i64* %_raw_array297 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array298, { i64, [0 x i64] }** %_y296
  %_id300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y296
  %_id299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x293
  %_Call_retval301 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id299, { i64, [0 x i64] }* %_id300, i1 1)
  %_index_ptr302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval301, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr302
  %_id303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x293
  %_index_ptr304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id303, i32 0, i32 1, i32 0
  %_idx_tmp305 = load i64, i64* %_index_ptr304
  ret i64 %_idx_tmp305
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
