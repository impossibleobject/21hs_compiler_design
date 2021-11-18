; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x641 = alloca i64
  store i64 %x, i64* %_x641
  %_y642 = alloca i64
  store i64 %y, i64* %_y642
  %_r643 = alloca i64
  store i64 0, i64* %_r643
  %_647 = load i64, i64* %_x641
  %_645 = icmp sge i64 %_647, 1
  br i1 %_645, label %_then649, label %_else650
_then649:
  %_657 = sub i64 %_659, 1
  %_659 = load i64, i64* %_x641
  %_662 = load i64, i64* %_y642
  %_retval663 = call i64 @f(i64 %_657, i64 %_662)
  %_654 = add i64 1, %_retval663
  store i64 %_654, i64* %_r643
  br label %_end651
_else650:
  %_668 = load i64, i64* %_x641
  %_670 = load i64, i64* %_y642
  %_666 = add i64 %_668, %_670
  store i64 %_666, i64* %_r643
  br label %_end651
_end651:
  %_672 = load i64, i64* %_r643
  ret i64 %_672
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc625 = alloca i64
  store i64 %argc, i64* %_argc625
  %_argv626 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv626
  %_x627 = alloca i64
  store i64 3, i64* %_x627
  %_y629 = alloca i64
  store i64 3, i64* %_y629
  %_634 = load i64, i64* %_x627
  %_636 = load i64, i64* %_y629
  %_retval637 = call i64 @f(i64 %_634, i64 %_636)
  %_631 = add i64 %_retval637, 0
  ret i64 %_631
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
