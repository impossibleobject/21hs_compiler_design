; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_3628 = add i64 1, 1
  store i64 %_3628, i64* @a
  ret i64 %_3628
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3583 = alloca i64
  store i64 %argc, i64* %_argc3583
  %_argv3584 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3584
  %_b3585 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3590, { i64, [0 x i64] }** %_b3585
  %_retval3588 = call i64 @f()
  %_raw_array3589 = call i64* @oat_alloc_array(i64 %_retval3588)
  %_array3590 = bitcast i64* %_raw_array3589 to { i64, [0 x i64] }*
  %_3593 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3585
  %_index_ptr3595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3593, i32 0, i32 1, i32 0
  %_retval3598 = call i64 @f()
  store i64 %_retval3598, i64* %_index_ptr3595
  %_3601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3585
  %_index_ptr3603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3601, i32 0, i32 1, i32 1
  %_retval3606 = call i64 @f()
  store i64 %_retval3606, i64* %_index_ptr3603
  %_3613 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3585
  %_index_ptr3615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3613, i32 0, i32 1, i32 0
  %_3617 = load i64, i64* %_index_ptr3615
  %_3608 = add i64 1, %_3617
  %_3620 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3585
  %_index_ptr3622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3620, i32 0, i32 1, i32 1
  %_3624 = load i64, i64* %_index_ptr3622
  %_3607 = add i64 %_3608, %_3624
  ret i64 %_3607
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
