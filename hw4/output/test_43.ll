; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb1933 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1929 = alloca i64
  store i64 %argc, i64* %_argc1929
  %_argv1930 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1930
  %_str1931 = alloca i8*
  %_cstr_loc1932 = getelementptr [13 x i8], [13 x i8]* @_cstr_glb1933, i32 0, i32 0
  store i8* %_cstr_loc1932, i8** %_str1931
  %_id1934 = load i8*, i8** %_str1931
  call void @print_string(i8* %_id1934)
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
