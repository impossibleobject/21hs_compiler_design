; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1153 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1153
  %_id1154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1153
  %_index_ptr1155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1154, i32 0, i32 1, i32 1
  %_idx_tmp1156 = load i64, i64* %_index_ptr1155
  ret i64 %_idx_tmp1156
}

define i64 @g(i64 %x) {
  %_arr1135 = alloca { i64, [0 x i64] }*
  %_i1138 = alloca i64
  %_x1134 = alloca i64
  store i64 %x, i64* %_x1134
  %_raw_array1136 = call i64* @oat_alloc_array(i64 3)
  %_array1137 = bitcast i64* %_raw_array1136 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1137, { i64, [0 x i64] }** %_arr1135
  store i64 0, i64* %_i1138
  br label %_start1141
_start1141:
  %_id1140 = load i64, i64* %_i1138
  %_bop1139 = icmp slt i64 %_id1140, 3
  br i1 %_bop1139, label %_body1142, label %_end1143
_body1142:
  %_id1144 = load i64, i64* %_x1134
  %_id1145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1135
  %_id1146 = load i64, i64* %_i1138
  %_index_ptr1147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1145, i32 0, i32 1, i64 %_id1146
  store i64 %_id1144, i64* %_index_ptr1147
  %_id1149 = load i64, i64* %_i1138
  %_bop1148 = add i64 %_id1149, 1
  store i64 %_bop1148, i64* %_i1138
  br label %_start1141
_end1143:
  %_id1150 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1135
  %_index_ptr1151 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1150, i32 0, i32 1, i32 1
  %_idx_tmp1152 = load i64, i64* %_index_ptr1151
  ret i64 %_idx_tmp1152
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1074 = alloca { i64, [0 x i64] }*
  %_i1077 = alloca i64
  %_arr1089 = alloca { i64, [0 x i64] }*
  %_i1092 = alloca i64
  %_arr01106 = alloca { i64, [0 x i64] }*
  %_i1109 = alloca i64
  %_argc1072 = alloca i64
  store i64 %argc, i64* %_argc1072
  %_argv1073 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1073
  %_raw_array1075 = call i64* @oat_alloc_array(i64 3)
  %_array1076 = bitcast i64* %_raw_array1075 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1076, { i64, [0 x i64] }** %_a1074
  store i64 0, i64* %_i1077
  br label %_start1080
_start1080:
  %_id1079 = load i64, i64* %_i1077
  %_bop1078 = icmp slt i64 %_id1079, 3
  br i1 %_bop1078, label %_body1081, label %_end1082
_body1081:
  %_id1083 = load i64, i64* %_i1077
  %_id1084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1074
  %_id1085 = load i64, i64* %_i1077
  %_index_ptr1086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1084, i32 0, i32 1, i64 %_id1085
  store i64 %_id1083, i64* %_index_ptr1086
  %_id1088 = load i64, i64* %_i1077
  %_bop1087 = add i64 %_id1088, 1
  store i64 %_bop1087, i64* %_i1077
  br label %_start1080
_end1082:
  %_raw_array1090 = call i64* @oat_alloc_array(i64 4)
  %_array1091 = bitcast i64* %_raw_array1090 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1091, { i64, [0 x i64] }** %_arr1089
  store i64 0, i64* %_i1092
  br label %_start1095
_start1095:
  %_id1094 = load i64, i64* %_i1092
  %_bop1093 = icmp slt i64 %_id1094, 4
  br i1 %_bop1093, label %_body1096, label %_end1097
_body1096:
  %_id1099 = load i64, i64* %_i1092
  %_id1100 = load i64, i64* %_i1092
  %_bop1098 = mul i64 %_id1099, %_id1100
  %_id1101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1089
  %_id1102 = load i64, i64* %_i1092
  %_index_ptr1103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1101, i32 0, i32 1, i64 %_id1102
  store i64 %_bop1098, i64* %_index_ptr1103
  %_id1105 = load i64, i64* %_i1092
  %_bop1104 = add i64 %_id1105, 1
  store i64 %_bop1104, i64* %_i1092
  br label %_start1095
_end1097:
  %_raw_array1107 = call i64* @oat_alloc_array(i64 3)
  %_array1108 = bitcast i64* %_raw_array1107 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1108, { i64, [0 x i64] }** %_arr01106
  store i64 0, i64* %_i1109
  br label %_start1112
_start1112:
  %_id1111 = load i64, i64* %_i1109
  %_bop1110 = icmp slt i64 %_id1111, 3
  br i1 %_bop1110, label %_body1113, label %_end1114
_body1113:
  %_id1116 = load i64, i64* %_i1109
  %_bop1115 = mul i64 2, %_id1116
  %_id1117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01106
  %_id1118 = load i64, i64* %_i1109
  %_index_ptr1119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1117, i32 0, i32 1, i64 %_id1118
  store i64 %_bop1115, i64* %_index_ptr1119
  %_id1121 = load i64, i64* %_i1109
  %_bop1120 = add i64 %_id1121, 1
  store i64 %_bop1120, i64* %_i1109
  br label %_start1112
_end1114:
  %_id1125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1089
  %_index_ptr1126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1125, i32 0, i32 1, i32 3
  %_idx_tmp1129 = load i64, i64* %_index_ptr1126
  %_id1127 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1074
  %_index_ptr1128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1127, i32 0, i32 1, i32 1
  %_idx_tmp1130 = load i64, i64* %_index_ptr1128
  %_bop1124 = add i64 %_idx_tmp1129, %_idx_tmp1130
  %_id1131 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01106
  %_Call_retval1132 = call i64 @f({ i64, [0 x i64] }* %_id1131)
  %_bop1123 = add i64 %_bop1124, %_Call_retval1132
  %_Call_retval1133 = call i64 @g(i64 4)
  %_bop1122 = add i64 %_bop1123, %_Call_retval1133
  ret i64 %_bop1122
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
