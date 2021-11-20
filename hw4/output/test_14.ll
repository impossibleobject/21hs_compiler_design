; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc657 = alloca i64
  store i64 %argc, i64* %_argc657
  %_argv658 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv658
  %_i659 = alloca i64
  %_j662 = alloca i64
  store i64 9, i64* %_661
  store i64 %_661, i64* %_i659
  %_665 = load i64, i64* %_i659
  %_667 = load i64, i64* %_i659
  %_663 = add i64 %_665, %_667
  store i64 %_663, i64* %_j662
  %_674 = load i64, i64* %_i659
  %_677 = load i64, i64* %_i659
  %_679 = load i64, i64* %_i659
  %_675 = mul i64 %_677, %_679
  %_680 = load i64, i64* %_675
  %_672 = add i64 %_674, %_680
  %_683 = load i64, i64* %_672
  %_682 = load i64, i64* %_j662
  %_671 = sub i64 %_683, %_682
  %_686 = load i64, i64* %_671
  store i64 2, i64* %_685
  %_687 = load i64, i64* %_685
  %_670 = lshr i64 %_686, %_687
  %_690 = load i64, i64* %_670
  store i64 2, i64* %_689
  %_691 = load i64, i64* %_689
  %_669 = shl i64 %_690, %_691
  %_694 = load i64, i64* %_669
  store i64 2, i64* %_693
  %_695 = load i64, i64* %_693
  %_668 = ashr i64 %_694, %_695
  %_696 = load i64, i64* %_668
  ret i64 %_696
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
