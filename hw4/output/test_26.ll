; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i433 = alloca i64
  store i64 12, i64* %_i433
  %_id434 = load i64, i64* %_i433
  ret i64 %_id434
}

define i64 @g() {
  %_i430 = alloca i64
  store i64 10, i64* %_i430
  %_id431 = load i64, i64* %_i430
  ret i64 %_id431
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc422 = alloca i64
  store i64 %argc, i64* %_argc422
  %_argv423 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv423
  %_Call_retval426 = call i64 @f()
  %_Call_retval427 = call i64 @g()
  %_bop425 = add i64 %_Call_retval426, %_Call_retval427
  %_bop424 = add i64 %_bop425, 11
  ret i64 %_bop424
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
