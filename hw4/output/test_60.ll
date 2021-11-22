; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1237 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1237
  %_id1238 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1237
  %_index_ptr1239 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1238, i32 0, i32 1, i32 1
  %_idx_tmp1240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1239
  %_index_ptr1241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1240, i32 0, i32 1, i32 1
  %_idx_tmp1242 = load i64, i64* %_index_ptr1241
  ret i64 %_idx_tmp1242
}

define i64 @g(i64 %x) {
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_x1202 = alloca i64
  store i64 %x, i64* %_x1202
  %_raw_array1203 = call i64* @oat_alloc_array(i64 3)
  %_array1204 = bitcast i64* %_raw_array1203 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1221 = call i64* @oat_alloc_array(i64 3)
  %_array1222 = bitcast i64* %_raw_array1221 to { i64, [0 x i64] }*
  %_id1225 = load i64, i64* %_x1202
  %_CArr_elem_21228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 2
  store i64 %_id1225, i64* %_CArr_elem_21228
  %_id1224 = load i64, i64* %_x1202
  %_CArr_elem_11227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 1
  store i64 %_id1224, i64* %_CArr_elem_11227
  %_id1223 = load i64, i64* %_x1202
  %_CArr_elem_01226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 0
  store i64 %_id1223, i64* %_CArr_elem_01226
  %_CArr_elem_21231 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1222, { i64, [0 x i64] }** %_CArr_elem_21231
  %_raw_array1213 = call i64* @oat_alloc_array(i64 3)
  %_array1214 = bitcast i64* %_raw_array1213 to { i64, [0 x i64] }*
  %_id1217 = load i64, i64* %_x1202
  %_CArr_elem_21220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 2
  store i64 %_id1217, i64* %_CArr_elem_21220
  %_id1216 = load i64, i64* %_x1202
  %_CArr_elem_11219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 1
  store i64 %_id1216, i64* %_CArr_elem_11219
  %_id1215 = load i64, i64* %_x1202
  %_CArr_elem_01218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1214, i32 0, i32 1, i32 0
  store i64 %_id1215, i64* %_CArr_elem_01218
  %_CArr_elem_11230 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1214, { i64, [0 x i64] }** %_CArr_elem_11230
  %_raw_array1205 = call i64* @oat_alloc_array(i64 3)
  %_array1206 = bitcast i64* %_raw_array1205 to { i64, [0 x i64] }*
  %_id1209 = load i64, i64* %_x1202
  %_CArr_elem_21212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 2
  store i64 %_id1209, i64* %_CArr_elem_21212
  %_id1208 = load i64, i64* %_x1202
  %_CArr_elem_11211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 1
  store i64 %_id1208, i64* %_CArr_elem_11211
  %_id1207 = load i64, i64* %_x1202
  %_CArr_elem_01210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1206, i32 0, i32 1, i32 0
  store i64 %_id1207, i64* %_CArr_elem_01210
  %_CArr_elem_01229 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1206, { i64, [0 x i64] }** %_CArr_elem_01229
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1204, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_id1232 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_index_ptr1233 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1232, i32 0, i32 1, i32 1
  %_idx_tmp1234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1233
  %_index_ptr1235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1234, i32 0, i32 1, i32 1
  %_idx_tmp1236 = load i64, i64* %_index_ptr1235
  ret i64 %_idx_tmp1236
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %arr0 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc1081 = alloca i64
  store i64 %argc, i64* %_argc1081
  %_argv1082 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1082
  %_raw_array1083 = call i64* @oat_alloc_array(i64 3)
  %_array1084 = bitcast i64* %_raw_array1083 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1095 = call i64* @oat_alloc_array(i64 3)
  %_array1096 = bitcast i64* %_raw_array1095 to { i64, [0 x i64] }*
  %_CArr_elem_21099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1096, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_21099
  %_CArr_elem_11098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1096, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_11098
  %_CArr_elem_01097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1096, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_01097
  %_CArr_elem_21102 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1084, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1096, { i64, [0 x i64] }** %_CArr_elem_21102
  %_raw_array1090 = call i64* @oat_alloc_array(i64 3)
  %_array1091 = bitcast i64* %_raw_array1090 to { i64, [0 x i64] }*
  %_CArr_elem_21094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1091, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_21094
  %_CArr_elem_11093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1091, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_11093
  %_CArr_elem_01092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1091, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_01092
  %_CArr_elem_11101 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1084, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1091, { i64, [0 x i64] }** %_CArr_elem_11101
  %_raw_array1085 = call i64* @oat_alloc_array(i64 3)
  %_array1086 = bitcast i64* %_raw_array1085 to { i64, [0 x i64] }*
  %_CArr_elem_21089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1086, i32 0, i32 1, i32 2
  store i64 2, i64* %_CArr_elem_21089
  %_CArr_elem_11088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1086, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_11088
  %_CArr_elem_01087 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1086, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_01087
  %_CArr_elem_01100 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1084, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1086, { i64, [0 x i64] }** %_CArr_elem_01100
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1084, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_raw_array1103 = call i64* @oat_alloc_array(i64 4)
  %_array1104 = bitcast i64* %_raw_array1103 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1141 = call i64* @oat_alloc_array(i64 5)
  %_array1142 = bitcast i64* %_raw_array1141 to { i64, [0 x i64] }*
  %_bop1147 = mul i64 3, 4
  %_CArr_elem_41152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 4
  store i64 %_bop1147, i64* %_CArr_elem_41152
  %_bop1146 = mul i64 3, 3
  %_CArr_elem_31151 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 3
  store i64 %_bop1146, i64* %_CArr_elem_31151
  %_bop1145 = mul i64 3, 2
  %_CArr_elem_21150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 2
  store i64 %_bop1145, i64* %_CArr_elem_21150
  %_bop1144 = mul i64 3, 1
  %_CArr_elem_11149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 1
  store i64 %_bop1144, i64* %_CArr_elem_11149
  %_bop1143 = mul i64 3, 0
  %_CArr_elem_01148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 0
  store i64 %_bop1143, i64* %_CArr_elem_01148
  %_CArr_elem_31156 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1104, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1142, { i64, [0 x i64] }** %_CArr_elem_31156
  %_raw_array1129 = call i64* @oat_alloc_array(i64 5)
  %_array1130 = bitcast i64* %_raw_array1129 to { i64, [0 x i64] }*
  %_bop1135 = mul i64 2, 4
  %_CArr_elem_41140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 4
  store i64 %_bop1135, i64* %_CArr_elem_41140
  %_bop1134 = mul i64 2, 3
  %_CArr_elem_31139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 3
  store i64 %_bop1134, i64* %_CArr_elem_31139
  %_bop1133 = mul i64 2, 2
  %_CArr_elem_21138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 2
  store i64 %_bop1133, i64* %_CArr_elem_21138
  %_bop1132 = mul i64 2, 1
  %_CArr_elem_11137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 1
  store i64 %_bop1132, i64* %_CArr_elem_11137
  %_bop1131 = mul i64 2, 0
  %_CArr_elem_01136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 0
  store i64 %_bop1131, i64* %_CArr_elem_01136
  %_CArr_elem_21155 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1104, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1130, { i64, [0 x i64] }** %_CArr_elem_21155
  %_raw_array1117 = call i64* @oat_alloc_array(i64 5)
  %_array1118 = bitcast i64* %_raw_array1117 to { i64, [0 x i64] }*
  %_bop1123 = mul i64 1, 4
  %_CArr_elem_41128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1118, i32 0, i32 1, i32 4
  store i64 %_bop1123, i64* %_CArr_elem_41128
  %_bop1122 = mul i64 1, 3
  %_CArr_elem_31127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1118, i32 0, i32 1, i32 3
  store i64 %_bop1122, i64* %_CArr_elem_31127
  %_bop1121 = mul i64 1, 2
  %_CArr_elem_21126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1118, i32 0, i32 1, i32 2
  store i64 %_bop1121, i64* %_CArr_elem_21126
  %_bop1120 = mul i64 1, 1
  %_CArr_elem_11125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1118, i32 0, i32 1, i32 1
  store i64 %_bop1120, i64* %_CArr_elem_11125
  %_bop1119 = mul i64 1, 0
  %_CArr_elem_01124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1118, i32 0, i32 1, i32 0
  store i64 %_bop1119, i64* %_CArr_elem_01124
  %_CArr_elem_11154 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1104, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1118, { i64, [0 x i64] }** %_CArr_elem_11154
  %_raw_array1105 = call i64* @oat_alloc_array(i64 5)
  %_array1106 = bitcast i64* %_raw_array1105 to { i64, [0 x i64] }*
  %_bop1111 = mul i64 0, 4
  %_CArr_elem_41116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1106, i32 0, i32 1, i32 4
  store i64 %_bop1111, i64* %_CArr_elem_41116
  %_bop1110 = mul i64 0, 3
  %_CArr_elem_31115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1106, i32 0, i32 1, i32 3
  store i64 %_bop1110, i64* %_CArr_elem_31115
  %_bop1109 = mul i64 0, 2
  %_CArr_elem_21114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1106, i32 0, i32 1, i32 2
  store i64 %_bop1109, i64* %_CArr_elem_21114
  %_bop1108 = mul i64 0, 1
  %_CArr_elem_11113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1106, i32 0, i32 1, i32 1
  store i64 %_bop1108, i64* %_CArr_elem_11113
  %_bop1107 = mul i64 0, 0
  %_CArr_elem_01112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1106, i32 0, i32 1, i32 0
  store i64 %_bop1107, i64* %_CArr_elem_01112
  %_CArr_elem_01153 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1104, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1106, { i64, [0 x i64] }** %_CArr_elem_01153
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1104, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_raw_array1157 = call i64* @oat_alloc_array(i64 3)
  %_array1158 = bitcast i64* %_raw_array1157 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1175 = call i64* @oat_alloc_array(i64 3)
  %_array1176 = bitcast i64* %_raw_array1175 to { i64, [0 x i64] }*
  %_bop1179 = mul i64 2, 2
  %_CArr_elem_21182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1176, i32 0, i32 1, i32 2
  store i64 %_bop1179, i64* %_CArr_elem_21182
  %_bop1178 = mul i64 2, 1
  %_CArr_elem_11181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1176, i32 0, i32 1, i32 1
  store i64 %_bop1178, i64* %_CArr_elem_11181
  %_bop1177 = mul i64 2, 0
  %_CArr_elem_01180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1176, i32 0, i32 1, i32 0
  store i64 %_bop1177, i64* %_CArr_elem_01180
  %_CArr_elem_21185 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1158, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1176, { i64, [0 x i64] }** %_CArr_elem_21185
  %_raw_array1167 = call i64* @oat_alloc_array(i64 3)
  %_array1168 = bitcast i64* %_raw_array1167 to { i64, [0 x i64] }*
  %_bop1171 = mul i64 1, 2
  %_CArr_elem_21174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 2
  store i64 %_bop1171, i64* %_CArr_elem_21174
  %_bop1170 = mul i64 1, 1
  %_CArr_elem_11173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 1
  store i64 %_bop1170, i64* %_CArr_elem_11173
  %_bop1169 = mul i64 1, 0
  %_CArr_elem_01172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1168, i32 0, i32 1, i32 0
  store i64 %_bop1169, i64* %_CArr_elem_01172
  %_CArr_elem_11184 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1158, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1168, { i64, [0 x i64] }** %_CArr_elem_11184
  %_raw_array1159 = call i64* @oat_alloc_array(i64 3)
  %_array1160 = bitcast i64* %_raw_array1159 to { i64, [0 x i64] }*
  %_bop1163 = mul i64 0, 2
  %_CArr_elem_21166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1160, i32 0, i32 1, i32 2
  store i64 %_bop1163, i64* %_CArr_elem_21166
  %_bop1162 = mul i64 0, 1
  %_CArr_elem_11165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1160, i32 0, i32 1, i32 1
  store i64 %_bop1162, i64* %_CArr_elem_11165
  %_bop1161 = mul i64 0, 0
  %_CArr_elem_01164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1160, i32 0, i32 1, i32 0
  store i64 %_bop1161, i64* %_CArr_elem_01164
  %_CArr_elem_01183 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1158, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1160, { i64, [0 x i64] }** %_CArr_elem_01183
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1158, { i64, [0 x { i64, [0 x i64] }*] }** %arr0
  %_id1189 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_index_ptr1190 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1189, i32 0, i32 1, i32 3
  %_idx_tmp1191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1190
  %_index_ptr1192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1191, i32 0, i32 1, i32 4
  %_idx_tmp1197 = load i64, i64* %_index_ptr1192
  %_id1193 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_index_ptr1194 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1193, i32 0, i32 1, i32 1
  %_idx_tmp1195 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1194
  %_index_ptr1196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1195, i32 0, i32 1, i32 2
  %_idx_tmp1198 = load i64, i64* %_index_ptr1196
  %_bop1188 = add i64 %_idx_tmp1197, %_idx_tmp1198
  %_id1199 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr0
  %_Call_retval1200 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_id1199)
  %_bop1187 = add i64 %_bop1188, %_Call_retval1200
  %_Call_retval1201 = call i64 @g(i64 4)
  %_bop1186 = add i64 %_bop1187, %_Call_retval1201
  ret i64 %_bop1186
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
