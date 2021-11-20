; generated from: oatprograms/globals5.oat
target triple = "x86_64-unknown-linux"
@s = global [7 x i8] c"hello!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc481 = alloca i64
  store i64 %argc, i64* %_argc481
  %_args482 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args482
  %_484 = alloca i64
  store i64 17, i64* %_484
  %_ret485 = load i64, i64* %_484
  ret i64 %_ret485
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
