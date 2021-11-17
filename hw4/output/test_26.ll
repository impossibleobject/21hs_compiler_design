; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_633 = alloca i64
  store i64 %x, i64* %_633
  %_x632 = load i64, i64* %_633
  %_acc634 = alloca i64
  store i64 1, i64* %_acc634
  br label %_start640
_start640:
  %_636 = icmp sgt i64 %_x632, 0
  br i1 %_636, label %_body641, label %_end642
_body641:
  %_647 = load i64, i64* %_acc634
  %_645 = mul i64 %_647, %_x632
  store i64 %_645, i64* %_acc634
  %_652 = sub i64 %_x632, 1
  store i64 %_652, i64* @x
  br label %_start640
_end642:
  %_657 = load i64, i64* %_acc634
  ret i64 %_657
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_620 = alloca i64
  store i64 %argc, i64* %_620
  %_argc619 = load i64, i64* %_620
  %_622 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_622
  %_argv621 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_622
  %_retval628 = call i8* (i64)* @string_of_int(i64 (i64)* %_retval627)
  %_retval627 = call i64 (i64)* @fact(i64 5)
  %_retval629 = call void (i8*)* @print_string(i8* (i64)* %_retval628)
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
