; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3871 = alloca i64
  store i64 %argc, i64* %_argc3871
  %_argv3872 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3872
  %_i3873 = alloca i64
  store i64 1, i64* %_i3873
  br label %_start3881
_start3881:
  %_id3878 = load i64, i64* %_i3873
  %_id3880 = load i64, i64* %_argc3871
  %_bop3876 = icmp slt i64 %_id3878, %_id3880
  br i1 %_bop3876, label %_body3882, label %_end3883
_body3882:
  %_index_ptr3890 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id3887, i32 0, i32 1, i64 %_id3889
  %_id3889 = load i64, i64* %_i3873
  %_id3887 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv3872
  call void @print_string(i8** %_index_ptr3890)
  %_id3897 = load i64, i64* %_i3873
  %_bop3895 = add i64 %_id3897, 1
  store i64 %_bop3895, i64* %_i3873
  br label %_start3881
_end3883:
  %_id3900 = load i64, i64* %_argc3871
  ret i64 %_id3900
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
