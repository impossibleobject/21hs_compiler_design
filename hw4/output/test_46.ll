; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_str_tmp3864 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3859 = alloca i64
  store i64 %argc, i64* %_argc3859
  %_argv3860 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3860
  %_str3861 = alloca i8*
  store i8* %_cstr3863, i8** %_str3861
  %_cstr3863 = getelementptr [13 x i8], [13 x i8]* @_str_tmp3864, i32 0, i32 0
  %_id3867 = load i8*, i8** %_str3861
  call void @print_string(i8* %_id3867)
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
