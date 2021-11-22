; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr311 to { i64, [0 x i64] }*)
@_garr311 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr310 to { i64, [0 x i64] }*)
@_garr310 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x312 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x312
  %_y313 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y313
  %_b314 = alloca i1
  store i1 %b, i1* %_b314
  %_id315 = load i1, i1* %_b314
  br i1 %_id315, label %_then316, label %_else317
_then316:
  %_id319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x312
  ret { i64, [0 x i64] }* %_id319
_else317:
  %_id320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y313
  ret { i64, [0 x i64] }* %_id320
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %z = alloca i64
  %_argc292 = alloca i64
  store i64 %argc, i64* %_argc292
  %_argv293 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv293
  %_id294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_Call_retval296 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id294, { i64, [0 x i64] }* %_id295, i1 1)
  %_index_ptr297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval296, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr297
  %_id299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_Call_retval301 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id299, { i64, [0 x i64] }* %_id300, i1 1)
  %_index_ptr302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval301, i32 0, i32 1, i32 0
  %_idx_tmp307 = load i64, i64* %_index_ptr302
  %_id303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_Call_retval305 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id303, { i64, [0 x i64] }* %_id304, i1 0)
  %_index_ptr306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval305, i32 0, i32 1, i32 0
  %_idx_tmp308 = load i64, i64* %_index_ptr306
  %_bop298 = add i64 %_idx_tmp307, %_idx_tmp308
  store i64 %_bop298, i64* %z
  %_id309 = load i64, i64* %z
  ret i64 %_id309
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
