; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i329 = alloca i64
  store i64 12, i64* %_i329
  %_332 = load i64, i64* %_i329
  ret i64 %_332
}

define i64 @g() {
  %_i324 = alloca i64
  store i64 10, i64* %_i324
  %_327 = load i64, i64* %_i324
  ret i64 %_327
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc313 = alloca i64
  store i64 %argc, i64* %_argc313
  %_argv314 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv314
  %_retval318 = call i64 @f()
  %_retval320 = call i64 @g()
  %_316 = add i64 %_retval318, %_retval320
  %_315 = add i64 %_316, 11
  ret i64 %_315
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
