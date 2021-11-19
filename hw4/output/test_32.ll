; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x1519 = alloca i64
  store i64 %x, i64* %_x1519
  %_y1520 = alloca i64
  store i64 %y, i64* %_y1520
  %_r1521 = alloca i64
  store i64 0, i64* %_r1521
  %_1525 = load i64, i64* %_x1519
  %_1523 = icmp sge i64 %_1525, 1
  br i1 %_1523, label %_then1527, label %_else1528
_then1527:
  %_1535 = sub i64 %_1537, 1
  %_1537 = load i64, i64* %_x1519
  %_1540 = load i64, i64* %_y1520
  %_retval1541 = call i64 @f(i64 %_1535, i64 %_1540)
  %_1532 = add i64 1, %_retval1541
  store i64 %_1532, i64* %_r1521
  br label %_end1529
_else1528:
  %_1546 = load i64, i64* %_x1519
  %_1548 = load i64, i64* %_y1520
  %_1544 = add i64 %_1546, %_1548
  store i64 %_1544, i64* %_r1521
  br label %_end1529
_end1529:
  %_1550 = load i64, i64* %_r1521
  ret i64 %_1550
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1503 = alloca i64
  store i64 %argc, i64* %_argc1503
  %_argv1504 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1504
  %_x1505 = alloca i64
  %_y1507 = alloca i64
  store i64 3, i64* %_x1505
  store i64 3, i64* %_y1507
  %_1512 = load i64, i64* %_x1505
  %_1514 = load i64, i64* %_y1507
  %_retval1515 = call i64 @f(i64 %_1512, i64 %_1514)
  %_1509 = add i64 %_retval1515, 0
  ret i64 %_1509
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
