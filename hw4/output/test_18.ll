; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x531 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x531
  %_y532 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y532
  %_b533 = alloca i1
  store i1 %b, i1* %_b533
  %_id535 = load i1, i1* %_b533
  br i1 %_id535, label %_then536, label %_else537
_then536:
  %_id540 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x531
  ret { i64, [0 x i64] }* %_id540
_else537:
  %_id543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y532
  ret { i64, [0 x i64] }* %_id543
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc449 = alloca i64
  store i64 %argc, i64* %_argc449
  %_argv450 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv450
  %_x451 = alloca { i64, [0 x i64] }*
  %_i456 = alloca i64
  %_y481 = alloca { i64, [0 x i64] }*
  %_i486 = alloca i64
  store { i64, [0 x i64] }* %_array455, { i64, [0 x i64] }** %_x451
  %_raw_array454 = call i64* @oat_alloc_array(i64 3)
  %_array455 = bitcast i64* %_raw_array454 to { i64, [0 x i64] }*
  store i64 0, i64* %_i456
  br label %_start463
_start463:
  %_id461 = load i64, i64* %_i456
  %_bop459 = icmp slt i64 %_id461, 3
  br i1 %_bop459, label %_body464, label %_end465
_body464:
  %_id468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x451
  %_id470 = load i64, i64* %_i456
  %_index_ptr471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id468, i32 0, i32 1, i64 %_id470
  %_id473 = load i64, i64* %_i456
  store i64 %_id473, i64* %_index_ptr471
  %_id479 = load i64, i64* %_i456
  %_bop477 = add i64 %_id479, 1
  store i64 %_bop477, i64* %_i456
  br label %_start463
_end465:
  store { i64, [0 x i64] }* %_array485, { i64, [0 x i64] }** %_y481
  %_raw_array484 = call i64* @oat_alloc_array(i64 3)
  %_array485 = bitcast i64* %_raw_array484 to { i64, [0 x i64] }*
  store i64 0, i64* %_i486
  br label %_start493
_start493:
  %_id491 = load i64, i64* %_i486
  %_bop489 = icmp slt i64 %_id491, 3
  br i1 %_bop489, label %_body494, label %_end495
_body494:
  %_id498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y481
  %_id500 = load i64, i64* %_i486
  %_index_ptr501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id498, i32 0, i32 1, i64 %_id500
  %_id505 = load i64, i64* %_i486
  %_bop503 = add i64 %_id505, 3
  store i64 %_bop503, i64* %_index_ptr501
  %_id512 = load i64, i64* %_i486
  %_bop510 = add i64 %_id512, 1
  store i64 %_bop510, i64* %_i486
  br label %_start493
_end495:
  %_id517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x451
  %_id519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y481
  %_Call_retval521 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id517, { i64, [0 x i64] }* %_id519, i1 1)
  %_index_ptr523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval521, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr523
  %_id527 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x451
  %_index_ptr529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id527, i32 0, i32 1, i32 0
  %_530 = load i64, i64* %_index_ptr529
  ret i64 %_530
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
