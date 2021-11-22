; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr334 to { i64, [0 x i64] }*)
@_garr334 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr333 to { i64, [0 x i64] }*)
@_garr333 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x335 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x335
  %_y336 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y336
  %_b337 = alloca i1
  store i1 %b, i1* %_b337
  %_id338 = load i1, i1* %_b337
  br i1 %_id338, label %_then339, label %_else340
_then339:
  %_id342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x335
  ret { i64, [0 x i64] }* %_id342
_else340:
  %_id343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y336
  ret { i64, [0 x i64] }* %_id343
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_z320 = alloca i64
  %_argc314 = alloca i64
  store i64 %argc, i64* %_argc314
  %_argv315 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv315
  %_id316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_Call_retval318 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id316, { i64, [0 x i64] }* %_id317, i1 1)
  %_index_ptr319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval318, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr319
  %_id322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_Call_retval324 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id322, { i64, [0 x i64] }* %_id323, i1 1)
  %_index_ptr325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval324, i32 0, i32 1, i32 0
  %_idx_tmp330 = load i64, i64* %_index_ptr325
  %_id326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_Call_retval328 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id326, { i64, [0 x i64] }* %_id327, i1 0)
  %_index_ptr329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval328, i32 0, i32 1, i32 0
  %_idx_tmp331 = load i64, i64* %_index_ptr329
  %_bop321 = add i64 %_idx_tmp330, %_idx_tmp331
  store i64 %_bop321, i64* %_z320
  %_id332 = load i64, i64* %_z320
  ret i64 %_id332
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
