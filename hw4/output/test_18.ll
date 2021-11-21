; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x488 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x488
  %_y489 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y489
  %_b490 = alloca i1
  store i1 %b, i1* %_b490
  %_492 = load i1, i1* %_b490
  br i1 %_492, label %_then493, label %_else494
_then493:
  %_497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x488
  ret { i64, [0 x i64] }* %_497
_else494:
  %_500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y489
  ret { i64, [0 x i64] }* %_500
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc407 = alloca i64
  store i64 %argc, i64* %_argc407
  %_argv408 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv408
  %_x409 = alloca { i64, [0 x i64] }*
  %_i414 = alloca i64
  %_y438 = alloca { i64, [0 x i64] }*
  %_i443 = alloca i64
  store { i64, [0 x i64] }* %_array413, { i64, [0 x i64] }** %_x409
  %_raw_array412 = call i64* @oat_alloc_array(i64 3)
  %_array413 = bitcast i64* %_raw_array412 to { i64, [0 x i64] }*
  store i64 0, i64* %_i414
  br label %_start420
_start420:
  %_418 = load i64, i64* %_i414
  %_416 = icmp slt i64 %_418, 3
  br i1 %_416, label %_body421, label %_end422
_body421:
  %_425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x409
  %_427 = load i64, i64* %_i414
  %_index_ptr428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_425, i32 0, i32 1, i64 %_427
  %_431 = load i64, i64* %_i414
  store i64 %_431, i64* %_index_ptr428
  %_436 = load i64, i64* %_i414
  %_434 = add i64 %_436, 1
  store i64 %_434, i64* %_i414
  br label %_start420
_end422:
  store { i64, [0 x i64] }* %_array442, { i64, [0 x i64] }** %_y438
  %_raw_array441 = call i64* @oat_alloc_array(i64 3)
  %_array442 = bitcast i64* %_raw_array441 to { i64, [0 x i64] }*
  store i64 0, i64* %_i443
  br label %_start449
_start449:
  %_447 = load i64, i64* %_i443
  %_445 = icmp slt i64 %_447, 3
  br i1 %_445, label %_body450, label %_end451
_body450:
  %_454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y438
  %_456 = load i64, i64* %_i443
  %_index_ptr457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_454, i32 0, i32 1, i64 %_456
  %_461 = load i64, i64* %_i443
  %_459 = add i64 %_461, 3
  store i64 %_459, i64* %_index_ptr457
  %_467 = load i64, i64* %_i443
  %_465 = add i64 %_467, 1
  store i64 %_465, i64* %_i443
  br label %_start449
_end451:
  %_472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x409
  %_474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y438
  %_retval476 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_472, { i64, [0 x i64] }* %_474, i1 1)
  %_index_ptr478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_retval476, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr478
  %_483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x409
  %_index_ptr485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_483, i32 0, i32 1, i32 0
  %_487 = load i64, i64* %_index_ptr485
  ret i64 %_487
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
