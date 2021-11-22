; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x305 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x305
  %_y306 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y306
  %_b307 = alloca i1
  store i1 %b, i1* %_b307
  %_id308 = load i1, i1* %_b307
  br i1 %_id308, label %_then309, label %_else310
_then309:
  %_id312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x305
  ret { i64, [0 x i64] }* %_id312
_else310:
  %_id313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y306
  ret { i64, [0 x i64] }* %_id313
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x292 = alloca { i64, [0 x i64] }*
  %_y295 = alloca { i64, [0 x i64] }*
  %_argc290 = alloca i64
  store i64 %argc, i64* %_argc290
  %_argv291 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv291
  %_raw_array293 = call i64* @oat_alloc_array(i64 3)
  %_array294 = bitcast i64* %_raw_array293 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array294, { i64, [0 x i64] }** %_x292
  %_raw_array296 = call i64* @oat_alloc_array(i64 3)
  %_array297 = bitcast i64* %_raw_array296 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array297, { i64, [0 x i64] }** %_y295
  %_id298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x292
  %_id299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y295
  %_Call_retval300 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id298, { i64, [0 x i64] }* %_id299, i1 1)
  %_index_ptr301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval300, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr301
  %_id302 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x292
  %_index_ptr303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id302, i32 0, i32 1, i32 0
  %_idx_tmp304 = load i64, i64* %_index_ptr303
  ret i64 %_idx_tmp304
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
