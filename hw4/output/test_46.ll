; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2171 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str2169 = alloca i8*
  %_argc2167 = alloca i64
  store i64 %argc, i64* %_argc2167
  %_argv2168 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2168
  %_cstr_loc2170 = getelementptr [13 x i8], [13 x i8]* @_cstr_glb2171, i32 0, i32 0
  store i8* %_cstr_loc2170, i8** %_str2169
  %_id2172 = load i8*, i8** %_str2169
  call void @print_string(i8* %_id2172)
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
