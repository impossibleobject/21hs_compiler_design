; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x1576 = alloca i64
  store i64 %x, i64* %_x1576
  %_y1577 = alloca i64
  store i64 %y, i64* %_y1577
  %_r1578 = alloca i64
  store i64 0, i64* %_r1578
  %_id1583 = load i64, i64* %_x1576
  %_bop1581 = icmp sge i64 %_id1583, 1
  br i1 %_bop1581, label %_then1585, label %_else1586
_then1585:
  %_bop1595 = sub i64 %_id1597, 1
  %_id1597 = load i64, i64* %_x1576
  %_id1600 = load i64, i64* %_y1577
  %_Call_retval1601 = call i64 @f(i64 %_bop1595, i64 %_id1600)
  %_bop1591 = add i64 1, %_Call_retval1601
  store i64 %_bop1591, i64* %_r1578
  br label %_end1587
_else1586:
  %_id1607 = load i64, i64* %_x1576
  %_id1609 = load i64, i64* %_y1577
  %_bop1605 = add i64 %_id1607, %_id1609
  store i64 %_bop1605, i64* %_r1578
  br label %_end1587
_end1587:
  %_id1611 = load i64, i64* %_r1578
  ret i64 %_id1611
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1559 = alloca i64
  store i64 %argc, i64* %_argc1559
  %_argv1560 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1560
  %_x1561 = alloca i64
  %_y1563 = alloca i64
  store i64 3, i64* %_x1561
  store i64 3, i64* %_y1563
  %_id1569 = load i64, i64* %_x1561
  %_id1571 = load i64, i64* %_y1563
  %_Call_retval1572 = call i64 @f(i64 %_id1569, i64 %_id1571)
  %_bop1566 = add i64 %_Call_retval1572, 0
  ret i64 %_bop1566
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
