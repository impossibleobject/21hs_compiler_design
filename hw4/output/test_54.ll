; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n6634 = alloca i64
  store i64 %n, i64* %_n6634
  %_6637 = load i64, i64* %_n6634
  %_6635 = icmp eq i64 %_6637, 0
  br i1 %_6635, label %_then6639, label %_else6640
_then6639:
  ret i64 0
_else6640:
  br label %_end6641
_end6641:
  %_6646 = load i64, i64* %_n6634
  %_6644 = icmp eq i64 %_6646, 1
  br i1 %_6644, label %_then6648, label %_else6649
_then6648:
  ret i64 1
_else6649:
  br label %_end6650
_end6650:
  %_6655 = sub i64 %_6657, 1
  %_6657 = load i64, i64* %_n6634
  %_retval6659 = call i64 @fibR(i64 %_6655)
  %_6661 = sub i64 %_6663, 2
  %_6663 = load i64, i64* %_n6634
  %_retval6665 = call i64 @fibR(i64 %_6661)
  %_6653 = add i64 %_retval6659, %_retval6665
  ret i64 %_6653
}

define i64 @fibI(i64 %n) {
  %_n6574 = alloca i64
  store i64 %n, i64* %_n6574
  %_a6575 = alloca i64
  %_b6577 = alloca i64
  %_old6608 = alloca i64
  store i64 0, i64* %_a6575
  store i64 1, i64* %_b6577
  %_6581 = load i64, i64* %_n6574
  %_6579 = icmp eq i64 %_6581, 0
  br i1 %_6579, label %_then6583, label %_else6584
_then6583:
  %_6587 = load i64, i64* %_a6575
  ret i64 %_6587
_else6584:
  br label %_end6585
_end6585:
  %_6591 = load i64, i64* %_n6574
  %_6589 = icmp eq i64 %_6591, 1
  br i1 %_6589, label %_then6593, label %_else6594
_then6593:
  %_6597 = load i64, i64* %_b6577
  ret i64 %_6597
_else6594:
  br label %_end6595
_end6595:
  br label %_start6605
_start6605:
  %_6602 = load i64, i64* %_n6574
  %_6600 = sub i64 %_6602, 2
  %_6599 = icmp sgt i64 %_6600, 0
  br i1 %_6599, label %_body6606, label %_end6607
_body6606:
  store i64 %_6610, i64* %_old6608
  %_6610 = load i64, i64* %_b6577
  %_6615 = load i64, i64* %_b6577
  %_6617 = load i64, i64* %_a6575
  %_6613 = add i64 %_6615, %_6617
  store i64 %_6613, i64* %_b6577
  %_6621 = load i64, i64* %_old6608
  store i64 %_6621, i64* %_a6575
  %_6626 = load i64, i64* %_n6574
  %_6624 = sub i64 %_6626, 1
  store i64 %_6624, i64* %_n6574
  br label %_start6605
_end6607:
  %_6630 = load i64, i64* %_a6575
  %_6632 = load i64, i64* %_b6577
  %_6628 = add i64 %_6630, %_6632
  ret i64 %_6628
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6550 = alloca i64
  store i64 %argc, i64* %_argc6550
  %_argv6551 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6551
  %_val6552 = alloca i64
  store i64 1, i64* %_val6552
  %_retval6558 = call i64 @fibR(i64 12)
  %_6555 = icmp eq i64 %_retval6558, 144
  %_retval6563 = call i64 @fibI(i64 12)
  %_6560 = icmp eq i64 %_retval6563, 144
  %_6554 = and i1 %_6555, %_6560
  br i1 %_6554, label %_then6565, label %_else6566
_then6565:
  store i64 0, i64* %_val6552
  br label %_end6567
_else6566:
  br label %_end6567
_end6567:
  %_6572 = load i64, i64* %_val6552
  ret i64 %_6572
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
