; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_1179 = alloca i64
  store i64 %a, i64* %_1179
  %_a1178 = load i64, i64* %_1179
  %_1181 = alloca i64
  store i64 %b, i64* %_1181
  %_b1180 = load i64, i64* %_1181
  %_t1189 = alloca i64
  store i64 %_b1180, i64* %_t1189
  br label %_start1186
_start1186:
  %_1182 = icmp ne i64 %_b1180, 0
  br i1 %_1182, label %_body1187, label %_end1188
_body1187:
  %_retval1199 = call i64 (i64, i64)* @mod(i64 %_a1178, i64 %_b1180)
  store i64 %_retval1199, i64* %_b1180
  %_1203 = load i64, i64* %_t1189
  store i64 %_1203, i64* @a
  br label %_start1186
_end1188:
  ret i64 %_a1178
}

define i64 @mod(i64 %a, i64 %b) {
  %_1152 = alloca i64
  store i64 %a, i64* %_1152
  %_a1151 = load i64, i64* %_1152
  %_1154 = alloca i64
  store i64 %b, i64* %_1154
  %_b1153 = load i64, i64* %_1154
  %_t1155 = alloca i64
  store i64 %_a1151, i64* %_t1155
  br label %_start1165
_start1165:
  %_1161 = load i64, i64* %_t1155
  %_1159 = sub i64 %_1161, %_b1153
  %_1158 = icmp sge i64 %_1159, 0
  br i1 %_1158, label %_body1166, label %_end1167
_body1166:
  %_1172 = load i64, i64* %_t1155
  %_1170 = sub i64 %_1172, %_b1153
  store i64 %_1170, i64* %_t1155
  br label %_start1165
_end1167:
  %_1176 = load i64, i64* %_t1155
  ret i64 %_1176
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_1137 = alloca i64
  store i64 %argc, i64* %_1137
  %_argc1136 = load i64, i64* %_1137
  %_1139 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_1139
  %_argv1138 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_1139
  %_a1140 = alloca i64
  store i64 64, i64* %_a1140
  %_b1142 = alloca i64
  store i64 48, i64* %_b1142
  %_1146 = load i64, i64* %_a1140
  %_1148 = load i64, i64* %_b1142
  %_retval1149 = call i64 (i64, i64)* @gcd(i64 %_1146, i64 %_1148)
  %_1150 = load i64 (i64, i64), i64 (i64, i64)* %_retval1149
  ret i64 %_1150
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
