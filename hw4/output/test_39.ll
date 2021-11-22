; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i556 = alloca i64
  store i64 %i, i64* %_i556
  %_id557 = load i64, i64* %_i556
  %_Call_retval558 = call i64 @f2(i64 %_id557)
  ret i64 %_Call_retval558
}

define i64 @f2(i64 %i) {
  %_i553 = alloca i64
  store i64 %i, i64* %_i553
  %_id554 = load i64, i64* %_i553
  %_Call_retval555 = call i64 @f3(i64 %_id554)
  ret i64 %_Call_retval555
}

define i64 @f3(i64 %i) {
  %_i550 = alloca i64
  store i64 %i, i64* %_i550
  %_id551 = load i64, i64* %_i550
  %_Call_retval552 = call i64 @f4(i64 %_id551)
  ret i64 %_Call_retval552
}

define i64 @f4(i64 %i) {
  %_i547 = alloca i64
  store i64 %i, i64* %_i547
  %_id548 = load i64, i64* %_i547
  %_Call_retval549 = call i64 @f5(i64 %_id548)
  ret i64 %_Call_retval549
}

define i64 @f5(i64 %i) {
  %_i544 = alloca i64
  store i64 %i, i64* %_i544
  %_id545 = load i64, i64* %_i544
  %_Call_retval546 = call i64 @f6(i64 %_id545)
  ret i64 %_Call_retval546
}

define i64 @f6(i64 %i) {
  %_i541 = alloca i64
  store i64 %i, i64* %_i541
  %_id542 = load i64, i64* %_i541
  %_Call_retval543 = call i64 @f7(i64 %_id542)
  ret i64 %_Call_retval543
}

define i64 @f7(i64 %i) {
  %_i538 = alloca i64
  store i64 %i, i64* %_i538
  %_id539 = load i64, i64* %_i538
  %_Call_retval540 = call i64 @f8(i64 %_id539)
  ret i64 %_Call_retval540
}

define i64 @f8(i64 %i) {
  %_i535 = alloca i64
  store i64 %i, i64* %_i535
  %_id536 = load i64, i64* %_i535
  %_Call_retval537 = call i64 @f9(i64 %_id536)
  ret i64 %_Call_retval537
}

define i64 @f9(i64 %i) {
  %_i533 = alloca i64
  store i64 %i, i64* %_i533
  %_id534 = load i64, i64* %_i533
  ret i64 %_id534
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc529 = alloca i64
  store i64 %argc, i64* %_argc529
  %_argv530 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv530
  %_id531 = load i64, i64* %_argc529
  %_Call_retval532 = call i64 @f1(i64 %_id531)
  ret i64 %_Call_retval532
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
