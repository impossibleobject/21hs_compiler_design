; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_387 = global i64 1
@_388 = global i64 2
@_389 = global i64 3
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_384 = global i64 4
@_385 = global i64 5
@_386 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x390 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x390
  %_y391 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y391
  %_b392 = alloca i1
  store i1 %b, i1* %_b392
  %_id393 = load i1, i1* %_b392
  br i1 %_id393, label %_then394, label %_else395
_then394:
  %_id397 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x390
  ret { i64, [0 x i64] }* %_id397
_else395:
  %_id399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y391
  ret { i64, [0 x i64] }* %_id399
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc364 = alloca i64
  store i64 %argc, i64* %_argc364
  %_argv365 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv365
  %_z370 = alloca i64
  %_id366 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id367 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_Call_retval368 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id366, { i64, [3 x i64] }** %_id367, i1 1)
  %_index_ptr369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval368, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr369
  store i64 %_bop371, i64* %_z370
  %_id372 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id373 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_Call_retval374 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id372, { i64, [3 x i64] }** %_id373, i1 1)
  %_index_ptr375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval374, i32 0, i32 1, i32 0
  %_380 = load i64, i64* %_index_ptr375
  %_id376 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_id377 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_Call_retval378 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id376, { i64, [3 x i64] }** %_id377, i1 0)
  %_index_ptr379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval378, i32 0, i32 1, i32 0
  %_381 = load i64, i64* %_index_ptr379
  %_bop371 = add i64 %_380, %_381
  %_id382 = load i64, i64* %_z370
  ret i64 %_id382
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
