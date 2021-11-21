; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x11150 = alloca i64
  store i64 %x1, i64* %_x11150
  %_x21151 = alloca i64
  store i64 %x2, i64* %_x21151
  %_x31152 = alloca i64
  store i64 %x3, i64* %_x31152
  %_x41153 = alloca i64
  store i64 %x4, i64* %_x41153
  %_x51154 = alloca i64
  store i64 %x5, i64* %_x51154
  %_x61155 = alloca i64
  store i64 %x6, i64* %_x61155
  %_x71156 = alloca i64
  store i64 %x7, i64* %_x71156
  %_x81157 = alloca i64
  store i64 %x8, i64* %_x81157
  %_1166 = load i64, i64* %_x11150
  %_1168 = load i64, i64* %_x21151
  %_1164 = add i64 %_1166, %_1168
  %_1170 = load i64, i64* %_x31152
  %_1163 = add i64 %_1164, %_1170
  %_1172 = load i64, i64* %_x41153
  %_1162 = add i64 %_1163, %_1172
  %_1174 = load i64, i64* %_x51154
  %_1161 = add i64 %_1162, %_1174
  %_1176 = load i64, i64* %_x61155
  %_1160 = add i64 %_1161, %_1176
  %_1178 = load i64, i64* %_x71156
  %_1159 = add i64 %_1160, %_1178
  %_1180 = load i64, i64* %_x81157
  %_1158 = add i64 %_1159, %_1180
  ret i64 %_1158
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1134 = alloca i64
  store i64 %argc, i64* %_argc1134
  %_argv1135 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1135
  %_1142 = sub i64 0, 5
  %_1144 = sub i64 0, 4
  %_1146 = sub i64 0, 3
  %_retval1148 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_1142, i64 %_1144, i64 %_1146)
  ret i64 %_retval1148
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
