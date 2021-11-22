; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1614 = alloca i64
  store i64 %x1, i64* %_x1614
  %_x2615 = alloca i64
  store i64 %x2, i64* %_x2615
  %_x3616 = alloca i64
  store i64 %x3, i64* %_x3616
  %_x4617 = alloca i64
  store i64 %x4, i64* %_x4617
  %_x5618 = alloca i64
  store i64 %x5, i64* %_x5618
  %_x6619 = alloca i64
  store i64 %x6, i64* %_x6619
  %_x7620 = alloca i64
  store i64 %x7, i64* %_x7620
  %_x8621 = alloca i64
  store i64 %x8, i64* %_x8621
  %_id629 = load i64, i64* %_x1614
  %_id630 = load i64, i64* %_x2615
  %_bop628 = add i64 %_id629, %_id630
  %_id631 = load i64, i64* %_x3616
  %_bop627 = add i64 %_bop628, %_id631
  %_id632 = load i64, i64* %_x4617
  %_bop626 = add i64 %_bop627, %_id632
  %_id633 = load i64, i64* %_x5618
  %_bop625 = add i64 %_bop626, %_id633
  %_id634 = load i64, i64* %_x6619
  %_bop624 = add i64 %_bop625, %_id634
  %_id635 = load i64, i64* %_x7620
  %_bop623 = add i64 %_bop624, %_id635
  %_id636 = load i64, i64* %_x8621
  %_bop622 = add i64 %_bop623, %_id636
  ret i64 %_bop622
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc608 = alloca i64
  store i64 %argc, i64* %_argc608
  %_argv609 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv609
  %_uop610 = sub i64 0, 5
  %_uop611 = sub i64 0, 4
  %_uop612 = sub i64 0, 3
  %_Call_retval613 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop610, i64 %_uop611, i64 %_uop612)
  ret i64 %_Call_retval613
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
