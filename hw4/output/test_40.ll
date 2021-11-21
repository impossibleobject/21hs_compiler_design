; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1276 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1276
  %_id1277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1276
  %_index_ptr1278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1277, i32 0, i32 1, i32 1
  %_1279 = load i64, i64* %_index_ptr1278
  ret i64 %_1279
}

define i64 @g(i64 %x) {
  %_x1256 = alloca i64
  store i64 %x, i64* %_x1256
  %_arr1257 = alloca { i64, [0 x i64] }*
  %_i1260 = alloca i64
  store { i64, [0 x i64] }* %_array1259, { i64, [0 x i64] }** %_arr1257
  %_raw_array1258 = call i64* @oat_alloc_array(i64 3)
  %_array1259 = bitcast i64* %_raw_array1258 to { i64, [0 x i64] }*
  store i64 0, i64* %_i1260
  br label %_start1263
_start1263:
  %_id1262 = load i64, i64* %_i1260
  %_bop1261 = icmp slt i64 %_id1262, 3
  br i1 %_bop1261, label %_body1264, label %_end1265
_body1264:
  %_id1266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1257
  %_id1267 = load i64, i64* %_i1260
  %_index_ptr1268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1266, i32 0, i32 1, i64 %_id1267
  %_id1269 = load i64, i64* %_x1256
  store i64 %_id1269, i64* %_index_ptr1268
  %_id1272 = load i64, i64* %_i1260
  %_bop1271 = add i64 %_id1272, 1
  store i64 %_bop1271, i64* %_i1260
  br label %_start1263
_end1265:
  %_id1273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1257
  %_index_ptr1274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1273, i32 0, i32 1, i32 1
  %_1275 = load i64, i64* %_index_ptr1274
  ret i64 %_1275
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1190 = alloca i64
  store i64 %argc, i64* %_argc1190
  %_argv1191 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1191
  %_a1192 = alloca { i64, [0 x i64] }*
  %_i1195 = alloca i64
  %_arr1208 = alloca { i64, [0 x i64] }*
  %_i1211 = alloca i64
  %_arr01226 = alloca { i64, [0 x i64] }*
  %_i1229 = alloca i64
  store { i64, [0 x i64] }* %_array1194, { i64, [0 x i64] }** %_a1192
  %_raw_array1193 = call i64* @oat_alloc_array(i64 3)
  %_array1194 = bitcast i64* %_raw_array1193 to { i64, [0 x i64] }*
  store i64 0, i64* %_i1195
  br label %_start1198
_start1198:
  %_id1197 = load i64, i64* %_i1195
  %_bop1196 = icmp slt i64 %_id1197, 3
  br i1 %_bop1196, label %_body1199, label %_end1200
_body1199:
  %_id1201 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1192
  %_id1202 = load i64, i64* %_i1195
  %_index_ptr1203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1201, i32 0, i32 1, i64 %_id1202
  %_id1204 = load i64, i64* %_i1195
  store i64 %_id1204, i64* %_index_ptr1203
  %_id1207 = load i64, i64* %_i1195
  %_bop1206 = add i64 %_id1207, 1
  store i64 %_bop1206, i64* %_i1195
  br label %_start1198
_end1200:
  store { i64, [0 x i64] }* %_array1210, { i64, [0 x i64] }** %_arr1208
  %_raw_array1209 = call i64* @oat_alloc_array(i64 4)
  %_array1210 = bitcast i64* %_raw_array1209 to { i64, [0 x i64] }*
  store i64 0, i64* %_i1211
  br label %_start1214
_start1214:
  %_id1213 = load i64, i64* %_i1211
  %_bop1212 = icmp slt i64 %_id1213, 4
  br i1 %_bop1212, label %_body1215, label %_end1216
_body1215:
  %_id1217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1208
  %_id1218 = load i64, i64* %_i1211
  %_index_ptr1219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1217, i32 0, i32 1, i64 %_id1218
  %_id1221 = load i64, i64* %_i1211
  %_id1222 = load i64, i64* %_i1211
  %_bop1220 = mul i64 %_id1221, %_id1222
  store i64 %_bop1220, i64* %_index_ptr1219
  %_id1225 = load i64, i64* %_i1211
  %_bop1224 = add i64 %_id1225, 1
  store i64 %_bop1224, i64* %_i1211
  br label %_start1214
_end1216:
  store { i64, [0 x i64] }* %_array1228, { i64, [0 x i64] }** %_arr01226
  %_raw_array1227 = call i64* @oat_alloc_array(i64 3)
  %_array1228 = bitcast i64* %_raw_array1227 to { i64, [0 x i64] }*
  store i64 0, i64* %_i1229
  br label %_start1232
_start1232:
  %_id1231 = load i64, i64* %_i1229
  %_bop1230 = icmp slt i64 %_id1231, 3
  br i1 %_bop1230, label %_body1233, label %_end1234
_body1233:
  %_id1235 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01226
  %_id1236 = load i64, i64* %_i1229
  %_index_ptr1237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1235, i32 0, i32 1, i64 %_id1236
  %_id1239 = load i64, i64* %_i1229
  %_bop1238 = mul i64 2, %_id1239
  store i64 %_bop1238, i64* %_index_ptr1237
  %_id1242 = load i64, i64* %_i1229
  %_bop1241 = add i64 %_id1242, 1
  store i64 %_bop1241, i64* %_i1229
  br label %_start1232
_end1234:
  %_id1246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1208
  %_index_ptr1247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1246, i32 0, i32 1, i32 3
  %_1250 = load i64, i64* %_index_ptr1247
  %_id1248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1192
  %_index_ptr1249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1248, i32 0, i32 1, i32 1
  %_1251 = load i64, i64* %_index_ptr1249
  %_bop1245 = add i64 %_1250, %_1251
  %_id1252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01226
  %_Call_retval1253 = call i64 @f({ i64, [0 x i64] }* %_id1252)
  %_bop1244 = add i64 %_bop1245, %_Call_retval1253
  %_Call_retval1254 = call i64 @g(i64 4)
  %_bop1243 = add i64 %_bop1244, %_Call_retval1254
  ret i64 %_bop1243
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
