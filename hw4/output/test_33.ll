; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1709 = alloca i64
  store i64 %x1, i64* %_x1709
  %_x2710 = alloca i64
  store i64 %x2, i64* %_x2710
  %_x3711 = alloca i64
  store i64 %x3, i64* %_x3711
  %_x4712 = alloca i64
  store i64 %x4, i64* %_x4712
  %_x5713 = alloca i64
  store i64 %x5, i64* %_x5713
  %_x6714 = alloca i64
  store i64 %x6, i64* %_x6714
  %_x7715 = alloca i64
  store i64 %x7, i64* %_x7715
  %_x8716 = alloca i64
  store i64 %x8, i64* %_x8716
  %_id724 = load i64, i64* %_x1709
  %_id725 = load i64, i64* %_x2710
  %_bop723 = add i64 %_id724, %_id725
  %_id726 = load i64, i64* %_x3711
  %_bop722 = add i64 %_bop723, %_id726
  %_id727 = load i64, i64* %_x4712
  %_bop721 = add i64 %_bop722, %_id727
  %_id728 = load i64, i64* %_x5713
  %_bop720 = add i64 %_bop721, %_id728
  %_id729 = load i64, i64* %_x6714
  %_bop719 = add i64 %_bop720, %_id729
  %_id730 = load i64, i64* %_x7715
  %_bop718 = add i64 %_bop719, %_id730
  %_id731 = load i64, i64* %_x8716
  %_bop717 = add i64 %_bop718, %_id731
  ret i64 %_bop717
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc702 = alloca i64
  store i64 %argc, i64* %_argc702
  %_argv703 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv703
  %_uop704 = sub i64 0, 5
  %_uop705 = sub i64 0, 4
  %_uop706 = sub i64 0, 3
  %_Call_retval707 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop704, i64 %_uop705, i64 %_uop706)
  ret i64 %_Call_retval707
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
