; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1645 = alloca i64
  store i64 %x1, i64* %_x1645
  %_x2646 = alloca i64
  store i64 %x2, i64* %_x2646
  %_x3647 = alloca i64
  store i64 %x3, i64* %_x3647
  %_x4648 = alloca i64
  store i64 %x4, i64* %_x4648
  %_x5649 = alloca i64
  store i64 %x5, i64* %_x5649
  %_x6650 = alloca i64
  store i64 %x6, i64* %_x6650
  %_x7651 = alloca i64
  store i64 %x7, i64* %_x7651
  %_x8652 = alloca i64
  store i64 %x8, i64* %_x8652
  %_id660 = load i64, i64* %_x1645
  %_id661 = load i64, i64* %_x2646
  %_bop659 = add i64 %_id660, %_id661
  %_id662 = load i64, i64* %_x3647
  %_bop658 = add i64 %_bop659, %_id662
  %_id663 = load i64, i64* %_x4648
  %_bop657 = add i64 %_bop658, %_id663
  %_id664 = load i64, i64* %_x5649
  %_bop656 = add i64 %_bop657, %_id664
  %_id665 = load i64, i64* %_x6650
  %_bop655 = add i64 %_bop656, %_id665
  %_id666 = load i64, i64* %_x7651
  %_bop654 = add i64 %_bop655, %_id666
  %_id667 = load i64, i64* %_x8652
  %_bop653 = add i64 %_bop654, %_id667
  ret i64 %_bop653
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc638 = alloca i64
  store i64 %argc, i64* %_argc638
  %_argv639 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv639
  %_uop640 = sub i64 0, 5
  %_uop641 = sub i64 0, 4
  %_uop642 = sub i64 0, 3
  %_Call_retval643 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop640, i64 %_uop641, i64 %_uop642)
  ret i64 %_Call_retval643
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
