; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x1169 = alloca i64
  store i64 %x, i64* %_x1169
  %_y1170 = alloca i64
  store i64 %y, i64* %_y1170
  %_1173 = load i64, i64* %_x1169
  %_1175 = load i64, i64* %_y1170
  %_1171 = icmp eq i64 %_1173, %_1175
  br i1 %_1171, label %_then1176, label %_else1177
_then1176:
  %_1180 = load i64, i64* %_x1169
  ret i64 %_1180
_else1177:
  br label %_end1178
_end1178:
  %_1184 = load i64, i64* %_x1169
  %_1182 = icmp eq i64 %_1184, 0
  br i1 %_1182, label %_then1186, label %_else1187
_then1186:
  %_1190 = load i64, i64* %_y1170
  ret i64 %_1190
_else1187:
  br label %_end1188
_end1188:
  %_1194 = load i64, i64* %_y1170
  %_1192 = icmp eq i64 %_1194, 0
  br i1 %_1192, label %_then1196, label %_else1197
_then1196:
  %_1200 = load i64, i64* %_x1169
  ret i64 %_1200
_else1197:
  br label %_end1198
_end1198:
  %_1204 = xor i64 -1, %_1206
  %_1206 = load i64, i64* %_x1169
  %_1203 = and i64 %_1204, 1
  %_1202 = icmp eq i64 %_1203, 1
  br i1 %_1202, label %_then1209, label %_else1210
_then1209:
  %_1215 = load i64, i64* %_y1170
  %_1213 = and i64 %_1215, 1
  %_1212 = icmp eq i64 %_1213, 1
  br i1 %_1212, label %_then1218, label %_else1219
_then1218:
  %_1222 = lshr i64 %_1224, 1
  %_1224 = load i64, i64* %_x1169
  %_1227 = load i64, i64* %_y1170
  %_retval1228 = call i64 @binary_gcd(i64 %_1222, i64 %_1227)
  ret i64 %_retval1228
_else1219:
  %_1232 = lshr i64 %_1234, 1
  %_1234 = load i64, i64* %_x1169
  %_1236 = lshr i64 %_1238, 1
  %_1238 = load i64, i64* %_y1170
  %_retval1240 = call i64 @binary_gcd(i64 %_1232, i64 %_1236)
  %_1230 = shl i64 %_retval1240, 1
  ret i64 %_1230
_end1220:
  br label %_end1211
_else1210:
  br label %_end1211
_end1211:
  %_1245 = xor i64 -1, %_1247
  %_1247 = load i64, i64* %_y1170
  %_1244 = and i64 %_1245, 1
  %_1243 = icmp eq i64 %_1244, 1
  br i1 %_1243, label %_then1250, label %_else1251
_then1250:
  %_1255 = load i64, i64* %_x1169
  %_1256 = lshr i64 %_1258, 1
  %_1258 = load i64, i64* %_y1170
  %_retval1260 = call i64 @binary_gcd(i64 %_1255, i64 %_1256)
  ret i64 %_retval1260
_else1251:
  br label %_end1252
_end1252:
  %_1264 = load i64, i64* %_x1169
  %_1266 = load i64, i64* %_y1170
  %_1262 = icmp sgt i64 %_1264, %_1266
  br i1 %_1262, label %_then1267, label %_else1268
_then1267:
  %_1271 = lshr i64 %_1272, 1
  %_1272 = sub i64 %_1274, %_1276
  %_1276 = load i64, i64* %_y1170
  %_1274 = load i64, i64* %_x1169
  %_1279 = load i64, i64* %_y1170
  %_retval1280 = call i64 @binary_gcd(i64 %_1271, i64 %_1279)
  ret i64 %_retval1280
_else1268:
  br label %_end1269
_end1269:
  %_1283 = lshr i64 %_1284, 1
  %_1284 = sub i64 %_1286, %_1288
  %_1288 = load i64, i64* %_x1169
  %_1286 = load i64, i64* %_y1170
  %_1291 = load i64, i64* %_x1169
  %_retval1292 = call i64 @binary_gcd(i64 %_1283, i64 %_1291)
  ret i64 %_retval1292
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1156 = alloca i64
  store i64 %argc, i64* %_argc1156
  %_argv1157 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1157
  %_x1158 = alloca i64
  store i64 21, i64* %_x1158
  %_y1160 = alloca i64
  store i64 15, i64* %_y1160
  %_1164 = load i64, i64* %_x1158
  %_1166 = load i64, i64* %_y1160
  %_retval1167 = call i64 @binary_gcd(i64 %_1164, i64 %_1166)
  ret i64 %_retval1167
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
