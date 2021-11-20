; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x11230 = alloca i64
  store i64 %x1, i64* %_x11230
  %_x21231 = alloca i64
  store i64 %x2, i64* %_x21231
  %_x31232 = alloca i64
  store i64 %x3, i64* %_x31232
  %_x41233 = alloca i64
  store i64 %x4, i64* %_x41233
  %_x51234 = alloca i64
  store i64 %x5, i64* %_x51234
  %_x61235 = alloca i64
  store i64 %x6, i64* %_x61235
  %_x71236 = alloca i64
  store i64 %x7, i64* %_x71236
  %_x81237 = alloca i64
  store i64 %x8, i64* %_x81237
  %_id1253 = load i64, i64* %_x11230
  %_id1255 = load i64, i64* %_x21231
  %_bop_tmp1256 = add i64 %_id1253, %_id1255
  %_bop1251 = alloca i64
  store i64 %_bop_tmp1256, i64* %_bop1251
  %_1259 = load i64, i64* %_bop1251
  %_id1258 = load i64, i64* %_x31232
  %_bop_tmp1260 = add i64 %_1259, %_id1258
  %_bop1249 = alloca i64
  store i64 %_bop_tmp1260, i64* %_bop1249
  %_1263 = load i64, i64* %_bop1249
  %_id1262 = load i64, i64* %_x41233
  %_bop_tmp1264 = add i64 %_1263, %_id1262
  %_bop1247 = alloca i64
  store i64 %_bop_tmp1264, i64* %_bop1247
  %_1267 = load i64, i64* %_bop1247
  %_id1266 = load i64, i64* %_x51234
  %_bop_tmp1268 = add i64 %_1267, %_id1266
  %_bop1245 = alloca i64
  store i64 %_bop_tmp1268, i64* %_bop1245
  %_1271 = load i64, i64* %_bop1245
  %_id1270 = load i64, i64* %_x61235
  %_bop_tmp1272 = add i64 %_1271, %_id1270
  %_bop1243 = alloca i64
  store i64 %_bop_tmp1272, i64* %_bop1243
  %_1275 = load i64, i64* %_bop1243
  %_id1274 = load i64, i64* %_x71236
  %_bop_tmp1276 = add i64 %_1275, %_id1274
  %_bop1241 = alloca i64
  store i64 %_bop_tmp1276, i64* %_bop1241
  %_1279 = load i64, i64* %_bop1241
  %_id1278 = load i64, i64* %_x81237
  %_bop_tmp1280 = add i64 %_1279, %_id1278
  %_bop1239 = alloca i64
  store i64 %_bop_tmp1280, i64* %_bop1239
  %_ret1281 = load i64, i64* %_bop1239
  ret i64 %_ret1281
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1197 = alloca i64
  store i64 %argc, i64* %_argc1197
  %_argv1198 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1198
  store i64 1, i64* %_1201
  %_1201 = alloca i64
  store i64 2, i64* %_1203
  %_1203 = alloca i64
  store i64 3, i64* %_1205
  %_1205 = alloca i64
  store i64 4, i64* %_1207
  %_1207 = alloca i64
  store i64 5, i64* %_1209
  %_1209 = alloca i64
  store i64 %_uop_tmp1215, i64* %_uop1211
  %_uop1211 = alloca i64
  %_uop_tmp1215 = sub i64 0, %_1214
  %_1214 = load i64, i64* %_1213
  store i64 5, i64* %_1213
  %_1213 = alloca i64
  store i64 %_uop_tmp1221, i64* %_uop1217
  %_uop1217 = alloca i64
  %_uop_tmp1221 = sub i64 0, %_1220
  %_1220 = load i64, i64* %_1219
  store i64 4, i64* %_1219
  %_1219 = alloca i64
  store i64 %_uop_tmp1227, i64* %_uop1223
  %_uop1223 = alloca i64
  %_uop_tmp1227 = sub i64 0, %_1226
  %_1226 = load i64, i64* %_1225
  store i64 3, i64* %_1225
  %_1225 = alloca i64
  %_retval1228 = call i64 @f(i64* %_1201, i64* %_1203, i64* %_1205, i64* %_1207, i64* %_1209, i64* %_uop1211, i64* %_uop1217, i64* %_uop1223)
  %_ret1229 = load i64, i64* %_retval1228
  ret i64 %_ret1229
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
