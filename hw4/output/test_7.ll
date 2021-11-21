; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc93 = alloca i64
  store i64 %argc, i64* %_argc93
  %_argv94 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv94
  %_bop95 = icmp ne i64 6, 5
  br i1 %_bop95, label %_then96, label %_else97
_then96:
  %_uop102 = xor i64 -1, %_bop103
  %_uop106 = sub i64 0, 6
  %_bop105 = lshr i64 5, %_uop106
  %_bop104 = shl i64 %_bop105, 9
  %_bop103 = ashr i64 %_bop104, 10
  %_bop101 = mul i64 %_uop102, 2
  %_bop100 = sub i64 %_bop101, 100
  %_bop99 = add i64 %_bop100, 6
  ret i64 %_bop99
_else97:
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
