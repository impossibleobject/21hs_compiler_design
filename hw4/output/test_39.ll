; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i599 = alloca i64
  store i64 %i, i64* %_i599
  %_id600 = load i64, i64* %_i599
  %_Call_retval601 = call i64 @f2(i64 %_id600)
  ret i64 %_Call_retval601
}

define i64 @f2(i64 %i) {
  %_i596 = alloca i64
  store i64 %i, i64* %_i596
  %_id597 = load i64, i64* %_i596
  %_Call_retval598 = call i64 @f3(i64 %_id597)
  ret i64 %_Call_retval598
}

define i64 @f3(i64 %i) {
  %_i593 = alloca i64
  store i64 %i, i64* %_i593
  %_id594 = load i64, i64* %_i593
  %_Call_retval595 = call i64 @f4(i64 %_id594)
  ret i64 %_Call_retval595
}

define i64 @f4(i64 %i) {
  %_i590 = alloca i64
  store i64 %i, i64* %_i590
  %_id591 = load i64, i64* %_i590
  %_Call_retval592 = call i64 @f5(i64 %_id591)
  ret i64 %_Call_retval592
}

define i64 @f5(i64 %i) {
  %_i587 = alloca i64
  store i64 %i, i64* %_i587
  %_id588 = load i64, i64* %_i587
  %_Call_retval589 = call i64 @f6(i64 %_id588)
  ret i64 %_Call_retval589
}

define i64 @f6(i64 %i) {
  %_i584 = alloca i64
  store i64 %i, i64* %_i584
  %_id585 = load i64, i64* %_i584
  %_Call_retval586 = call i64 @f7(i64 %_id585)
  ret i64 %_Call_retval586
}

define i64 @f7(i64 %i) {
  %_i581 = alloca i64
  store i64 %i, i64* %_i581
  %_id582 = load i64, i64* %_i581
  %_Call_retval583 = call i64 @f8(i64 %_id582)
  ret i64 %_Call_retval583
}

define i64 @f8(i64 %i) {
  %_i578 = alloca i64
  store i64 %i, i64* %_i578
  %_id579 = load i64, i64* %_i578
  %_Call_retval580 = call i64 @f9(i64 %_id579)
  ret i64 %_Call_retval580
}

define i64 @f9(i64 %i) {
  %_i576 = alloca i64
  store i64 %i, i64* %_i576
  %_id577 = load i64, i64* %_i576
  ret i64 %_id577
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc572 = alloca i64
  store i64 %argc, i64* %_argc572
  %_argv573 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv573
  %_id574 = load i64, i64* %_argc572
  %_Call_retval575 = call i64 @f1(i64 %_id574)
  ret i64 %_Call_retval575
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
