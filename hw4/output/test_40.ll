; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1164 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1164
  %_id1165 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_a1164
  %_index_ptr1166 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id1165, i32 0, i32 0, i32 1, i32 1
  %_idx_tmp1167 = load i64, i64* %_index_ptr1166
  ret i64 %_idx_tmp1167
}

define i64 @g(i64 %x) {
  %_x1145 = alloca i64
  store i64 %x, i64* %_x1145
  %_arr1146 = alloca { i64, [0 x i64] }*
  %_i1149 = alloca i64
  %_raw_array1147 = call i64* @oat_alloc_array(i64 3)
  %_array1148 = bitcast i64* %_raw_array1147 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1148, { i64, [0 x i64] }** %_arr1146
  store i64 0, i64* %_i1149
  br label %_start1152
_start1152:
  %_id1151 = load i64, i64* %_i1149
  %_bop1150 = icmp slt i64 %_id1151, 3
  br i1 %_bop1150, label %_body1153, label %_end1154
_body1153:
  %_id1155 = load i64*, i64** %_x1145
  %_id1156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1146
  %_id1157 = load i64, i64* %_i1149
  %_index_ptr1158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1156, i32 0, i32 1, i64 %_id1157
  store i64* %_id1155, i64** %_index_ptr1158
  %_id1160 = load i64, i64* %_i1149
  %_bop1159 = add i64 %_id1160, 1
  store i64 %_bop1159, i64* %_i1149
  br label %_start1152
_end1154:
  %_id1161 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1146
  %_index_ptr1162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1161, i32 0, i32 1, i32 1
  %_idx_tmp1163 = load i64, i64* %_index_ptr1162
  ret i64 %_idx_tmp1163
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1083 = alloca i64
  store i64 %argc, i64* %_argc1083
  %_argv1084 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1084
  %_a1085 = alloca { i64, [0 x i64] }*
  %_i1088 = alloca i64
  %_arr1100 = alloca { i64, [0 x i64] }*
  %_i1103 = alloca i64
  %_arr01117 = alloca { i64, [0 x i64] }*
  %_i1120 = alloca i64
  %_raw_array1086 = call i64* @oat_alloc_array(i64 3)
  %_array1087 = bitcast i64* %_raw_array1086 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1087, { i64, [0 x i64] }** %_a1085
  store i64 0, i64* %_i1088
  br label %_start1091
_start1091:
  %_id1090 = load i64, i64* %_i1088
  %_bop1089 = icmp slt i64 %_id1090, 3
  br i1 %_bop1089, label %_body1092, label %_end1093
_body1092:
  %_id1094 = load i64, i64* %_i1088
  %_id1095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1085
  %_id1096 = load i64, i64* %_i1088
  %_index_ptr1097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1095, i32 0, i32 1, i64 %_id1096
  store i64 %_id1094, i64* %_index_ptr1097
  %_id1099 = load i64, i64* %_i1088
  %_bop1098 = add i64 %_id1099, 1
  store i64 %_bop1098, i64* %_i1088
  br label %_start1091
_end1093:
  %_raw_array1101 = call i64* @oat_alloc_array(i64 4)
  %_array1102 = bitcast i64* %_raw_array1101 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1102, { i64, [0 x i64] }** %_arr1100
  store i64 0, i64* %_i1103
  br label %_start1106
_start1106:
  %_id1105 = load i64, i64* %_i1103
  %_bop1104 = icmp slt i64 %_id1105, 4
  br i1 %_bop1104, label %_body1107, label %_end1108
_body1107:
  %_id1110 = load i64, i64* %_i1103
  %_id1111 = load i64, i64* %_i1103
  %_bop1109 = mul i64 %_id1110, %_id1111
  %_id1112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1100
  %_id1113 = load i64, i64* %_i1103
  %_index_ptr1114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1112, i32 0, i32 1, i64 %_id1113
  store i64 %_bop1109, i64* %_index_ptr1114
  %_id1116 = load i64, i64* %_i1103
  %_bop1115 = add i64 %_id1116, 1
  store i64 %_bop1115, i64* %_i1103
  br label %_start1106
_end1108:
  %_raw_array1118 = call i64* @oat_alloc_array(i64 3)
  %_array1119 = bitcast i64* %_raw_array1118 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1119, { i64, [0 x i64] }** %_arr01117
  store i64 0, i64* %_i1120
  br label %_start1123
_start1123:
  %_id1122 = load i64, i64* %_i1120
  %_bop1121 = icmp slt i64 %_id1122, 3
  br i1 %_bop1121, label %_body1124, label %_end1125
_body1124:
  %_id1127 = load i64, i64* %_i1120
  %_bop1126 = mul i64 2, %_id1127
  %_id1128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01117
  %_id1129 = load i64, i64* %_i1120
  %_index_ptr1130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1128, i32 0, i32 1, i64 %_id1129
  store i64 %_bop1126, i64* %_index_ptr1130
  %_id1132 = load i64, i64* %_i1120
  %_bop1131 = add i64 %_id1132, 1
  store i64 %_bop1131, i64* %_i1120
  br label %_start1123
_end1125:
  %_id1136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1100
  %_index_ptr1137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1136, i32 0, i32 1, i32 3
  %_idx_tmp1140 = load i64, i64* %_index_ptr1137
  %_id1138 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1085
  %_index_ptr1139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1138, i32 0, i32 1, i32 1
  %_idx_tmp1141 = load i64, i64* %_index_ptr1139
  %_bop1135 = add i64 %_idx_tmp1140, %_idx_tmp1141
  %_id1142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01117
  %_Call_retval1143 = call i64 @f({ i64, [0 x i64] }* %_id1142)
  %_bop1134 = add i64 %_bop1135, %_Call_retval1143
  %_Call_retval1144 = call i64 @g(i64 4)
  %_bop1133 = add i64 %_bop1134, %_Call_retval1144
  ret i64 %_bop1133
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
