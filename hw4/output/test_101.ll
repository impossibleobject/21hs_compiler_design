; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_garr3919 to { i64, [0 x i64] }*)
@_garr3919 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_garr3918 to { i64, [0 x i64] }*)
@_garr3918 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %val = alloca i64
  %i = alloca i64
  %_ar13894 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar13894
  %_ar23895 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar23895
  %_len3896 = alloca i64
  store i64 %len, i64* %_len3896
  store i64 0, i64* %val
  store i64 0, i64* %i
  br label %_start3900
_start3900:
  %_id3898 = load i64, i64* %i
  %_id3899 = load i64, i64* %_len3896
  %_bop3897 = icmp slt i64 %_id3898, %_id3899
  br i1 %_bop3897, label %_body3901, label %_end3902
_body3901:
  %_id3904 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar13894
  %_id3905 = load i64, i64* %i
  %_index_ptr3906 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3904, i32 0, i32 1, i64 %_id3905
  %_idx_tmp3910 = load i64, i64* %_index_ptr3906
  %_id3907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar23895
  %_id3908 = load i64, i64* %i
  %_index_ptr3909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3907, i32 0, i32 1, i64 %_id3908
  %_idx_tmp3911 = load i64, i64* %_index_ptr3909
  %_bop3903 = icmp ne i64 %_idx_tmp3910, %_idx_tmp3911
  br i1 %_bop3903, label %_then3912, label %_else3913
_then3912:
  store i64 1, i64* %val
  br label %_end3914
_else3913:
  br label %_end3914
_end3914:
  %_id3916 = load i64, i64* %i
  %_bop3915 = add i64 %_id3916, 1
  store i64 %_bop3915, i64* %i
  br label %_start3900
_end3902:
  %_id3917 = load i64, i64* %val
  ret i64 %_id3917
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %val = alloca i64
  %_argc3884 = alloca i64
  store i64 %argc, i64* %_argc3884
  %_argv3885 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3885
  store i64 1, i64* %val
  %_id3887 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_id3888 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_Call_retval3889 = call i64 @arrcheck({ i64, [0 x i64] }* %_id3887, { i64, [0 x i64] }* %_id3888, i64 4)
  %_bop3886 = icmp eq i64 %_Call_retval3889, 1
  br i1 %_bop3886, label %_then3890, label %_else3891
_then3890:
  store i64 0, i64* %val
  br label %_end3892
_else3891:
  br label %_end3892
_end3892:
  %_id3893 = load i64, i64* %val
  ret i64 %_id3893
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
