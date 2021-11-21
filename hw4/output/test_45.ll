; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str3703 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3699 = alloca i64
  store i64 %argc, i64* %_argc3699
  %_argv3700 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3700
  %_str3701 = alloca i8*
  %_arr3705 = alloca { i64, [0 x i64] }*
  %_s3710 = alloca i64
  %_i3712 = alloca i64
  store i8* %_3704, i8** %_str3701
  %_3704 = getelementptr [6 x i8], [6 x i8]* @_str3703, i32 0, i32 0
  store { i64, [0 x i64] }* %_retval3709, { i64, [0 x i64] }** %_arr3705
  %_3708 = load i8*, i8** %_str3701
  %_retval3709 = call { i64, [0 x i64] }* @array_of_string(i8* %_3708)
  store i64 0, i64* %_s3710
  store i64 0, i64* %_i3712
  br label %_start3718
_start3718:
  %_3716 = load i64, i64* %_i3712
  %_3714 = icmp slt i64 %_3716, 5
  br i1 %_3714, label %_body3719, label %_end3720
_body3719:
  %_3725 = load i64, i64* %_s3710
  %_3728 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3705
  %_3730 = load i64, i64* %_i3712
  %_index_ptr3731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3728, i32 0, i32 1, i64 %_3730
  %_3733 = load i64, i64* %_index_ptr3731
  %_3723 = add i64 %_3725, %_3733
  store i64 %_3723, i64* %_s3710
  %_3738 = load i64, i64* %_i3712
  %_3736 = add i64 %_3738, 1
  store i64 %_3736, i64* %_i3712
  br label %_start3718
_end3720:
  %_3741 = load i64, i64* %_s3710
  ret i64 %_3741
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
