; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc136 = alloca i64
  store i64 %argc, i64* %_argc136
  %_argv137 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv137
  %_139 = icmp eq i1 0, %_142
  store i64 1, i64* %_141
  %_142 = load i1, i1* %_141
  %_172 = load i1, i1* %_139
  %_146 = sub i64 0, %_149
  store i64 4, i64* %_148
  %_149 = load i64, i64* %_148
  %_152 = load i64, i64* %_146
  store i64 5, i64* %_151
  %_153 = load i64, i64* %_151
  %_145 = add i64 %_152, %_153
  %_156 = load i64, i64* %_145
  store i64 0, i64* %_155
  %_157 = load i64, i64* %_155
  %_144 = icmp sgt i64 %_156, %_157
  %_170 = load i1, i1* %_144
  store i64 6, i64* %_161
  %_164 = load i64, i64* %_161
  store i64 4, i64* %_163
  %_165 = load i64, i64* %_163
  %_159 = mul i64 %_164, %_165
  %_168 = load i64, i64* %_159
  store i64 25, i64* %_167
  %_169 = load i64, i64* %_167
  %_158 = icmp slt i64 %_168, %_169
  %_171 = load i1, i1* %_158
  %_143 = and i1 %_170, %_171
  %_173 = load i1, i1* %_143
  %_138 = or i1 %_172, %_173
  br i1 %_138, label %_then174, label %_else175
_then174:
  store i64 9, i64* %_178
  %_179 = load i64, i64* %_178
  ret i64 %_179
_else175:
  store i64 4, i64* %_181
  %_182 = load i64, i64* %_181
  ret i64 %_182
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
