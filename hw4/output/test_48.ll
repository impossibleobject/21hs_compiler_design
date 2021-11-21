; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_str3912 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3907 = alloca i64
  store i64 %argc, i64* %_argc3907
  %_argv3908 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3908
  %_arr3909 = alloca { i64, [0 x i64] }*
  %_sum3915 = alloca i64
  %_i3917 = alloca i64
  %_i3941 = alloca i64
  store { i64, [0 x i64] }* %_retval3914, { i64, [0 x i64] }** %_arr3909
  %_3913 = getelementptr [11 x i8], [11 x i8]* @_str3912, i32 0, i32 0
  %_retval3914 = call { i64, [0 x i64] }* @array_of_string(i8* %_3913)
  store i64 0, i64* %_sum3915
  store i64 0, i64* %_i3917
  br label %_start3923
_start3923:
  %_3921 = load i64, i64* %_i3917
  %_3919 = icmp slt i64 %_3921, 10
  br i1 %_3919, label %_body3924, label %_end3925
_body3924:
  %_3928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3909
  %_3930 = load i64, i64* %_i3917
  %_index_ptr3931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3928, i32 0, i32 1, i64 %_3930
  %_3934 = load i64, i64* %_i3917
  store i64 %_3934, i64* %_index_ptr3931
  %_3939 = load i64, i64* %_i3917
  %_3937 = add i64 %_3939, 1
  store i64 %_3937, i64* %_i3917
  br label %_start3923
_end3925:
  store i64 0, i64* %_i3941
  br label %_start3947
_start3947:
  %_3945 = load i64, i64* %_i3941
  %_3943 = icmp slt i64 %_3945, 10
  br i1 %_3943, label %_body3948, label %_end3949
_body3948:
  %_3954 = load i64, i64* %_sum3915
  %_3957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3909
  %_3959 = load i64, i64* %_i3941
  %_index_ptr3960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_3957, i32 0, i32 1, i64 %_3959
  %_3962 = load i64, i64* %_index_ptr3960
  %_3952 = add i64 %_3954, %_3962
  store i64 %_3952, i64* %_sum3915
  %_3967 = load i64, i64* %_i3941
  %_3965 = add i64 %_3967, 1
  store i64 %_3965, i64* %_i3941
  br label %_start3947
_end3949:
  %_3970 = load i64, i64* %_sum3915
  ret i64 %_3970
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
