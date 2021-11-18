; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x588 = alloca i64
  store i64 %x, i64* %_x588
  %_acc589 = alloca i64
  store i64 1, i64* %_acc589
  br label %_start595
_start595:
  %_593 = load i64, i64* %_x588
  %_591 = icmp sgt i64 %_593, 0
  br i1 %_591, label %_body596, label %_end597
_body596:
  %_602 = load i64, i64* %_acc589
  %_604 = load i64, i64* %_x588
  %_600 = mul i64 %_602, %_604
  store i64 %_600, i64* %_acc589
  %_609 = load i64, i64* %_x588
  %_607 = sub i64 %_609, 1
  store i64 %_607, i64* %_x588
  br label %_start595
_end597:
  %_612 = load i64, i64* %_acc589
  ret i64 %_612
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc577 = alloca i64
  store i64 %argc, i64* %_argc577
  %_argv578 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv578
  %_retval584 = call i8* @string_of_int(i64 %_retval583)
  %_retval583 = call i64 @fact(i64 5)
  call void @print_string(i8* %_retval584)
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
