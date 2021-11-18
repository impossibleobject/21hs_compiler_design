; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc314 = alloca i64
  store i64 %argc, i64* %_argc314
  %_argv315 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv315
  %_i316 = alloca i64
  store i64 0, i64* %_i316
  br i1 1, label %_then320, label %_else321
_then320:
  store i64 1, i64* %_i316
  br label %_end322
_else321:
  br label %_end322
_end322:
  %_327 = load i64, i64* %_i316
  ret i64 %_327
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
