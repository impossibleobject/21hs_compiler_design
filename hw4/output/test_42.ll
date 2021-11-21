; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_bop3563 = add i64 1, 1
  store i64 %_bop3563, i64* @a
  ret i64 %_bop3563
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3521 = alloca i64
  store i64 %argc, i64* %_argc3521
  %_argv3522 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3522
  %_b3523 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3528, { i64, [0 x i64] }** %_b3523
  %_Call_retval3526 = call i64 @f()
  %_raw_array3527 = call i64* @oat_alloc_array(i64 %_Call_retval3526)
  %_array3528 = bitcast i64* %_raw_array3527 to { i64, [0 x i64] }*
  %_id3531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3523
  %_index_ptr3533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3531, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr3533
  %_id3537 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3523
  %_index_ptr3539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3537, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr3539
  %_id3549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3523
  %_index_ptr3551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3549, i32 0, i32 1, i32 0
  %_3552 = load i64, i64* %_index_ptr3551
  %_bop3544 = add i64 1, %_3552
  %_id3555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3523
  %_index_ptr3557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3555, i32 0, i32 1, i32 1
  %_3558 = load i64, i64* %_index_ptr3557
  %_bop3542 = add i64 %_bop3544, %_3558
  ret i64 %_bop3542
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
