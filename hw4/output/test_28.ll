; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x604 = alloca i64
  store i64 %x, i64* %_x604
  %_y605 = alloca i64
  store i64 %y, i64* %_y605
  %_r606 = alloca i64
  store i64 0, i64* %_r606
  %_610 = load i64, i64* %_x604
  %_608 = icmp sge i64 %_610, 1
  br i1 %_608, label %_then612, label %_else613
_then612:
  %_620 = sub i64 %_622, 1
  %_622 = load i64, i64* %_x604
  %_625 = load i64, i64* %_y605
  %_retval626 = call i64 @f(i64 %_620, i64 %_625)
  %_617 = add i64 1, %_retval626
  store i64 %_617, i64* %_r606
  br label %_end614
_else613:
  %_631 = load i64, i64* %_x604
  %_633 = load i64, i64* %_y605
  %_629 = add i64 %_631, %_633
  store i64 %_629, i64* %_r606
  br label %_end614
_end614:
  %_635 = load i64, i64* %_r606
  ret i64 %_635
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc588 = alloca i64
  store i64 %argc, i64* %_argc588
  %_argv589 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv589
  %_x590 = alloca i64
  store i64 3, i64* %_x590
  %_y592 = alloca i64
  store i64 3, i64* %_y592
  %_597 = load i64, i64* %_x590
  %_599 = load i64, i64* %_y592
  %_retval600 = call i64 @f(i64 %_597, i64 %_599)
  %_594 = add i64 %_retval600, 0
  ret i64 %_594
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
