; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a7537 = alloca i64
  store i64 %a, i64* %_a7537
  %_b7538 = alloca i64
  store i64 %b, i64* %_b7538
  %_t7546 = alloca i64
  br label %_start7543
_start7543:
  %_7541 = load i64, i64* %_b7538
  %_7539 = icmp ne i64 %_7541, 0
  br i1 %_7539, label %_body7544, label %_end7545
_body7544:
  store i64 %_7548, i64* %_t7546
  %_7548 = load i64, i64* %_b7538
  %_7553 = load i64, i64* %_a7537
  %_7555 = load i64, i64* %_b7538
  %_retval7556 = call i64 @mod(i64 %_7553, i64 %_7555)
  store i64 %_retval7556, i64* %_b7538
  %_7560 = load i64, i64* %_t7546
  store i64 %_7560, i64* %_a7537
  br label %_start7543
_end7545:
  %_7562 = load i64, i64* %_a7537
  ret i64 %_7562
}

define i64 @mod(i64 %a, i64 %b) {
  %_a7512 = alloca i64
  store i64 %a, i64* %_a7512
  %_b7513 = alloca i64
  store i64 %b, i64* %_b7513
  %_t7514 = alloca i64
  store i64 %_7516, i64* %_t7514
  %_7516 = load i64, i64* %_a7512
  br label %_start7524
_start7524:
  %_7520 = load i64, i64* %_t7514
  %_7522 = load i64, i64* %_b7513
  %_7518 = sub i64 %_7520, %_7522
  %_7517 = icmp sge i64 %_7518, 0
  br i1 %_7517, label %_body7525, label %_end7526
_body7525:
  %_7531 = load i64, i64* %_t7514
  %_7533 = load i64, i64* %_b7513
  %_7529 = sub i64 %_7531, %_7533
  store i64 %_7529, i64* %_t7514
  br label %_start7524
_end7526:
  %_7535 = load i64, i64* %_t7514
  ret i64 %_7535
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7499 = alloca i64
  store i64 %argc, i64* %_argc7499
  %_argv7500 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7500
  %_a7501 = alloca i64
  %_b7503 = alloca i64
  store i64 64, i64* %_a7501
  store i64 48, i64* %_b7503
  %_7507 = load i64, i64* %_a7501
  %_7509 = load i64, i64* %_b7503
  %_retval7510 = call i64 @gcd(i64 %_7507, i64 %_7509)
  ret i64 %_retval7510
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
