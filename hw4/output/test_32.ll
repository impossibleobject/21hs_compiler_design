; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i409 = alloca i64
  store i64 12, i64* %_i409
  %_id410 = load i64, i64* %_i409
  ret i64 %_id410
}

define i64 @g() {
  %_i407 = alloca i64
  store i64 10, i64* %_i407
  %_id408 = load i64, i64* %_i407
  ret i64 %_id408
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc400 = alloca i64
  store i64 %argc, i64* %_argc400
  %_argv401 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv401
  %_Call_retval404 = call i64 @f()
  %_Call_retval405 = call i64 @g()
  %_bop403 = add i64 %_Call_retval404, %_Call_retval405
  %_id406 = load i64, i64* @i
  %_bop402 = add i64 %_bop403, %_id406
  ret i64 %_bop402
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
