; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i421 = alloca i64
  store i64 12, i64* %_i421
  %_id422 = load i64, i64* %_i421
  ret i64 %_id422
}

define i64 @g() {
  %_i419 = alloca i64
  store i64 10, i64* %_i419
  %_id420 = load i64, i64* %_i419
  ret i64 %_id420
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc412 = alloca i64
  store i64 %argc, i64* %_argc412
  %_argv413 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv413
  %_Call_retval416 = call i64 @f()
  %_Call_retval417 = call i64 @g()
  %_bop415 = add i64 %_Call_retval416, %_Call_retval417
  %_id418 = load i64, i64* 11
  %_bop414 = add i64 %_bop415, %_id418
  ret i64 %_bop414
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
