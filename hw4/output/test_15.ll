; generated from: oatprograms/run27.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_295 = alloca i64
  store i64 %argc, i64* %_295
  %_argc294 = load i64, i64* %_295
  %_297 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_297
  %_argv296 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_297
  %_i298 = alloca i64
  store i64 99, i64* %_i298
  %_301 = load i64, i64* %_i298
  ret i64 %_301
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
