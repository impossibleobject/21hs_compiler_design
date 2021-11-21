; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str_tmp3692 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3687 = alloca i64
  store i64 %argc, i64* %_argc3687
  %_argv3688 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3688
  %_str3689 = alloca i8*
  %_arr3693 = alloca { i64, [0 x i64] }*
  %_s3698 = alloca i64
  %_i3700 = alloca i64
  store i8* %_cstr3691, i8** %_str3689
  %_cstr3691 = getelementptr [6 x i8], [6 x i8]* @_str_tmp3692, i32 0, i32 0
  store { i64, [0 x i64] }* %_Call_retval3697, { i64, [0 x i64] }** %_arr3693
  %_id3696 = load i8*, i8** %_str3689
  %_Call_retval3697 = call { i64, [0 x i64] }* @array_of_string(i8* %_id3696)
  store i64 0, i64* %_s3698
  store i64 0, i64* %_i3700
  br label %_start3707
_start3707:
  %_id3705 = load i64, i64* %_i3700
  %_bop3703 = icmp slt i64 %_id3705, 5
  br i1 %_bop3703, label %_body3708, label %_end3709
_body3708:
  %_id3715 = load i64, i64* %_s3698
  %_id3718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3693
  %_id3720 = load i64, i64* %_i3700
  %_index_ptr3721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3718, i32 0, i32 1, i64 %_id3720
  %_3722 = load i64, i64* %_index_ptr3721
  %_bop3713 = add i64 %_id3715, %_3722
  store i64 %_bop3713, i64* %_s3698
  %_id3728 = load i64, i64* %_i3700
  %_bop3726 = add i64 %_id3728, 1
  store i64 %_bop3726, i64* %_i3700
  br label %_start3707
_end3709:
  %_id3731 = load i64, i64* %_s3698
  ret i64 %_id3731
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
