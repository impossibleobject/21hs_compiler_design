; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc79 = alloca i64
  store i64 %argc, i64* %_argc79
  %_argv80 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv80
  %_bop81 = icmp ne i64 6, 5
  br i1 %_bop81, label %_then82, label %_else83
_then82:
  %_uop92 = sub i64 0, 6
  %_bop91 = lshr i64 5, %_uop92
  %_bop90 = shl i64 %_bop91, 9
  %_bop89 = ashr i64 %_bop90, 10
  %_uop88 = xor i64 -1, %_bop89
  %_bop87 = mul i64 %_uop88, 2
  %_bop86 = sub i64 %_bop87, 100
  %_bop85 = add i64 %_bop86, 6
  ret i64 %_bop85
_else83:
  ret i64 2
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
