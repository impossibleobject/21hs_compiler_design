; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x301 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x301
  %_y302 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y302
  %_b303 = alloca i1
  store i1 %b, i1* %_b303
  %_id304 = load i1, i1* %_b303
  br i1 %_id304, label %_then305, label %_else306
_then305:
  %_id308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x301
  ret { i64, [0 x i64] }* %_id308
_else306:
  %_id310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y302
  ret { i64, [0 x i64] }* %_id310
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc259 = alloca i64
  store i64 %argc, i64* %_argc259
  %_argv260 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv260
  %_x261 = alloca { i64, [0 x i64] }*
  %_i264 = alloca i64
  %_y277 = alloca { i64, [0 x i64] }*
  %_i280 = alloca i64
  store { i64, [0 x i64] }* %_array263, { i64, [0 x i64] }** %_x261
  %_raw_array262 = call i64* @oat_alloc_array(i64 3)
  %_array263 = bitcast i64* %_raw_array262 to { i64, [0 x i64] }*
  store i64 0, i64* %_i264
  br label %_start267
_start267:
  %_id266 = load i64, i64* %_i264
  %_bop265 = icmp slt i64 %_id266, 3
  br i1 %_bop265, label %_body268, label %_end269
_body268:
  %_id270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x261
  %_id271 = load i64, i64* %_i264
  %_index_ptr272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id270, i32 0, i32 1, i64 %_id271
  %_id273 = load i64, i64* %_i264
  store i64 %_id273, i64* %_index_ptr272
  %_id276 = load i64, i64* %_i264
  %_bop275 = add i64 %_id276, 1
  store i64 %_bop275, i64* %_i264
  br label %_start267
_end269:
  store { i64, [0 x i64] }* %_array279, { i64, [0 x i64] }** %_y277
  %_raw_array278 = call i64* @oat_alloc_array(i64 3)
  %_array279 = bitcast i64* %_raw_array278 to { i64, [0 x i64] }*
  store i64 0, i64* %_i280
  br label %_start283
_start283:
  %_id282 = load i64, i64* %_i280
  %_bop281 = icmp slt i64 %_id282, 3
  br i1 %_bop281, label %_body284, label %_end285
_body284:
  %_id286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y277
  %_id287 = load i64, i64* %_i280
  %_index_ptr288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id286, i32 0, i32 1, i64 %_id287
  %_id290 = load i64, i64* %_i280
  %_bop289 = add i64 %_id290, 3
  store i64 %_bop289, i64* %_index_ptr288
  %_id293 = load i64, i64* %_i280
  %_bop292 = add i64 %_id293, 1
  store i64 %_bop292, i64* %_i280
  br label %_start283
_end285:
  %_id294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x261
  %_id295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y277
  %_Call_retval296 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id294, { i64, [0 x i64] }* %_id295, i1 1)
  %_index_ptr297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval296, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr297
  %_id298 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x261
  %_index_ptr299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id298, i32 0, i32 1, i32 0
  %_300 = load i64, i64* %_index_ptr299
  ret i64 %_300
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
