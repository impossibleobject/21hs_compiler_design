; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a7555 = alloca i64
  store i64 %a, i64* %_a7555
  %_b7556 = alloca i64
  store i64 %b, i64* %_b7556
  %_t7564 = alloca i64
  br label %_start7561
_start7561:
  %_7559 = load i64, i64* %_b7556
  %_7557 = icmp ne i64 %_7559, 0
  br i1 %_7557, label %_body7562, label %_end7563
_body7562:
  store i64 %_7566, i64* %_t7564
  %_7566 = load i64, i64* %_b7556
  %_7571 = load i64, i64* %_a7555
  %_7573 = load i64, i64* %_b7556
  %_retval7574 = call i64 @mod(i64 %_7571, i64 %_7573)
  store i64 %_retval7574, i64* %_b7556
  %_7578 = load i64, i64* %_t7564
  store i64 %_7578, i64* %_a7555
  br label %_start7561
_end7563:
  %_7580 = load i64, i64* %_a7555
  ret i64 %_7580
}

define i64 @mod(i64 %a, i64 %b) {
  %_a7530 = alloca i64
  store i64 %a, i64* %_a7530
  %_b7531 = alloca i64
  store i64 %b, i64* %_b7531
  %_t7532 = alloca i64
  store i64 %_7534, i64* %_t7532
  %_7534 = load i64, i64* %_a7530
  br label %_start7542
_start7542:
  %_7538 = load i64, i64* %_t7532
  %_7540 = load i64, i64* %_b7531
  %_7536 = sub i64 %_7538, %_7540
  %_7535 = icmp sge i64 %_7536, 0
  br i1 %_7535, label %_body7543, label %_end7544
_body7543:
  %_7549 = load i64, i64* %_t7532
  %_7551 = load i64, i64* %_b7531
  %_7547 = sub i64 %_7549, %_7551
  store i64 %_7547, i64* %_t7532
  br label %_start7542
_end7544:
  %_7553 = load i64, i64* %_t7532
  ret i64 %_7553
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7517 = alloca i64
  store i64 %argc, i64* %_argc7517
  %_argv7518 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7518
  %_a7519 = alloca i64
  %_b7521 = alloca i64
  store i64 64, i64* %_a7519
  store i64 48, i64* %_b7521
  %_7525 = load i64, i64* %_a7519
  %_7527 = load i64, i64* %_b7521
  %_retval7528 = call i64 @gcd(i64 %_7525, i64 %_7527)
  ret i64 %_retval7528
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
