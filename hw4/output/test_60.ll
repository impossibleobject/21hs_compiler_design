; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1317 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1317
  %_id1318 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1317
  %_index_ptr1319 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1318, i32 0, i32 1, i32 1
  %_idx_tmp1320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1319
  %_index_ptr1321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1320, i32 0, i32 1, i32 1
  %_idx_tmp1322 = load i64, i64* %_index_ptr1321
  ret i64 %_idx_tmp1322
}

define i64 @g(i64 %x) {
  %_arr1282 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1281 = alloca i64
  store i64 %x, i64* %_x1281
  %_raw_array1283 = call i64* @oat_alloc_array(i64 3)
  %_array1284 = bitcast i64* %_raw_array1283 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1301 = call i64* @oat_alloc_array(i64 3)
  %_array1302 = bitcast i64* %_raw_array1301 to { i64, [0 x i64] }*
  %_id1305 = load i64, i64* %_x1281
  %_CArr_elem_21308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1302, i32 0, i32 1, i32 2
  store i64 %_id1305, i64* %_CArr_elem_21308
  %_id1304 = load i64, i64* %_x1281
  %_CArr_elem_11307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1302, i32 0, i32 1, i32 1
  store i64 %_id1304, i64* %_CArr_elem_11307
  %_id1303 = load i64, i64* %_x1281
  %_CArr_elem_01306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1302, i32 0, i32 1, i32 0
  store i64 %_id1303, i64* %_CArr_elem_01306
  %_CArr_elem_21311 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1284, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1302, { i64, [0 x i64] }** %_CArr_elem_21311
  %_raw_array1293 = call i64* @oat_alloc_array(i64 3)
  %_array1294 = bitcast i64* %_raw_array1293 to { i64, [0 x i64] }*
  %_id1297 = load i64, i64* %_x1281
  %_CArr_elem_21300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1294, i32 0, i32 1, i32 2
  store i64 %_id1297, i64* %_CArr_elem_21300
  %_id1296 = load i64, i64* %_x1281
  %_CArr_elem_11299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1294, i32 0, i32 1, i32 1
  store i64 %_id1296, i64* %_CArr_elem_11299
  %_id1295 = load i64, i64* %_x1281
  %_CArr_elem_01298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1294, i32 0, i32 1, i32 0
  store i64 %_id1295, i64* %_CArr_elem_01298
  %_CArr_elem_11310 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1284, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1294, { i64, [0 x i64] }** %_CArr_elem_11310
  %_raw_array1285 = call i64* @oat_alloc_array(i64 3)
  %_array1286 = bitcast i64* %_raw_array1285 to { i64, [0 x i64] }*
  %_id1289 = load i64, i64* %_x1281
  %_CArr_elem_21292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1286, i32 0, i32 1, i32 2
  store i64 %_id1289, i64* %_CArr_elem_21292
  %_id1288 = load i64, i64* %_x1281
  %_CArr_elem_11291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1286, i32 0, i32 1, i32 1
  store i64 %_id1288, i64* %_CArr_elem_11291
  %_id1287 = load i64, i64* %_x1281
  %_CArr_elem_01290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1286, i32 0, i32 1, i32 0
  store i64 %_id1287, i64* %_CArr_elem_01290
  %_CArr_elem_01309 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1284, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1286, { i64, [0 x i64] }** %_CArr_elem_01309
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1284, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1282
  %_id1312 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1282
  %_index_ptr1313 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1312, i32 0, i32 1, i32 1
  %_idx_tmp1314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1313
  %_index_ptr1315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1314, i32 0, i32 1, i32 1
  %_idx_tmp1316 = load i64, i64* %_index_ptr1315
  ret i64 %_idx_tmp1316
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1159 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1180 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01235 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1157 = alloca i64
  store i64 %argc, i64* %_argc1157
  %_argv1158 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1158
  %_raw_array1160 = call i64* @oat_alloc_array(i64 3)
  %_array1161 = bitcast i64* %_raw_array1160 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1172 = call i64* @oat_alloc_array(i64 3)
  %_array1173 = bitcast i64* %_raw_array1172 to { i64, [0 x i64] }*
  %_CArr_elem_21176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1173, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_21176
  %_CArr_elem_11175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1173, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_11175
  %_CArr_elem_01174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1173, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_01174
  %_CArr_elem_21179 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1161, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1173, { i64, [0 x i64] }** %_CArr_elem_21179
  %_raw_array1167 = call i64* @oat_alloc_array(i64 3)
  %_array1168 = bitcast i64* %_raw_array1167 to { i64, [0 x i64] }*
  %_CArr_elem_21171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_21171
  %_CArr_elem_11170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_11170
  %_CArr_elem_01169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_01169
  %_CArr_elem_11178 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1161, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1168, { i64, [0 x i64] }** %_CArr_elem_11178
  %_raw_array1162 = call i64* @oat_alloc_array(i64 3)
  %_array1163 = bitcast i64* %_raw_array1162 to { i64, [0 x i64] }*
  %_CArr_elem_21166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1163, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_21166
  %_CArr_elem_11165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1163, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_11165
  %_CArr_elem_01164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1163, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_01164
  %_CArr_elem_01177 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1161, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1163, { i64, [0 x i64] }** %_CArr_elem_01177
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1161, { i64, [0 x { i64, [0 x i64] }*] }** %_a1159
  %_raw_array1181 = call i64* @oat_alloc_array(i64 4)
  %_array1182 = bitcast i64* %_raw_array1181 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1219 = call i64* @oat_alloc_array(i64 5)
  %_array1220 = bitcast i64* %_raw_array1219 to { i64, [0 x i64] }*
  %_bop1225 = mul i64 3, 4
  %_CArr_elem_41230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1220, i32 0, i32 1, i32 4
  store i64 %_bop1225, i64* %_CArr_elem_41230
  %_bop1224 = mul i64 3, 3
  %_CArr_elem_31229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1220, i32 0, i32 1, i32 3
  store i64 %_bop1224, i64* %_CArr_elem_31229
  %_bop1223 = mul i64 3, 2
  %_CArr_elem_21228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1220, i32 0, i32 1, i32 2
  store i64 %_bop1223, i64* %_CArr_elem_21228
  %_bop1222 = mul i64 3, 1
  %_CArr_elem_11227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1220, i32 0, i32 1, i32 1
  store i64 %_bop1222, i64* %_CArr_elem_11227
  %_bop1221 = mul i64 3, 0
  %_CArr_elem_01226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1220, i32 0, i32 1, i32 0
  store i64 %_bop1221, i64* %_CArr_elem_01226
  %_CArr_elem_31234 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1182, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1220, { i64, [0 x i64] }** %_CArr_elem_31234
  %_raw_array1207 = call i64* @oat_alloc_array(i64 5)
  %_array1208 = bitcast i64* %_raw_array1207 to { i64, [0 x i64] }*
  %_bop1213 = mul i64 2, 4
  %_CArr_elem_41218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1208, i32 0, i32 1, i32 4
  store i64 %_bop1213, i64* %_CArr_elem_41218
  %_bop1212 = mul i64 2, 3
  %_CArr_elem_31217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1208, i32 0, i32 1, i32 3
  store i64 %_bop1212, i64* %_CArr_elem_31217
  %_bop1211 = mul i64 2, 2
  %_CArr_elem_21216 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1208, i32 0, i32 1, i32 2
  store i64 %_bop1211, i64* %_CArr_elem_21216
  %_bop1210 = mul i64 2, 1
  %_CArr_elem_11215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1208, i32 0, i32 1, i32 1
  store i64 %_bop1210, i64* %_CArr_elem_11215
  %_bop1209 = mul i64 2, 0
  %_CArr_elem_01214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1208, i32 0, i32 1, i32 0
  store i64 %_bop1209, i64* %_CArr_elem_01214
  %_CArr_elem_21233 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1182, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1208, { i64, [0 x i64] }** %_CArr_elem_21233
  %_raw_array1195 = call i64* @oat_alloc_array(i64 5)
  %_array1196 = bitcast i64* %_raw_array1195 to { i64, [0 x i64] }*
  %_bop1201 = mul i64 1, 4
  %_CArr_elem_41206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 4
  store i64 %_bop1201, i64* %_CArr_elem_41206
  %_bop1200 = mul i64 1, 3
  %_CArr_elem_31205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 3
  store i64 %_bop1200, i64* %_CArr_elem_31205
  %_bop1199 = mul i64 1, 2
  %_CArr_elem_21204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 2
  store i64 %_bop1199, i64* %_CArr_elem_21204
  %_bop1198 = mul i64 1, 1
  %_CArr_elem_11203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 1
  store i64 %_bop1198, i64* %_CArr_elem_11203
  %_bop1197 = mul i64 1, 0
  %_CArr_elem_01202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1196, i32 0, i32 1, i32 0
  store i64 %_bop1197, i64* %_CArr_elem_01202
  %_CArr_elem_11232 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1182, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1196, { i64, [0 x i64] }** %_CArr_elem_11232
  %_raw_array1183 = call i64* @oat_alloc_array(i64 5)
  %_array1184 = bitcast i64* %_raw_array1183 to { i64, [0 x i64] }*
  %_bop1189 = mul i64 0, 4
  %_CArr_elem_41194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1184, i32 0, i32 1, i32 4
  store i64 %_bop1189, i64* %_CArr_elem_41194
  %_bop1188 = mul i64 0, 3
  %_CArr_elem_31193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1184, i32 0, i32 1, i32 3
  store i64 %_bop1188, i64* %_CArr_elem_31193
  %_bop1187 = mul i64 0, 2
  %_CArr_elem_21192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1184, i32 0, i32 1, i32 2
  store i64 %_bop1187, i64* %_CArr_elem_21192
  %_bop1186 = mul i64 0, 1
  %_CArr_elem_11191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1184, i32 0, i32 1, i32 1
  store i64 %_bop1186, i64* %_CArr_elem_11191
  %_bop1185 = mul i64 0, 0
  %_CArr_elem_01190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1184, i32 0, i32 1, i32 0
  store i64 %_bop1185, i64* %_CArr_elem_01190
  %_CArr_elem_01231 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1182, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1184, { i64, [0 x i64] }** %_CArr_elem_01231
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1182, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1180
  %_raw_array1236 = call i64* @oat_alloc_array(i64 3)
  %_array1237 = bitcast i64* %_raw_array1236 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1254 = call i64* @oat_alloc_array(i64 3)
  %_array1255 = bitcast i64* %_raw_array1254 to { i64, [0 x i64] }*
  %_bop1258 = mul i64 2, 2
  %_CArr_elem_21261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1255, i32 0, i32 1, i32 2
  store i64 %_bop1258, i64* %_CArr_elem_21261
  %_bop1257 = mul i64 2, 1
  %_CArr_elem_11260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1255, i32 0, i32 1, i32 1
  store i64 %_bop1257, i64* %_CArr_elem_11260
  %_bop1256 = mul i64 2, 0
  %_CArr_elem_01259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1255, i32 0, i32 1, i32 0
  store i64 %_bop1256, i64* %_CArr_elem_01259
  %_CArr_elem_21264 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1237, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1255, { i64, [0 x i64] }** %_CArr_elem_21264
  %_raw_array1246 = call i64* @oat_alloc_array(i64 3)
  %_array1247 = bitcast i64* %_raw_array1246 to { i64, [0 x i64] }*
  %_bop1250 = mul i64 1, 2
  %_CArr_elem_21253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1247, i32 0, i32 1, i32 2
  store i64 %_bop1250, i64* %_CArr_elem_21253
  %_bop1249 = mul i64 1, 1
  %_CArr_elem_11252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1247, i32 0, i32 1, i32 1
  store i64 %_bop1249, i64* %_CArr_elem_11252
  %_bop1248 = mul i64 1, 0
  %_CArr_elem_01251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1247, i32 0, i32 1, i32 0
  store i64 %_bop1248, i64* %_CArr_elem_01251
  %_CArr_elem_11263 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1237, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1247, { i64, [0 x i64] }** %_CArr_elem_11263
  %_raw_array1238 = call i64* @oat_alloc_array(i64 3)
  %_array1239 = bitcast i64* %_raw_array1238 to { i64, [0 x i64] }*
  %_bop1242 = mul i64 0, 2
  %_CArr_elem_21245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1239, i32 0, i32 1, i32 2
  store i64 %_bop1242, i64* %_CArr_elem_21245
  %_bop1241 = mul i64 0, 1
  %_CArr_elem_11244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1239, i32 0, i32 1, i32 1
  store i64 %_bop1241, i64* %_CArr_elem_11244
  %_bop1240 = mul i64 0, 0
  %_CArr_elem_01243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1239, i32 0, i32 1, i32 0
  store i64 %_bop1240, i64* %_CArr_elem_01243
  %_CArr_elem_01262 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1237, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1239, { i64, [0 x i64] }** %_CArr_elem_01262
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1237, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01235
  %_id1268 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1180
  %_index_ptr1269 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1268, i32 0, i32 1, i32 3
  %_idx_tmp1270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1269
  %_index_ptr1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1270, i32 0, i32 1, i32 4
  %_idx_tmp1276 = load i64, i64* %_index_ptr1271
  %_id1272 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1159
  %_index_ptr1273 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1272, i32 0, i32 1, i32 1
  %_idx_tmp1274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1273
  %_index_ptr1275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1274, i32 0, i32 1, i32 2
  %_idx_tmp1277 = load i64, i64* %_index_ptr1275
  %_bop1267 = add i64 %_idx_tmp1276, %_idx_tmp1277
  %_id1278 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01235
  %_Call_retval1279 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id1278)
  %_bop1266 = add i64 %_bop1267, %_Call_retval1279
  %_Call_retval1280 = call i64 @g(i64 4)
  %_bop1265 = add i64 %_bop1266, %_Call_retval1280
  ret i64 %_bop1265
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
