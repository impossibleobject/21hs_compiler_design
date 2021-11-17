; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a1185 = alloca i64
  store i64 %a, i64* %_a1185
  %_b1186 = alloca i64
  store i64 %b, i64* %_b1186
  %_t1194 = alloca i64
  store i64 %_1196, i64* %_t1194
  br label %_start1191
_start1191:
  %_1189 = load i64, i64* %_b1186
  %_1187 = icmp ne i64 %_1189, 0
  br i1 %_1187, label %_body1192, label %_end1193
_body1192:
  %_1196 = load i64, i64* %_b1186
  %_1201 = load i64, i64* %_a1185
  %_1203 = load i64, i64* %_b1186
  %_retval1204 = call i64 @mod(i64 %_1201, i64 %_1203)
  store i64 %_retval1204, i64* %_b1186
  %_1208 = load i64, i64* %_t1194
  store i64 %_1208, i64* %_a1185
  br label %_start1191
_end1193:
  %_1210 = load i64, i64* %_a1185
  ret i64 %_1210
}

define i64 @mod(i64 %a, i64 %b) {
  %_a1160 = alloca i64
  store i64 %a, i64* %_a1160
  %_b1161 = alloca i64
  store i64 %b, i64* %_b1161
  %_t1162 = alloca i64
  store i64 %_1164, i64* %_t1162
  %_1164 = load i64, i64* %_a1160
  br label %_start1172
_start1172:
  %_1168 = load i64, i64* %_t1162
  %_1170 = load i64, i64* %_b1161
  %_1166 = sub i64 %_1168, %_1170
  %_1165 = icmp sge i64 %_1166, 0
  br i1 %_1165, label %_body1173, label %_end1174
_body1173:
  %_1179 = load i64, i64* %_t1162
  %_1181 = load i64, i64* %_b1161
  %_1177 = sub i64 %_1179, %_1181
  store i64 %_1177, i64* %_t1162
  br label %_start1172
_end1174:
  %_1183 = load i64, i64* %_t1162
  ret i64 %_1183
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1147 = alloca i64
  store i64 %argc, i64* %_argc1147
  %_argv1148 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1148
  %_a1149 = alloca i64
  store i64 64, i64* %_a1149
  %_b1151 = alloca i64
  store i64 48, i64* %_b1151
  %_1155 = load i64, i64* %_a1149
  %_1157 = load i64, i64* %_b1151
  %_retval1158 = call i64 @gcd(i64 %_1155, i64 %_1157)
  ret i64 %_retval1158
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
