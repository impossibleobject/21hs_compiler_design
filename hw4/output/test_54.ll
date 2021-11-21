; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n6705 = alloca i64
  store i64 %n, i64* %_n6705
  %_id6709 = load i64, i64* %_n6705
  %_bop6707 = icmp eq i64 %_id6709, 0
  br i1 %_bop6707, label %_then6711, label %_else6712
_then6711:
  ret i64 0
_else6712:
  br label %_end6713
_end6713:
  %_id6719 = load i64, i64* %_n6705
  %_bop6717 = icmp eq i64 %_id6719, 1
  br i1 %_bop6717, label %_then6721, label %_else6722
_then6721:
  ret i64 1
_else6722:
  br label %_end6723
_end6723:
  %_bop6730 = sub i64 %_id6732, 1
  %_id6732 = load i64, i64* %_n6705
  %_Call_retval6734 = call i64 @fibR(i64 %_bop6730)
  %_bop6737 = sub i64 %_id6739, 2
  %_id6739 = load i64, i64* %_n6705
  %_Call_retval6741 = call i64 @fibR(i64 %_bop6737)
  %_bop6727 = add i64 %_Call_retval6734, %_Call_retval6741
  ret i64 %_bop6727
}

define i64 @fibI(i64 %n) {
  %_n6638 = alloca i64
  store i64 %n, i64* %_n6638
  %_a6639 = alloca i64
  %_b6641 = alloca i64
  %_old6676 = alloca i64
  store i64 0, i64* %_a6639
  store i64 1, i64* %_b6641
  %_id6646 = load i64, i64* %_n6638
  %_bop6644 = icmp eq i64 %_id6646, 0
  br i1 %_bop6644, label %_then6648, label %_else6649
_then6648:
  %_id6652 = load i64, i64* %_a6639
  ret i64 %_id6652
_else6649:
  br label %_end6650
_end6650:
  %_id6657 = load i64, i64* %_n6638
  %_bop6655 = icmp eq i64 %_id6657, 1
  br i1 %_bop6655, label %_then6659, label %_else6660
_then6659:
  %_id6663 = load i64, i64* %_b6641
  ret i64 %_id6663
_else6660:
  br label %_end6661
_end6661:
  br label %_start6673
_start6673:
  %_id6670 = load i64, i64* %_n6638
  %_bop6668 = sub i64 %_id6670, 2
  %_bop6666 = icmp sgt i64 %_bop6668, 0
  br i1 %_bop6666, label %_body6674, label %_end6675
_body6674:
  store i64 %_id6678, i64* %_old6676
  %_id6678 = load i64, i64* %_b6641
  %_id6684 = load i64, i64* %_b6641
  %_id6686 = load i64, i64* %_a6639
  %_bop6682 = add i64 %_id6684, %_id6686
  store i64 %_bop6682, i64* %_b6641
  %_id6690 = load i64, i64* %_old6676
  store i64 %_id6690, i64* %_a6639
  %_id6696 = load i64, i64* %_n6638
  %_bop6694 = sub i64 %_id6696, 1
  store i64 %_bop6694, i64* %_n6638
  br label %_start6673
_end6675:
  %_id6701 = load i64, i64* %_a6639
  %_id6703 = load i64, i64* %_b6641
  %_bop6699 = add i64 %_id6701, %_id6703
  ret i64 %_bop6699
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6611 = alloca i64
  store i64 %argc, i64* %_argc6611
  %_argv6612 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6612
  %_val6613 = alloca i64
  store i64 1, i64* %_val6613
  %_Call_retval6621 = call i64 @fibR(i64 12)
  %_bop6618 = icmp eq i64 %_Call_retval6621, 144
  %_Call_retval6627 = call i64 @fibI(i64 12)
  %_bop6624 = icmp eq i64 %_Call_retval6627, 144
  %_bop6616 = and i1 %_bop6618, %_bop6624
  br i1 %_bop6616, label %_then6629, label %_else6630
_then6629:
  store i64 0, i64* %_val6613
  br label %_end6631
_else6630:
  br label %_end6631
_end6631:
  %_id6636 = load i64, i64* %_val6613
  ret i64 %_id6636
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
