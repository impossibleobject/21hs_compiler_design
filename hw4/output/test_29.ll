; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x595 = alloca i64
  store i64 %x, i64* %_x595
  %_acc596 = alloca i64
  store i64 1, i64* %_acc596
  br label %_start602
_start602:
  %_600 = load i64, i64* %_x595
  %_598 = icmp sgt i64 %_600, 0
  br i1 %_598, label %_body603, label %_end604
_body603:
  %_609 = load i64, i64* %_acc596
  %_611 = load i64, i64* %_x595
  %_607 = mul i64 %_609, %_611
  store i64 %_607, i64* %_acc596
  %_616 = load i64, i64* %_x595
  %_614 = sub i64 %_616, 1
  store i64 %_614, i64* %_x595
  br label %_start602
_end604:
  %_619 = load i64, i64* %_acc596
  ret i64 %_619
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc584 = alloca i64
  store i64 %argc, i64* %_argc584
  %_argv585 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv585
  %_retval591 = call i8* @string_of_int(i64 %_retval590)
  %_retval590 = call i64 @fact(i64 5)
  call void @print_string(i8* %_retval591)
  ret i64 0
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
