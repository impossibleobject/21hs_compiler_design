; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x925 = alloca i64
  store i64 %x, i64* %_x925
  %_y926 = alloca i64
  store i64 %y, i64* %_y926
  %_r927 = alloca i64
  store i64 0, i64* %_r927
  %_id929 = load i64, i64* %_x925
  %_bop928 = icmp sge i64 %_id929, 1
  br i1 %_bop928, label %_then930, label %_else931
_then930:
  %_bop935 = sub i64 %_id936, 1
  %_id936 = load i64, i64* %_x925
  %_id937 = load i64, i64* %_y926
  %_Call_retval938 = call i64 @f(i64 %_bop935, i64 %_id937)
  %_bop934 = add i64 1, %_Call_retval938
  store i64 %_bop934, i64* %_r927
  br label %_end932
_else931:
  %_id941 = load i64, i64* %_x925
  %_id942 = load i64, i64* %_y926
  %_bop940 = add i64 %_id941, %_id942
  store i64 %_bop940, i64* %_r927
  br label %_end932
_end932:
  %_id943 = load i64, i64* %_r927
  ret i64 %_id943
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc915 = alloca i64
  store i64 %argc, i64* %_argc915
  %_argv916 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv916
  %_x917 = alloca i64
  %_y918 = alloca i64
  store i64 3, i64* %_x917
  store i64 3, i64* %_y918
  %_id920 = load i64, i64* %_x917
  %_id921 = load i64, i64* %_y918
  %_Call_retval922 = call i64 @f(i64 %_id920, i64 %_id921)
  %_bop919 = add i64 %_Call_retval922, 0
  ret i64 %_bop919
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
