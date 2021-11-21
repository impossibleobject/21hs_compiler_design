; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3641 = alloca i64
  store i64 %argc, i64* %_argc3641
  %_argv3642 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3642
  %_arr3643 = alloca { i64, [0 x i64] }*
  %_s3648 = alloca i64
  %_i3650 = alloca i64
  store { i64, [0 x i64] }* %_Call_retval3647, { i64, [0 x i64] }** %_arr3643
  %_id3646 = getelementptr [6 x i8], [6 x i8]* @str, i32 0, i32 0
  %_Call_retval3647 = call { i64, [0 x i64] }* @array_of_string(i8* %_id3646)
  store i64 0, i64* %_s3648
  store i64 0, i64* %_i3650
  br label %_start3657
_start3657:
  %_id3655 = load i64, i64* %_i3650
  %_bop3653 = icmp slt i64 %_id3655, 5
  br i1 %_bop3653, label %_body3658, label %_end3659
_body3658:
  %_id3665 = load i64, i64* %_s3648
  %_id3668 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3643
  %_id3670 = load i64, i64* %_i3650
  %_index_ptr3671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3668, i32 0, i32 1, i64 %_id3670
  %_3672 = load i64, i64* %_index_ptr3671
  %_bop3663 = add i64 %_id3665, %_3672
  store i64 %_bop3663, i64* %_s3648
  %_id3678 = load i64, i64* %_i3650
  %_bop3676 = add i64 %_id3678, 1
  store i64 %_bop3676, i64* %_i3650
  br label %_start3657
_end3659:
  %_id3682 = load i64, i64* %_s3648
  call void @print_int(i64 %_id3682)
  %_id3685 = load i64, i64* %_s3648
  ret i64 %_id3685
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
