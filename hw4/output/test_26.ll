; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i385 = alloca i64
  %_argc383 = alloca i64
  store i64 %argc, i64* %_argc383
  %_argv384 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv384
  store i64 0, i64* %_i385
  %_id386 = load i1, i1* @b
  br i1 %_id386, label %_then387, label %_else388
_then387:
  store i64 1, i64* %_i385
  br label %_end389
_else388:
  br label %_end389
_end389:
  %_id390 = load i64, i64* %_i385
  ret i64 %_id390
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
