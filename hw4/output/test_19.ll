; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc686 = alloca i64
  store i64 %argc, i64* %_argc686
  %_argv687 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv687
  %_i688 = alloca i64
  %_j690 = alloca i64
  store i64 9, i64* %_i688
  store i64 %_691, i64* %_j690
  %_693 = load i64, i64* %_i688
  %_695 = load i64, i64* %_i688
  %_691 = add i64 %_693, %_695
  %_702 = load i64, i64* %_i688
  %_705 = load i64, i64* %_i688
  %_707 = load i64, i64* %_i688
  %_703 = mul i64 %_705, %_707
  %_700 = add i64 %_702, %_703
  %_709 = load i64, i64* %_j690
  %_699 = sub i64 %_700, %_709
  %_698 = lshr i64 %_699, 2
  %_697 = shl i64 %_698, 2
  %_696 = ashr i64 %_697, 2
  ret i64 %_696
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
