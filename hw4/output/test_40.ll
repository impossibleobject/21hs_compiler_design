; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3863 = alloca i64
  store i64 %argc, i64* %_argc3863
  %_argv3864 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3864
  %_i3865 = alloca i64
  store i64 1, i64* %_i3865
  br label %_start3872
_start3872:
  %_3869 = load i64, i64* %_i3865
  %_3871 = load i64, i64* %_argc3863
  %_3867 = icmp slt i64 %_3869, %_3871
  br i1 %_3867, label %_body3873, label %_end3874
_body3873:
  %_3881 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_3878, i32 0, i32 1, i64 %_3880
  %_3882 = load i8, i8* %_3881
  %_3880 = load i64, i64* %_i3865
  %_3878 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv3864
  call void @print_string(i8* %_3882)
  %_3888 = load i64, i64* %_i3865
  %_3886 = add i64 %_3888, 1
  store i64 %_3886, i64* %_i3865
  br label %_start3872
_end3874:
  %_3891 = load i64, i64* %_argc3863
  ret i64 %_3891
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
