; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_str_tmp3908 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3902 = alloca i64
  store i64 %argc, i64* %_argc3902
  %_argv3903 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3903
  %_arr3904 = alloca { i64, [0 x i64] }*
  %_sum3910 = alloca i64
  %_i3912 = alloca i64
  %_i3937 = alloca i64
  store { i64, [0 x i64] }* %_Call_retval3909, { i64, [0 x i64] }** %_arr3904
  %_cstr3907 = getelementptr [11 x i8], [11 x i8]* @_str_tmp3908, i32 0, i32 0
  %_Call_retval3909 = call { i64, [0 x i64] }* @array_of_string(i8* %_cstr3907)
  store i64 0, i64* %_sum3910
  store i64 0, i64* %_i3912
  br label %_start3919
_start3919:
  %_id3917 = load i64, i64* %_i3912
  %_bop3915 = icmp slt i64 %_id3917, 10
  br i1 %_bop3915, label %_body3920, label %_end3921
_body3920:
  %_id3924 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3904
  %_id3926 = load i64, i64* %_i3912
  %_index_ptr3927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3924, i32 0, i32 1, i64 %_id3926
  %_id3929 = load i64, i64* %_i3912
  store i64 %_id3929, i64* %_index_ptr3927
  %_id3935 = load i64, i64* %_i3912
  %_bop3933 = add i64 %_id3935, 1
  store i64 %_bop3933, i64* %_i3912
  br label %_start3919
_end3921:
  store i64 0, i64* %_i3937
  br label %_start3944
_start3944:
  %_id3942 = load i64, i64* %_i3937
  %_bop3940 = icmp slt i64 %_id3942, 10
  br i1 %_bop3940, label %_body3945, label %_end3946
_body3945:
  %_id3952 = load i64, i64* %_sum3910
  %_id3955 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3904
  %_id3957 = load i64, i64* %_i3937
  %_index_ptr3958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3955, i32 0, i32 1, i64 %_id3957
  %_3959 = load i64, i64* %_index_ptr3958
  %_bop3950 = add i64 %_id3952, %_3959
  store i64 %_bop3950, i64* %_sum3910
  %_id3965 = load i64, i64* %_i3937
  %_bop3963 = add i64 %_id3965, 1
  store i64 %_bop3963, i64* %_i3937
  br label %_start3944
_end3946:
  %_id3968 = load i64, i64* %_sum3910
  ret i64 %_id3968
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
