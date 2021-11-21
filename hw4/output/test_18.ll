; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_344 = global i64 1
@_345 = global i64 2
@_346 = global i64 3
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_341 = global i64 4
@_342 = global i64 5
@_343 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x347 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x347
  %_y348 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y348
  %_b349 = alloca i1
  store i1 %b, i1* %_b349
  %_id350 = load i1, i1* %_b349
  br i1 %_id350, label %_then351, label %_else352
_then351:
  %_id354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x347
  ret { i64, [0 x i64] }* %_id354
_else352:
  %_id356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y348
  ret { i64, [0 x i64] }* %_id356
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc321 = alloca i64
  store i64 %argc, i64* %_argc321
  %_argv322 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv322
  %_z327 = alloca i64
  %_id323 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id324 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_Call_retval325 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id323, { i64, [3 x i64] }** %_id324, i1 1)
  %_index_ptr326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval325, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr326
  %_id329 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id330 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_Call_retval331 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id329, { i64, [3 x i64] }** %_id330, i1 1)
  %_index_ptr332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval331, i32 0, i32 1, i32 0
  %_337 = load i64, i64* %_index_ptr332
  %_id333 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_id334 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_Call_retval335 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id333, { i64, [3 x i64] }** %_id334, i1 0)
  %_index_ptr336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval335, i32 0, i32 1, i32 0
  %_338 = load i64, i64* %_index_ptr336
  %_bop328 = add i64 %_337, %_338
  store i64 %_bop328, i64* %_z327
  %_id339 = load i64, i64* %_z327
  ret i64 %_id339
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
