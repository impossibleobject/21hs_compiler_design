; generated from: oatprograms/run50.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb720 = global [6 x i8] c"abcde\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc717 = alloca i64
  store i64 %argc, i64* %_argc717
  %_argv718 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv718
  %_cstr_loc719 = getelementptr [6 x i8], [6 x i8]* @_cstr_glb720, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc719)
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
