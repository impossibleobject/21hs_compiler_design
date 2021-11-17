; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x590 = alloca i64
  store i64 %x, i64* %_x590
  %_y591 = alloca i64
  store i64 %y, i64* %_y591
  %_r592 = alloca i64
  store i64 0, i64* %_r592
  %_596 = load i64, i64* %_x590
  %_594 = icmp sge i64 %_596, 1
  br i1 %_594, label %_then598, label %_else599
_then598:
  %_606 = sub i64 %_608, 1
  %_608 = load i64, i64* %_x590
  %_611 = load i64, i64* %_y591
  %_retval612 = call i64 @f(i64 %_606, i64 %_611)
  %_603 = add i64 1, %_retval612
  store i64 %_603, i64* %_r592
  br label %_end600
_else599:
  %_617 = load i64, i64* %_x590
  %_619 = load i64, i64* %_y591
  %_615 = add i64 %_617, %_619
  store i64 %_615, i64* %_r592
  br label %_end600
_end600:
  %_621 = load i64, i64* %_r592
  ret i64 %_621
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc574 = alloca i64
  store i64 %argc, i64* %_argc574
  %_argv575 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv575
  %_x576 = alloca i64
  store i64 3, i64* %_x576
  %_y578 = alloca i64
  store i64 3, i64* %_y578
  %_583 = load i64, i64* %_x576
  %_585 = load i64, i64* %_y578
  %_retval586 = call i64 @f(i64 %_583, i64 %_585)
  %_580 = add i64 %_retval586, 0
  ret i64 %_580
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
