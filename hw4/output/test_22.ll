; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x283 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x283
  %_y284 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y284
  %_b285 = alloca i1
  store i1 %b, i1* %_b285
  %_id286 = load i1, i1* %_b285
  br i1 %_id286, label %_then287, label %_else288
_then287:
  %_id290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x283
  ret { i64, [0 x i64] }* %_id290
_else288:
  %_id291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y284
  ret { i64, [0 x i64] }* %_id291
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca { i64, [0 x i64] }*
  %y = alloca { i64, [0 x i64] }*
  %_argc270 = alloca i64
  store i64 %argc, i64* %_argc270
  %_argv271 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv271
  %_raw_array272 = call i64* @oat_alloc_array(i64 3)
  %_array273 = bitcast i64* %_raw_array272 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array273, { i64, [0 x i64] }** %x
  %_raw_array274 = call i64* @oat_alloc_array(i64 3)
  %_array275 = bitcast i64* %_raw_array274 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array275, { i64, [0 x i64] }** %y
  %_id276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_id277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %y
  %_Call_retval278 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id276, { i64, [0 x i64] }* %_id277, i1 1)
  %_index_ptr279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval278, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr279
  %_id280 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_index_ptr281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id280, i32 0, i32 1, i32 0
  %_idx_tmp282 = load i64, i64* %_index_ptr281
  ret i64 %_idx_tmp282
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
