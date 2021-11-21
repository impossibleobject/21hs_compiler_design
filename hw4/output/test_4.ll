; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc79 = alloca i64
  store i64 %argc, i64* %_argc79
  %_argv80 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv80
  %_x81 = alloca i64
  %_y86 = alloca i64
  store i64 %_bop83, i64* %_x81
  %_bop83 = lshr i64 100, 3
  store i64 %_bop88, i64* %_y86
  %_bop88 = shl i64 100, 3
  %_id96 = load i64, i64* %_x81
  %_id98 = load i64, i64* %_y86
  %_bop94 = sub i64 %_id96, %_id98
  %_bop92 = icmp sle i64 %_bop94, 0
  br i1 %_bop92, label %_then100, label %_else101
_then100:
  %_uop106 = sub i64 0, %_id108
  %_id108 = load i64, i64* %_x81
  %_id110 = load i64, i64* %_y86
  %_bop104 = sub i64 %_uop106, %_id110
  ret i64 %_bop104
_else101:
  %_id115 = load i64, i64* %_x81
  %_id117 = load i64, i64* %_y86
  %_bop113 = sub i64 %_id115, %_id117
  ret i64 %_bop113
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
