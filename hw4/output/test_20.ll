; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i333 = alloca i64
  store i64 12, i64* %_i333
  %_336 = load i64, i64* %_i333
  ret i64 %_336
}

define i64 @g() {
  %_i328 = alloca i64
  store i64 10, i64* %_i328
  %_331 = load i64, i64* %_i328
  ret i64 %_331
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc317 = alloca i64
  store i64 %argc, i64* %_argc317
  %_argv318 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv318
  %_retval322 = call i64 @f()
  %_retval324 = call i64 @g()
  %_320 = add i64 %_retval322, %_retval324
  %_319 = add i64 %_320, 11
  ret i64 %_319
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
