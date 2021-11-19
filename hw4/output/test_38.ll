; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3625 = alloca i64
  store i64 %argc, i64* %_argc3625
  %_argv3626 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3626
  %_str3627 = alloca i8*
  store i8* %_retval3638, i8** %_str3627
  store i64 110, i64* %_3635
  %_3635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3631, i32 0, i32 1, i32 0
  store i64 110, i64* %_3636
  %_3636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3631, i32 0, i32 1, i32 1
  store i64 110, i64* %_3637
  %_3637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3631, i32 0, i32 1, i32 2
  %_array3631 = bitcast i64* %_raw_array3630 to { i64, [0 x i64] }*
  %_raw_array3630 = call i64* @oat_alloc_array(i64 3)
  %_retval3638 = call i8* @string_of_array({ i64, [0 x i64] }* %_array3631)
  %_3641 = load i8*, i8** %_str3627
  call void @print_string(i8* %_3641)
  ret i64 0
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
