; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1571 = alloca i64
  store i64 %x1, i64* %_x1571
  %_x2572 = alloca i64
  store i64 %x2, i64* %_x2572
  %_x3573 = alloca i64
  store i64 %x3, i64* %_x3573
  %_x4574 = alloca i64
  store i64 %x4, i64* %_x4574
  %_x5575 = alloca i64
  store i64 %x5, i64* %_x5575
  %_x6576 = alloca i64
  store i64 %x6, i64* %_x6576
  %_x7577 = alloca i64
  store i64 %x7, i64* %_x7577
  %_x8578 = alloca i64
  store i64 %x8, i64* %_x8578
  %_id586 = load i64, i64* %_x1571
  %_id587 = load i64, i64* %_x2572
  %_bop585 = add i64 %_id586, %_id587
  %_id588 = load i64, i64* %_x3573
  %_bop584 = add i64 %_bop585, %_id588
  %_id589 = load i64, i64* %_x4574
  %_bop583 = add i64 %_bop584, %_id589
  %_id590 = load i64, i64* %_x5575
  %_bop582 = add i64 %_bop583, %_id590
  %_id591 = load i64, i64* %_x6576
  %_bop581 = add i64 %_bop582, %_id591
  %_id592 = load i64, i64* %_x7577
  %_bop580 = add i64 %_bop581, %_id592
  %_id593 = load i64, i64* %_x8578
  %_bop579 = add i64 %_bop580, %_id593
  ret i64 %_bop579
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc565 = alloca i64
  store i64 %argc, i64* %_argc565
  %_argv566 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv566
  %_uop567 = sub i64 0, 5
  %_uop568 = sub i64 0, 4
  %_uop569 = sub i64 0, 3
  %_Call_retval570 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop567, i64 %_uop568, i64 %_uop569)
  ret i64 %_Call_retval570
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
