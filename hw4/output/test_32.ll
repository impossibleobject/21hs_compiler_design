; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %i = alloca i64
  store i64 12, i64* %i
  %_id378 = load i64, i64* %i
  ret i64 %_id378
}

define i64 @g() {
  %i = alloca i64
  store i64 10, i64* %i
  %_id377 = load i64, i64* %i
  ret i64 %_id377
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc370 = alloca i64
  store i64 %argc, i64* %_argc370
  %_argv371 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv371
  %_Call_retval374 = call i64 @f()
  %_Call_retval375 = call i64 @g()
  %_bop373 = add i64 %_Call_retval374, %_Call_retval375
  %_id376 = load i64, i64* @i
  %_bop372 = add i64 %_bop373, %_id376
  ret i64 %_bop372
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
