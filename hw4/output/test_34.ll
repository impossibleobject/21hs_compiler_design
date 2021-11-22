; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %s = alloca i64
  %i = alloca i64
  %j = alloca i64
  %_argc392 = alloca i64
  store i64 %argc, i64* %_argc392
  %_argv393 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv393
  %_raw_array394 = call i64* @oat_alloc_array(i64 3)
  %_array395 = bitcast i64* %_raw_array394 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array408 = call i64* @oat_alloc_array(i64 4)
  %_array409 = bitcast i64* %_raw_array408 to { i64, [0 x i64] }*
  %_CArr_elem_3413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array409, i32 0, i32 1, i32 3
  store i64 11, i64* %_CArr_elem_3413
  %_CArr_elem_2412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array409, i32 0, i32 1, i32 2
  store i64 10, i64* %_CArr_elem_2412
  %_CArr_elem_1411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array409, i32 0, i32 1, i32 1
  store i64 9, i64* %_CArr_elem_1411
  %_CArr_elem_0410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array409, i32 0, i32 1, i32 0
  store i64 8, i64* %_CArr_elem_0410
  %_CArr_elem_2416 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array395, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array409, { i64, [0 x i64] }** %_CArr_elem_2416
  %_raw_array402 = call i64* @oat_alloc_array(i64 4)
  %_array403 = bitcast i64* %_raw_array402 to { i64, [0 x i64] }*
  %_CArr_elem_3407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array403, i32 0, i32 1, i32 3
  store i64 7, i64* %_CArr_elem_3407
  %_CArr_elem_2406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array403, i32 0, i32 1, i32 2
  store i64 6, i64* %_CArr_elem_2406
  %_CArr_elem_1405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array403, i32 0, i32 1, i32 1
  store i64 5, i64* %_CArr_elem_1405
  %_CArr_elem_0404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array403, i32 0, i32 1, i32 0
  store i64 4, i64* %_CArr_elem_0404
  %_CArr_elem_1415 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array395, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array403, { i64, [0 x i64] }** %_CArr_elem_1415
  %_raw_array396 = call i64* @oat_alloc_array(i64 4)
  %_array397 = bitcast i64* %_raw_array396 to { i64, [0 x i64] }*
  %_CArr_elem_3401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array397, i32 0, i32 1, i32 3
  store i64 3, i64* %_CArr_elem_3401
  %_CArr_elem_2400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array397, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_2400
  %_CArr_elem_1399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array397, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1399
  %_CArr_elem_0398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array397, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_0398
  %_CArr_elem_0414 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array395, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array397, { i64, [0 x i64] }** %_CArr_elem_0414
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array395, { i64, [0 x { i64, [0 x i64] }*] }** %a
  store i64 0, i64* %s
  store i64 0, i64* %i
  br label %_start419
_start419:
  %_id418 = load i64, i64* %i
  %_bop417 = icmp slt i64 %_id418, 3
  br i1 %_bop417, label %_body420, label %_end421
_body420:
  store i64 0, i64* %j
  br label %_start424
_start424:
  %_id423 = load i64, i64* %j
  %_bop422 = icmp slt i64 %_id423, 4
  br i1 %_bop422, label %_body425, label %_end426
_body425:
  %_id428 = load i64, i64* %s
  %_id429 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_id430 = load i64, i64* %i
  %_index_ptr431 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id429, i32 0, i32 1, i64 %_id430
  %_idx_tmp432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr431
  %_id433 = load i64, i64* %j
  %_index_ptr434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp432, i32 0, i32 1, i64 %_id433
  %_idx_tmp435 = load i64, i64* %_index_ptr434
  %_bop427 = add i64 %_id428, %_idx_tmp435
  store i64 %_bop427, i64* %s
  %_id437 = load i64, i64* %j
  %_bop436 = add i64 %_id437, 1
  store i64 %_bop436, i64* %j
  br label %_start424
_end426:
  %_id439 = load i64, i64* %i
  %_bop438 = add i64 %_id439, 1
  store i64 %_bop438, i64* %i
  br label %_start419
_end421:
  %_id440 = load i64, i64* %s
  ret i64 %_id440
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
