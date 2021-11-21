; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x1517 = alloca i64
  store i64 %x, i64* %_x1517
  %_y1518 = alloca i64
  store i64 %y, i64* %_y1518
  %_r1519 = alloca i64
  store i64 0, i64* %_r1519
  %_1523 = load i64, i64* %_x1517
  %_1521 = icmp sge i64 %_1523, 1
  br i1 %_1521, label %_then1525, label %_else1526
_then1525:
  %_1533 = sub i64 %_1535, 1
  %_1535 = load i64, i64* %_x1517
  %_1538 = load i64, i64* %_y1518
  %_retval1539 = call i64 @f(i64 %_1533, i64 %_1538)
  %_1530 = add i64 1, %_retval1539
  store i64 %_1530, i64* %_r1519
  br label %_end1527
_else1526:
  %_1544 = load i64, i64* %_x1517
  %_1546 = load i64, i64* %_y1518
  %_1542 = add i64 %_1544, %_1546
  store i64 %_1542, i64* %_r1519
  br label %_end1527
_end1527:
  %_1548 = load i64, i64* %_r1519
  ret i64 %_1548
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1501 = alloca i64
  store i64 %argc, i64* %_argc1501
  %_argv1502 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1502
  %_x1503 = alloca i64
  %_y1505 = alloca i64
  store i64 3, i64* %_x1503
  store i64 3, i64* %_y1505
  %_1510 = load i64, i64* %_x1503
  %_1512 = load i64, i64* %_y1505
  %_retval1513 = call i64 @f(i64 %_1510, i64 %_1512)
  %_1507 = add i64 %_retval1513, 0
  ret i64 %_1507
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
