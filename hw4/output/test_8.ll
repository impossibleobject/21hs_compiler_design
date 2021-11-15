; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc97 = alloca i64
  store i64 %argc, i64* %_argc97
  %_argv98 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv98
  %_i99 = alloca i64
  store i64 9, i64* %_i99
  %_j101 = alloca i64
  store i64 %_102, i64* %_j101
  %_102 = add i64 %_104, %_106
  %_106 = load i64, i64* %_i99
  %_104 = load i64, i64* %_i99
  %_107 = ashr i64 %_108, 2
  %_108 = shl i64 %_109, 2
  %_109 = lshr i64 %_110, 2
  %_110 = sub i64 %_111, %_120
  %_120 = load i64, i64* %_j101
  %_111 = add i64 %_113, %_114
  %_114 = mul i64 %_116, %_118
  %_118 = load i64, i64* %_i99
  %_116 = load i64, i64* %_i99
  %_113 = load i64, i64* %_i99
  ret i64 %_107
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
