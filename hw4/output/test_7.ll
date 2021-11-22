; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc73 = alloca i64
  store i64 %argc, i64* %_argc73
  %_argv74 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv74
  %_bop75 = icmp ne i64 6, 5
  br i1 %_bop75, label %_then76, label %_else77
_then76:
  %_uop86 = sub i64 0, 6
  %_bop85 = lshr i64 5, %_uop86
  %_bop84 = shl i64 %_bop85, 9
  %_bop83 = ashr i64 %_bop84, 10
  %_uop82 = xor i64 %_bop83, -1
  %_bop81 = mul i64 %_uop82, 2
  %_bop80 = sub i64 %_bop81, 100
  %_bop79 = add i64 %_bop80, 6
  ret i64 %_bop79
_else77:
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
