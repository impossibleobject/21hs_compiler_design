; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc62 = alloca i64
  store i64 %argc, i64* %_argc62
  %_argv63 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv63
  %_x64 = alloca i64
  store i64 17, i64* %_x64
  %_y66 = alloca i64
  store i64 18, i64* %_y66
  %_68 = add i64 %_70, %_72
  %_72 = load i64, i64* %_y66
  %_70 = load i64, i64* %_x64
  ret i64 %_68
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
