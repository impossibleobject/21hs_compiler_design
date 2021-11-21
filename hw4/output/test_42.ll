; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_3576 = add i64 1, 1
  store i64 %_3576, i64* @a
  ret i64 %_3576
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3533 = alloca i64
  store i64 %argc, i64* %_argc3533
  %_argv3534 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3534
  %_b3535 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3540, { i64, [0 x i64] }** %_b3535
  %_retval3538 = call i64 @f()
  %_raw_array3539 = call i64* @oat_alloc_array(i64 %_retval3538)
  %_array3540 = bitcast i64* %_raw_array3539 to { i64, [0 x i64] }*
  %_3543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3535
  %_index_ptr3545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3543, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr3545
  %_3550 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3535
  %_index_ptr3552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3550, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr3552
  %_3561 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3535
  %_index_ptr3563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3561, i32 0, i32 1, i32 0
  %_3565 = load i64, i64* %_index_ptr3563
  %_3556 = add i64 1, %_3565
  %_3568 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3535
  %_index_ptr3570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3568, i32 0, i32 1, i32 1
  %_3572 = load i64, i64* %_index_ptr3570
  %_3555 = add i64 %_3556, %_3572
  ret i64 %_3555
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
