; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i476 = alloca i64
  store i64 12, i64* %_i476
  %_id477 = load i64, i64* %_i476
  ret i64 %_id477
}

define i64 @g() {
  %_i473 = alloca i64
  store i64 10, i64* %_i473
  %_id474 = load i64, i64* %_i473
  ret i64 %_id474
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc465 = alloca i64
  store i64 %argc, i64* %_argc465
  %_argv466 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv466
  %_Call_retval469 = call i64 @f()
  %_Call_retval470 = call i64 @g()
  %_bop468 = add i64 %_Call_retval469, %_Call_retval470
  %_bop467 = add i64 %_bop468, 11
  ret i64 %_bop467
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
