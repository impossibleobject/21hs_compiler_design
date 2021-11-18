; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x1148 = alloca i64
  store i64 %x, i64* %_x1148
  %_y1149 = alloca i64
  store i64 %y, i64* %_y1149
  %_1152 = load i64, i64* %_x1148
  %_1154 = load i64, i64* %_y1149
  %_1150 = icmp eq i64 %_1152, %_1154
  br i1 %_1150, label %_then1155, label %_else1156
_then1155:
  %_1159 = load i64, i64* %_x1148
  ret i64 %_1159
_else1156:
  br label %_end1157
_end1157:
  %_1163 = load i64, i64* %_x1148
  %_1161 = icmp eq i64 %_1163, 0
  br i1 %_1161, label %_then1165, label %_else1166
_then1165:
  %_1169 = load i64, i64* %_y1149
  ret i64 %_1169
_else1166:
  br label %_end1167
_end1167:
  %_1173 = load i64, i64* %_y1149
  %_1171 = icmp eq i64 %_1173, 0
  br i1 %_1171, label %_then1175, label %_else1176
_then1175:
  %_1179 = load i64, i64* %_x1148
  ret i64 %_1179
_else1176:
  br label %_end1177
_end1177:
  %_1183 = xor i64 -1, %_1185
  %_1185 = load i64, i64* %_x1148
  %_1182 = and i64 %_1183, 1
  %_1181 = icmp eq i64 %_1182, 1
  br i1 %_1181, label %_then1188, label %_else1189
_then1188:
  %_1194 = load i64, i64* %_y1149
  %_1192 = and i64 %_1194, 1
  %_1191 = icmp eq i64 %_1192, 1
  br i1 %_1191, label %_then1197, label %_else1198
_then1197:
  %_1201 = lshr i64 %_1203, 1
  %_1203 = load i64, i64* %_x1148
  %_1206 = load i64, i64* %_y1149
  %_retval1207 = call i64 @binary_gcd(i64 %_1201, i64 %_1206)
  ret i64 %_retval1207
_else1198:
  %_1211 = lshr i64 %_1213, 1
  %_1213 = load i64, i64* %_x1148
  %_1215 = lshr i64 %_1217, 1
  %_1217 = load i64, i64* %_y1149
  %_retval1219 = call i64 @binary_gcd(i64 %_1211, i64 %_1215)
  %_1209 = shl i64 %_retval1219, 1
  ret i64 %_1209
_end1199:
  br label %_end1190
_else1189:
  br label %_end1190
_end1190:
  %_1224 = xor i64 -1, %_1226
  %_1226 = load i64, i64* %_y1149
  %_1223 = and i64 %_1224, 1
  %_1222 = icmp eq i64 %_1223, 1
  br i1 %_1222, label %_then1229, label %_else1230
_then1229:
  %_1234 = load i64, i64* %_x1148
  %_1235 = lshr i64 %_1237, 1
  %_1237 = load i64, i64* %_y1149
  %_retval1239 = call i64 @binary_gcd(i64 %_1234, i64 %_1235)
  ret i64 %_retval1239
_else1230:
  br label %_end1231
_end1231:
  %_1243 = load i64, i64* %_x1148
  %_1245 = load i64, i64* %_y1149
  %_1241 = icmp sgt i64 %_1243, %_1245
  br i1 %_1241, label %_then1246, label %_else1247
_then1246:
  %_1250 = lshr i64 %_1251, 1
  %_1251 = sub i64 %_1253, %_1255
  %_1255 = load i64, i64* %_y1149
  %_1253 = load i64, i64* %_x1148
  %_1258 = load i64, i64* %_y1149
  %_retval1259 = call i64 @binary_gcd(i64 %_1250, i64 %_1258)
  ret i64 %_retval1259
_else1247:
  br label %_end1248
_end1248:
  %_1262 = lshr i64 %_1263, 1
  %_1263 = sub i64 %_1265, %_1267
  %_1267 = load i64, i64* %_x1148
  %_1265 = load i64, i64* %_y1149
  %_1270 = load i64, i64* %_x1148
  %_retval1271 = call i64 @binary_gcd(i64 %_1262, i64 %_1270)
  ret i64 %_retval1271
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1135 = alloca i64
  store i64 %argc, i64* %_argc1135
  %_argv1136 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1136
  %_x1137 = alloca i64
  store i64 21, i64* %_x1137
  %_y1139 = alloca i64
  store i64 15, i64* %_y1139
  %_1143 = load i64, i64* %_x1137
  %_1145 = load i64, i64* %_y1139
  %_retval1146 = call i64 @binary_gcd(i64 %_1143, i64 %_1145)
  ret i64 %_retval1146
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
