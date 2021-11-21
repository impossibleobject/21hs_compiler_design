; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3877 = alloca i64
  store i64 %argc, i64* %_argc3877
  %_argv3878 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3878
  %_i3879 = alloca i64
  store i64 1, i64* %_i3879
  br label %_start3886
_start3886:
  %_3883 = load i64, i64* %_i3879
  %_3885 = load i64, i64* %_argc3877
  %_3881 = icmp slt i64 %_3883, %_3885
  br i1 %_3881, label %_body3887, label %_end3888
_body3887:
  %_index_ptr3895 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_3892, i32 0, i32 1, i64 %_3894
  %_3894 = load i64, i64* %_i3879
  %_3892 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv3878
  call void @print_string(i8** %_index_ptr3895)
  %_3902 = load i64, i64* %_i3879
  %_3900 = add i64 %_3902, 1
  store i64 %_3900, i64* %_i3879
  br label %_start3886
_end3888:
  %_3905 = load i64, i64* %_argc3877
  ret i64 %_3905
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
