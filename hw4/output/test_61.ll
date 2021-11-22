; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca i64
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %b = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1243 = alloca i64
  store i64 %argc, i64* %_argc1243
  %_argv1244 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1244
  store i64 10, i64* %x
  %_raw_array1245 = call i64* @oat_alloc_array(i64 3)
  %_array1246 = bitcast i64* %_raw_array1245 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1275 = call i64* @oat_alloc_array(i64 3)
  %_array1276 = bitcast i64* %_raw_array1275 to { i64, [0 x i64] }*
  %_id1285 = load i64, i64* %x
  %_bop1284 = add i64 %_id1285, 2
  %_bop1283 = add i64 %_bop1284, 2
  %_CArr_elem_21288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1276, i32 0, i32 1, i32 2
  store i64 %_bop1283, i64* %_CArr_elem_21288
  %_id1282 = load i64, i64* %x
  %_bop1281 = add i64 %_id1282, 2
  %_bop1280 = add i64 %_bop1281, 1
  %_CArr_elem_11287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1276, i32 0, i32 1, i32 1
  store i64 %_bop1280, i64* %_CArr_elem_11287
  %_id1279 = load i64, i64* %x
  %_bop1278 = add i64 %_id1279, 2
  %_bop1277 = add i64 %_bop1278, 0
  %_CArr_elem_01286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1276, i32 0, i32 1, i32 0
  store i64 %_bop1277, i64* %_CArr_elem_01286
  %_CArr_elem_21291 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1246, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1276, { i64, [0 x i64] }** %_CArr_elem_21291
  %_raw_array1261 = call i64* @oat_alloc_array(i64 3)
  %_array1262 = bitcast i64* %_raw_array1261 to { i64, [0 x i64] }*
  %_id1271 = load i64, i64* %x
  %_bop1270 = add i64 %_id1271, 1
  %_bop1269 = add i64 %_bop1270, 2
  %_CArr_elem_21274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 2
  store i64 %_bop1269, i64* %_CArr_elem_21274
  %_id1268 = load i64, i64* %x
  %_bop1267 = add i64 %_id1268, 1
  %_bop1266 = add i64 %_bop1267, 1
  %_CArr_elem_11273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 1
  store i64 %_bop1266, i64* %_CArr_elem_11273
  %_id1265 = load i64, i64* %x
  %_bop1264 = add i64 %_id1265, 1
  %_bop1263 = add i64 %_bop1264, 0
  %_CArr_elem_01272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 0
  store i64 %_bop1263, i64* %_CArr_elem_01272
  %_CArr_elem_11290 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1246, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1262, { i64, [0 x i64] }** %_CArr_elem_11290
  %_raw_array1247 = call i64* @oat_alloc_array(i64 3)
  %_array1248 = bitcast i64* %_raw_array1247 to { i64, [0 x i64] }*
  %_id1257 = load i64, i64* %x
  %_bop1256 = add i64 %_id1257, 0
  %_bop1255 = add i64 %_bop1256, 2
  %_CArr_elem_21260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1248, i32 0, i32 1, i32 2
  store i64 %_bop1255, i64* %_CArr_elem_21260
  %_id1254 = load i64, i64* %x
  %_bop1253 = add i64 %_id1254, 0
  %_bop1252 = add i64 %_bop1253, 1
  %_CArr_elem_11259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1248, i32 0, i32 1, i32 1
  store i64 %_bop1252, i64* %_CArr_elem_11259
  %_id1251 = load i64, i64* %x
  %_bop1250 = add i64 %_id1251, 0
  %_bop1249 = add i64 %_bop1250, 0
  %_CArr_elem_01258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1248, i32 0, i32 1, i32 0
  store i64 %_bop1249, i64* %_CArr_elem_01258
  %_CArr_elem_01289 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1246, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1248, { i64, [0 x i64] }** %_CArr_elem_01289
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1246, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_id1292 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  store { i64, [0 x { i64, [0 x i64] }*] }* %_id1292, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_id1293 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %b
  %_index_ptr1294 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1293, i32 0, i32 1, i32 2
  %_idx_tmp1295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1294
  %_index_ptr1296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1295, i32 0, i32 1, i32 1
  %_idx_tmp1297 = load i64, i64* %_index_ptr1296
  ret i64 %_idx_tmp1297
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
