; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc691 = alloca i64
  store i64 %argc, i64* %_argc691
  %_argv692 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv692
  %_i693 = alloca i64
  %_j695 = alloca i64
  store i64 9, i64* %_i693
  store i64 %_696, i64* %_j695
  %_698 = load i64, i64* %_i693
  %_700 = load i64, i64* %_i693
  %_696 = add i64 %_698, %_700
  %_707 = load i64, i64* %_i693
  %_710 = load i64, i64* %_i693
  %_712 = load i64, i64* %_i693
  %_708 = mul i64 %_710, %_712
  %_705 = add i64 %_707, %_708
  %_714 = load i64, i64* %_j695
  %_704 = sub i64 %_705, %_714
  %_703 = lshr i64 %_704, 2
  %_702 = shl i64 %_703, 2
  %_701 = ashr i64 %_702, 2
  ret i64 %_701
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
