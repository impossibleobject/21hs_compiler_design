; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i358 = alloca i64
  store i64 12, i64* %_i358
  %_361 = load i64, i64* %_i358
  ret i64 %_361
}

define i64 @g() {
  %_i353 = alloca i64
  store i64 10, i64* %_i353
  %_356 = load i64, i64* %_i353
  ret i64 %_356
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc342 = alloca i64
  store i64 %argc, i64* %_argc342
  %_argv343 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv343
  %_retval347 = call i64 @f()
  %_retval349 = call i64 @g()
  %_345 = add i64 %_retval347, %_retval349
  %_344 = add i64 %_345, 11
  ret i64 %_344
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
