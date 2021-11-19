; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n6662 = alloca i64
  store i64 %n, i64* %_n6662
  %_6665 = load i64, i64* %_n6662
  %_6663 = icmp eq i64 %_6665, 0
  br i1 %_6663, label %_then6667, label %_else6668
_then6667:
  ret i64 0
_else6668:
  br label %_end6669
_end6669:
  %_6674 = load i64, i64* %_n6662
  %_6672 = icmp eq i64 %_6674, 1
  br i1 %_6672, label %_then6676, label %_else6677
_then6676:
  ret i64 1
_else6677:
  br label %_end6678
_end6678:
  %_6683 = sub i64 %_6685, 1
  %_6685 = load i64, i64* %_n6662
  %_retval6687 = call i64 @fibR(i64 %_6683)
  %_6689 = sub i64 %_6691, 2
  %_6691 = load i64, i64* %_n6662
  %_retval6693 = call i64 @fibR(i64 %_6689)
  %_6681 = add i64 %_retval6687, %_retval6693
  ret i64 %_6681
}

define i64 @fibI(i64 %n) {
  %_n6602 = alloca i64
  store i64 %n, i64* %_n6602
  %_a6603 = alloca i64
  %_b6605 = alloca i64
  %_old6636 = alloca i64
  store i64 0, i64* %_a6603
  store i64 1, i64* %_b6605
  %_6609 = load i64, i64* %_n6602
  %_6607 = icmp eq i64 %_6609, 0
  br i1 %_6607, label %_then6611, label %_else6612
_then6611:
  %_6615 = load i64, i64* %_a6603
  ret i64 %_6615
_else6612:
  br label %_end6613
_end6613:
  %_6619 = load i64, i64* %_n6602
  %_6617 = icmp eq i64 %_6619, 1
  br i1 %_6617, label %_then6621, label %_else6622
_then6621:
  %_6625 = load i64, i64* %_b6605
  ret i64 %_6625
_else6622:
  br label %_end6623
_end6623:
  br label %_start6633
_start6633:
  %_6630 = load i64, i64* %_n6602
  %_6628 = sub i64 %_6630, 2
  %_6627 = icmp sgt i64 %_6628, 0
  br i1 %_6627, label %_body6634, label %_end6635
_body6634:
  store i64 %_6638, i64* %_old6636
  %_6638 = load i64, i64* %_b6605
  %_6643 = load i64, i64* %_b6605
  %_6645 = load i64, i64* %_a6603
  %_6641 = add i64 %_6643, %_6645
  store i64 %_6641, i64* %_b6605
  %_6649 = load i64, i64* %_old6636
  store i64 %_6649, i64* %_a6603
  %_6654 = load i64, i64* %_n6602
  %_6652 = sub i64 %_6654, 1
  store i64 %_6652, i64* %_n6602
  br label %_start6633
_end6635:
  %_6658 = load i64, i64* %_a6603
  %_6660 = load i64, i64* %_b6605
  %_6656 = add i64 %_6658, %_6660
  ret i64 %_6656
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6578 = alloca i64
  store i64 %argc, i64* %_argc6578
  %_argv6579 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6579
  %_val6580 = alloca i64
  store i64 1, i64* %_val6580
  %_retval6586 = call i64 @fibR(i64 12)
  %_6583 = icmp eq i64 %_retval6586, 144
  %_retval6591 = call i64 @fibI(i64 12)
  %_6588 = icmp eq i64 %_retval6591, 144
  %_6582 = and i1 %_6583, %_6588
  br i1 %_6582, label %_then6593, label %_else6594
_then6593:
  store i64 0, i64* %_val6580
  br label %_end6595
_else6594:
  br label %_end6595
_end6595:
  %_6600 = load i64, i64* %_val6580
  ret i64 %_6600
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
