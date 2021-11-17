; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x544 = alloca i64
  store i64 %x, i64* %_x544
  %_acc545 = alloca i64
  store i64 1, i64* %_acc545
  br label %_start551
_start551:
  %_549 = load i64, i64* %_x544
  %_547 = icmp sgt i64 %_549, 0
  br i1 %_547, label %_body552, label %_end553
_body552:
  %_558 = load i64, i64* %_acc545
  %_560 = load i64, i64* %_x544
  %_556 = mul i64 %_558, %_560
  store i64 %_556, i64* %_acc545
  %_565 = load i64, i64* %_x544
  %_563 = sub i64 %_565, 1
  store i64 %_563, i64* %_x544
  br label %_start551
_end553:
  %_568 = load i64, i64* %_acc545
  ret i64 %_568
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc533 = alloca i64
  store i64 %argc, i64* %_argc533
  %_argv534 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv534
  %_retval540 = call i8* @string_of_int(i64 %_retval539)
  %_retval539 = call i64 @fact(i64 5)
  call void @print_string(i8* %_retval540)
  ret i64 0
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
