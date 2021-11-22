; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr280 to { i64, [0 x i64] }*)
@_garr280 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr279 to { i64, [0 x i64] }*)
@_garr279 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x281 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x281
  %_y282 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y282
  %_b283 = alloca i1
  store i1 %b, i1* %_b283
  %_id284 = load i1, i1* %_b283
  br i1 %_id284, label %_then285, label %_else286
_then285:
  %_id288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x281
  ret { i64, [0 x i64] }* %_id288
_else286:
  %_id289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y282
  ret { i64, [0 x i64] }* %_id289
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc270 = alloca i64
  store i64 %argc, i64* %_argc270
  %_argv271 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv271
  %_id272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_Call_retval274 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id272, { i64, [0 x i64] }* %_id273, i1 1)
  %_index_ptr275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval274, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr275
  %_id276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_index_ptr277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id276, i32 0, i32 1, i32 0
  %_idx_tmp278 = load i64, i64* %_index_ptr277
  ret i64 %_idx_tmp278
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
