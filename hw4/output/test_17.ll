; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x310 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x310
  %_y311 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y311
  %_b312 = alloca i1
  store i1 %b, i1* %_b312
  %_id313 = load i1, i1* %_b312
  br i1 %_id313, label %_then314, label %_else315
_then314:
  %_id317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x310
  ret { i64, [0 x i64] }* %_id317
_else315:
  %_id319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y311
  ret { i64, [0 x i64] }* %_id319
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc295 = alloca i64
  store i64 %argc, i64* %_argc295
  %_argv296 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv296
  %_x297 = alloca { i64, [0 x i64] }*
  %_y300 = alloca { i64, [0 x i64] }*
  %_raw_array298 = call i64* @oat_alloc_array(i64 3)
  %_array299 = bitcast i64* %_raw_array298 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array299, { i64, [0 x i64] }** %_x297
  %_raw_array301 = call i64* @oat_alloc_array(i64 3)
  %_array302 = bitcast i64* %_raw_array301 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array302, { i64, [0 x i64] }** %_y300
  %_id303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x297
  %_id304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y300
  %_Call_retval305 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id303, { i64, [0 x i64] }* %_id304, i1 1)
  %_index_ptr306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval305, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr306
  %_id307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x297
  %_index_ptr308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id307, i32 0, i32 1, i32 0
  %_309 = load i64, i64* %_index_ptr308
  ret i64 %_309
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
