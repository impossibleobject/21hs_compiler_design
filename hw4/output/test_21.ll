; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_345 = global i64 1
@_346 = global i64 2
@_347 = global i64 3
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_342 = global i64 4
@_343 = global i64 5
@_344 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x348 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x348
  %_y349 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y349
  %_b350 = alloca i1
  store i1 %b, i1* %_b350
  %_id351 = load i1*, i1** %_b350
  br i1 %_id351, label %_then352, label %_else353
_then352:
  %_id355 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_x348
  ret { i64, [0 x i64] }* %_id355
_else353:
  %_id356 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_y349
  ret { i64, [0 x i64] }* %_id356
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc323 = alloca i64
  store i64 %argc, i64* %_argc323
  %_argv324 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv324
  %_z329 = alloca i64
  %_id325 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_id326 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_Call_retval327 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }* %_id325, { i64, [3 x i64] }* %_id326, i1 1)
  %_index_ptr328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval327, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr328
  %_id331 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_id332 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_Call_retval333 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }* %_id331, { i64, [3 x i64] }* %_id332, i1 1)
  %_index_ptr334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval333, i32 0, i32 1, i32 0
  %_idx_tmp339 = load i64, i64* %_index_ptr334
  %_id335 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_id336 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_Call_retval337 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }* %_id335, { i64, [3 x i64] }* %_id336, i1 0)
  %_index_ptr338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval337, i32 0, i32 1, i32 0
  %_idx_tmp340 = load i64, i64* %_index_ptr338
  %_bop330 = add i64 %_idx_tmp339, %_idx_tmp340
  store i64 %_bop330, i64* %_z329
  %_id341 = load i64, i64* %_z329
  ret i64 %_id341
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
