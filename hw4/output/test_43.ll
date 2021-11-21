; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_bop3614 = add i64 1, 1
  store i64 %_bop3614, i64* @a
  ret i64 %_bop3614
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3570 = alloca i64
  store i64 %argc, i64* %_argc3570
  %_argv3571 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3571
  %_b3572 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3577, { i64, [0 x i64] }** %_b3572
  %_Call_retval3575 = call i64 @f()
  %_raw_array3576 = call i64* @oat_alloc_array(i64 %_Call_retval3575)
  %_array3577 = bitcast i64* %_raw_array3576 to { i64, [0 x i64] }*
  %_id3580 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3572
  %_index_ptr3582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3580, i32 0, i32 1, i32 0
  %_Call_retval3584 = call i64 @f()
  store i64 %_Call_retval3584, i64* %_index_ptr3582
  %_id3587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3572
  %_index_ptr3589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3587, i32 0, i32 1, i32 1
  %_Call_retval3591 = call i64 @f()
  store i64 %_Call_retval3591, i64* %_index_ptr3589
  %_id3600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3572
  %_index_ptr3602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3600, i32 0, i32 1, i32 0
  %_3603 = load i64, i64* %_index_ptr3602
  %_bop3595 = add i64 1, %_3603
  %_id3606 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b3572
  %_index_ptr3608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3606, i32 0, i32 1, i32 1
  %_3609 = load i64, i64* %_index_ptr3608
  %_bop3593 = add i64 %_bop3595, %_3609
  ret i64 %_bop3593
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
