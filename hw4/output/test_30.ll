; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x634 = alloca i64
  store i64 %x, i64* %_x634
  %_y635 = alloca i64
  store i64 %y, i64* %_y635
  %_r636 = alloca i64
  store i64 0, i64* %_r636
  %_640 = load i64, i64* %_x634
  %_638 = icmp sge i64 %_640, 1
  br i1 %_638, label %_then642, label %_else643
_then642:
  %_650 = sub i64 %_652, 1
  %_652 = load i64, i64* %_x634
  %_655 = load i64, i64* %_y635
  %_retval656 = call i64 @f(i64 %_650, i64 %_655)
  %_647 = add i64 1, %_retval656
  store i64 %_647, i64* %_r636
  br label %_end644
_else643:
  %_661 = load i64, i64* %_x634
  %_663 = load i64, i64* %_y635
  %_659 = add i64 %_661, %_663
  store i64 %_659, i64* %_r636
  br label %_end644
_end644:
  %_665 = load i64, i64* %_r636
  ret i64 %_665
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc618 = alloca i64
  store i64 %argc, i64* %_argc618
  %_argv619 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv619
  %_x620 = alloca i64
  store i64 3, i64* %_x620
  %_y622 = alloca i64
  store i64 3, i64* %_y622
  %_627 = load i64, i64* %_x620
  %_629 = load i64, i64* %_y622
  %_retval630 = call i64 @f(i64 %_627, i64 %_629)
  %_624 = add i64 %_retval630, 0
  ret i64 %_624
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
