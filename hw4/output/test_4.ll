; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_80 = alloca i64
  store i64 %argc, i64* %_80
  %_argc79 = load i64, i64* %_80
  %_82 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_82
  %_argv81 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_82
  %_x83 = alloca i64
  store i64 %_84, i64* %_x83
  %_y87 = alloca i64
  store i64 %_88, i64* %_y87
  %_84 = lshr i64 100, 3
  %_88 = shl i64 100, 3
  %_94 = load i64, i64* %_x83
  %_96 = load i64, i64* %_y87
  %_92 = sub i64 %_94, %_96
  %_91 = icmp sle i64 %_92, 0
  br i1 %_91, label %_then98, label %_else99
_then98:
  %_102 = sub i64 0, %_104
  %_104 = load i64, i64* %_x83
  %_106 = load i64, i64* %_y87
  %_101 = sub i64 %_102, %_106
  ret i64 %_101
_else99:
  %_110 = load i64, i64* %_x83
  %_112 = load i64, i64* %_y87
  %_108 = sub i64 %_110, %_112
  ret i64 %_108
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
