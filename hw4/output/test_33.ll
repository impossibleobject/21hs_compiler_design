; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1627 = alloca i64
  store i64 %x1, i64* %_x1627
  %_x2628 = alloca i64
  store i64 %x2, i64* %_x2628
  %_x3629 = alloca i64
  store i64 %x3, i64* %_x3629
  %_x4630 = alloca i64
  store i64 %x4, i64* %_x4630
  %_x5631 = alloca i64
  store i64 %x5, i64* %_x5631
  %_x6632 = alloca i64
  store i64 %x6, i64* %_x6632
  %_x7633 = alloca i64
  store i64 %x7, i64* %_x7633
  %_x8634 = alloca i64
  store i64 %x8, i64* %_x8634
  %_id642 = load i64*, i64** %_x1627
  %_id643 = load i64*, i64** %_x2628
  %_bop641 = add i64 %_id642, %_id643
  %_id644 = load i64*, i64** %_x3629
  %_bop640 = add i64 %_bop641, %_id644
  %_id645 = load i64*, i64** %_x4630
  %_bop639 = add i64 %_bop640, %_id645
  %_id646 = load i64*, i64** %_x5631
  %_bop638 = add i64 %_bop639, %_id646
  %_id647 = load i64*, i64** %_x6632
  %_bop637 = add i64 %_bop638, %_id647
  %_id648 = load i64*, i64** %_x7633
  %_bop636 = add i64 %_bop637, %_id648
  %_id649 = load i64*, i64** %_x8634
  %_bop635 = add i64 %_bop636, %_id649
  ret i64 %_bop635
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc621 = alloca i64
  store i64 %argc, i64* %_argc621
  %_argv622 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv622
  %_uop623 = sub i64 0, 5
  %_uop624 = sub i64 0, 4
  %_uop625 = sub i64 0, 3
  %_Call_retval626 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop623, i64 %_uop624, i64 %_uop625)
  ret i64 %_Call_retval626
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
