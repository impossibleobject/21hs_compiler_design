; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr335 to { i64, [0 x i64] }*)
@_garr335 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr334 to { i64, [0 x i64] }*)
@_garr334 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x336 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x336
  %_y337 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y337
  %_b338 = alloca i1
  store i1 %b, i1* %_b338
  %_id339 = load i1, i1* %_b338
  br i1 %_id339, label %_then340, label %_else341
_then340:
  %_id343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x336
  ret { i64, [0 x i64] }* %_id343
_else341:
  %_id344 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y337
  ret { i64, [0 x i64] }* %_id344
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_z321 = alloca i64
  %_argc315 = alloca i64
  store i64 %argc, i64* %_argc315
  %_argv316 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv316
  %_id318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_Call_retval319 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id317, { i64, [0 x i64] }* %_id318, i1 1)
  %_index_ptr320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval319, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr320
  %_id324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_Call_retval325 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id323, { i64, [0 x i64] }* %_id324, i1 1)
  %_index_ptr326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval325, i32 0, i32 1, i32 0
  %_idx_tmp331 = load i64, i64* %_index_ptr326
  %_id328 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_Call_retval329 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id327, { i64, [0 x i64] }* %_id328, i1 0)
  %_index_ptr330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval329, i32 0, i32 1, i32 0
  %_idx_tmp332 = load i64, i64* %_index_ptr330
  %_bop322 = add i64 %_idx_tmp331, %_idx_tmp332
  store i64 %_bop322, i64* %_z321
  %_id333 = load i64, i64* %_z321
  ret i64 %_id333
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
