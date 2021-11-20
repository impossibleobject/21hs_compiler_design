; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc91 = alloca i64
  store i64 %argc, i64* %_argc91
  %_argv92 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv92
  %_x93 = alloca i64
  %_y101 = alloca i64
  store i64 100, i64* %_96
  %_99 = load i64, i64* %_96
  store i64 3, i64* %_98
  %_100 = load i64, i64* %_98
  %_94 = lshr i64 %_99, %_100
  store i64 %_94, i64* %_x93
  store i64 100, i64* %_104
  %_107 = load i64, i64* %_104
  store i64 3, i64* %_106
  %_108 = load i64, i64* %_106
  %_102 = shl i64 %_107, %_108
  store i64 %_102, i64* %_y101
  %_112 = load i64, i64* %_x93
  %_114 = load i64, i64* %_y101
  %_110 = sub i64 %_112, %_114
  %_117 = load i64, i64* %_110
  store i64 0, i64* %_116
  %_118 = load i64, i64* %_116
  %_109 = icmp sle i64 %_117, %_118
  br i1 %_109, label %_then119, label %_else120
_then119:
  %_123 = sub i64 0, %_125
  %_125 = load i64, i64* %_x93
  %_128 = load i64, i64* %_123
  %_127 = load i64, i64* %_y101
  %_122 = sub i64 %_128, %_127
  %_129 = load i64, i64* %_122
  ret i64 %_129
_else120:
  %_132 = load i64, i64* %_x93
  %_134 = load i64, i64* %_y101
  %_130 = sub i64 %_132, %_134
  %_135 = load i64, i64* %_130
  ret i64 %_135
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
