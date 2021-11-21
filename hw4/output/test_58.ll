; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a7654 = alloca i64
  store i64 %a, i64* %_a7654
  %_b7655 = alloca i64
  store i64 %b, i64* %_b7655
  %_t7664 = alloca i64
  br label %_start7661
_start7661:
  %_id7659 = load i64, i64* %_b7655
  %_bop7657 = icmp ne i64 %_id7659, 0
  br i1 %_bop7657, label %_body7662, label %_end7663
_body7662:
  store i64 %_id7666, i64* %_t7664
  %_id7666 = load i64, i64* %_b7655
  %_id7671 = load i64, i64* %_a7654
  %_id7673 = load i64, i64* %_b7655
  %_Call_retval7674 = call i64 @mod(i64 %_id7671, i64 %_id7673)
  store i64 %_Call_retval7674, i64* %_b7655
  %_id7678 = load i64, i64* %_t7664
  store i64 %_id7678, i64* %_a7654
  br label %_start7661
_end7663:
  %_id7680 = load i64, i64* %_a7654
  ret i64 %_id7680
}

define i64 @mod(i64 %a, i64 %b) {
  %_a7626 = alloca i64
  store i64 %a, i64* %_a7626
  %_b7627 = alloca i64
  store i64 %b, i64* %_b7627
  %_t7628 = alloca i64
  store i64 %_id7630, i64* %_t7628
  %_id7630 = load i64, i64* %_a7626
  br label %_start7640
_start7640:
  %_id7636 = load i64, i64* %_t7628
  %_id7638 = load i64, i64* %_b7627
  %_bop7634 = sub i64 %_id7636, %_id7638
  %_bop7632 = icmp sge i64 %_bop7634, 0
  br i1 %_bop7632, label %_body7641, label %_end7642
_body7641:
  %_id7648 = load i64, i64* %_t7628
  %_id7650 = load i64, i64* %_b7627
  %_bop7646 = sub i64 %_id7648, %_id7650
  store i64 %_bop7646, i64* %_t7628
  br label %_start7640
_end7642:
  %_id7652 = load i64, i64* %_t7628
  ret i64 %_id7652
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7613 = alloca i64
  store i64 %argc, i64* %_argc7613
  %_argv7614 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7614
  %_a7615 = alloca i64
  %_b7617 = alloca i64
  store i64 64, i64* %_a7615
  store i64 48, i64* %_b7617
  %_id7621 = load i64, i64* %_a7615
  %_id7623 = load i64, i64* %_b7617
  %_Call_retval7624 = call i64 @gcd(i64 %_id7621, i64 %_id7623)
  ret i64 %_Call_retval7624
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
