; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3655 = alloca i64
  store i64 %argc, i64* %_argc3655
  %_argv3656 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3656
  %_arr3657 = alloca { i64, [0 x i64] }*
  %_s3662 = alloca i64
  %_i3664 = alloca i64
  store { i64, [0 x i64] }* %_retval3661, { i64, [0 x i64] }** %_arr3657
  %_3660 = getelementptr [6 x i8], [6 x i8]* @str, i32 0, i32 0
  %_retval3661 = call { i64, [0 x i64] }* @array_of_string(i8* %_3660)
  store i64 0, i64* %_s3662
  store i64 0, i64* %_i3664
  br label %_start3670
_start3670:
  %_3668 = load i64, i64* %_i3664
  %_3666 = icmp slt i64 %_3668, 5
  br i1 %_3666, label %_body3671, label %_end3672
_body3671:
  %_3677 = load i64, i64* %_s3662
  %_3680 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3657
  %_3682 = load i64, i64* %_i3664
  %_index_ptr3683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3680, i32 0, i32 1, i64 %_3682
  %_3685 = load i64, i64* %_index_ptr3683
  %_3675 = add i64 %_3677, %_3685
  store i64 %_3675, i64* %_s3662
  %_3690 = load i64, i64* %_i3664
  %_3688 = add i64 %_3690, 1
  store i64 %_3688, i64* %_i3664
  br label %_start3670
_end3672:
  %_3694 = load i64, i64* %_s3662
  call void @print_int(i64 %_3694)
  %_3697 = load i64, i64* %_s3662
  ret i64 %_3697
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
