; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_str3855 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3851 = alloca i64
  store i64 %argc, i64* %_argc3851
  %_argv3852 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3852
  %_str3853 = alloca i8*
  store i8* %_3856, i8** %_str3853
  %_3856 = getelementptr [13 x i8], [13 x i8]* @_str3855, i32 0, i32 0
  %_3859 = load i8*, i8** %_str3853
  call void @print_string(i8* %_3859)
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
