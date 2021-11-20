; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc115 = alloca i64
  store i64 %argc, i64* %_argc115
  %_argv116 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv116
  %_x117 = alloca i64
  %_y128 = alloca i64
  %_121 = alloca i64
  store i64 100, i64* %_121
  %_124 = load i64, i64* %_121
  %_123 = alloca i64
  store i64 3, i64* %_123
  %_125 = load i64, i64* %_123
  %_bop_tmp126 = lshr i64 %_124, %_125
  %_bop119 = alloca i64
  store i64 %_bop_tmp126, i64* %_bop119
  %_decl127 = load i64, i64* %_bop119
  store i64 %_decl127, i64* %_x117
  %_132 = alloca i64
  store i64 100, i64* %_132
  %_135 = load i64, i64* %_132
  %_134 = alloca i64
  store i64 3, i64* %_134
  %_136 = load i64, i64* %_134
  %_bop_tmp137 = shl i64 %_135, %_136
  %_bop130 = alloca i64
  store i64 %_bop_tmp137, i64* %_bop130
  %_decl138 = load i64, i64* %_bop130
  store i64 %_decl138, i64* %_y128
  %_id144 = load i64, i64* %_x117
  %_id146 = load i64, i64* %_y128
  %_bop_tmp147 = sub i64 %_id144, %_id146
  %_bop142 = alloca i64
  store i64 %_bop_tmp147, i64* %_bop142
  %_150 = load i64, i64* %_bop142
  %_149 = alloca i64
  store i64 0, i64* %_149
  %_151 = load i64, i64* %_149
  %_bop_tmp152 = icmp sle i64 %_150, %_151
  %_bop140 = alloca i1
  store i1 %_bop_tmp152, i1* %_bop140
  %_ifthenelse153 = load i1, i1* %_bop140
  br i1 %_ifthenelse153, label %_then154, label %_else155
_then154:
  %_id162 = load i64, i64* %_x117
  %_uop_tmp163 = sub i64 0, %_id162
  %_uop160 = alloca i64
  store i64 %_uop_tmp163, i64* %_uop160
  %_166 = load i64, i64* %_uop160
  %_id165 = load i64, i64* %_y128
  %_bop_tmp167 = sub i64 %_166, %_id165
  %_bop158 = alloca i64
  store i64 %_bop_tmp167, i64* %_bop158
  %_ret168 = load i64, i64* %_bop158
  ret i64 %_ret168
_else155:
  %_id172 = load i64, i64* %_x117
  %_id174 = load i64, i64* %_y128
  %_bop_tmp175 = sub i64 %_id172, %_id174
  %_bop170 = alloca i64
  store i64 %_bop_tmp175, i64* %_bop170
  %_ret176 = load i64, i64* %_bop170
  ret i64 %_ret176
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
