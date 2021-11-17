; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_334 = alloca i64
  store i64 %argc, i64* %_334
  %_argc333 = load i64, i64* %_334
  %_336 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_336
  %_argv335 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_336
  %_i337 = alloca i64
  store i64 0, i64* %_i337
  br i1 1, label %_then341, label %_else342
_then341:
  store i64 1, i64* %_i337
  br label %_end343
_else342:
  br label %_end343
_end343:
  %_348 = load i64, i64* %_i337
  ret i64 %_348
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
