; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i365 = alloca i64
  store i64 12, i64* %_i365
  %_368 = load i64, i64* %_i365
  ret i64 %_368
}

define i64 @g() {
  %_i360 = alloca i64
  store i64 10, i64* %_i360
  %_363 = load i64, i64* %_i360
  ret i64 %_363
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc349 = alloca i64
  store i64 %argc, i64* %_argc349
  %_argv350 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv350
  %_retval354 = call i64 @f()
  %_retval356 = call i64 @g()
  %_352 = add i64 %_retval354, %_retval356
  %_351 = add i64 %_352, 11
  ret i64 %_351
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
