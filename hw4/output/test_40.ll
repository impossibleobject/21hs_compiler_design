; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1151 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1151
  %_id1152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1151
  %_index_ptr1153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1152, i32 0, i32 1, i32 1
  %_idx_tmp1154 = load i64, i64* %_index_ptr1153
  ret i64 %_idx_tmp1154
}

define i64 @g(i64 %x) {
  %_arr1133 = alloca { i64, [0 x i64] }*
  %_i1136 = alloca i64
  %_x1132 = alloca i64
  store i64 %x, i64* %_x1132
  %_raw_array1134 = call i64* @oat_alloc_array(i64 3)
  %_array1135 = bitcast i64* %_raw_array1134 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1135, { i64, [0 x i64] }** %_arr1133
  store i64 0, i64* %_i1136
  br label %_start1139
_start1139:
  %_id1138 = load i64, i64* %_i1136
  %_bop1137 = icmp slt i64 %_id1138, 3
  br i1 %_bop1137, label %_body1140, label %_end1141
_body1140:
  %_id1142 = load i64, i64* %_x1132
  %_id1143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1133
  %_id1144 = load i64, i64* %_i1136
  %_index_ptr1145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1143, i32 0, i32 1, i64 %_id1144
  store i64 %_id1142, i64* %_index_ptr1145
  %_id1147 = load i64, i64* %_i1136
  %_bop1146 = add i64 %_id1147, 1
  store i64 %_bop1146, i64* %_i1136
  br label %_start1139
_end1141:
  %_id1148 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1133
  %_index_ptr1149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1148, i32 0, i32 1, i32 1
  %_idx_tmp1150 = load i64, i64* %_index_ptr1149
  ret i64 %_idx_tmp1150
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1072 = alloca { i64, [0 x i64] }*
  %_i1075 = alloca i64
  %_arr1087 = alloca { i64, [0 x i64] }*
  %_i1090 = alloca i64
  %_arr01104 = alloca { i64, [0 x i64] }*
  %_i1107 = alloca i64
  %_argc1070 = alloca i64
  store i64 %argc, i64* %_argc1070
  %_argv1071 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1071
  %_raw_array1073 = call i64* @oat_alloc_array(i64 3)
  %_array1074 = bitcast i64* %_raw_array1073 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1074, { i64, [0 x i64] }** %_a1072
  store i64 0, i64* %_i1075
  br label %_start1078
_start1078:
  %_id1077 = load i64, i64* %_i1075
  %_bop1076 = icmp slt i64 %_id1077, 3
  br i1 %_bop1076, label %_body1079, label %_end1080
_body1079:
  %_id1081 = load i64, i64* %_i1075
  %_id1082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1072
  %_id1083 = load i64, i64* %_i1075
  %_index_ptr1084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1082, i32 0, i32 1, i64 %_id1083
  store i64 %_id1081, i64* %_index_ptr1084
  %_id1086 = load i64, i64* %_i1075
  %_bop1085 = add i64 %_id1086, 1
  store i64 %_bop1085, i64* %_i1075
  br label %_start1078
_end1080:
  %_raw_array1088 = call i64* @oat_alloc_array(i64 4)
  %_array1089 = bitcast i64* %_raw_array1088 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1089, { i64, [0 x i64] }** %_arr1087
  store i64 0, i64* %_i1090
  br label %_start1093
_start1093:
  %_id1092 = load i64, i64* %_i1090
  %_bop1091 = icmp slt i64 %_id1092, 4
  br i1 %_bop1091, label %_body1094, label %_end1095
_body1094:
  %_id1097 = load i64, i64* %_i1090
  %_id1098 = load i64, i64* %_i1090
  %_bop1096 = mul i64 %_id1097, %_id1098
  %_id1099 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1087
  %_id1100 = load i64, i64* %_i1090
  %_index_ptr1101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1099, i32 0, i32 1, i64 %_id1100
  store i64 %_bop1096, i64* %_index_ptr1101
  %_id1103 = load i64, i64* %_i1090
  %_bop1102 = add i64 %_id1103, 1
  store i64 %_bop1102, i64* %_i1090
  br label %_start1093
_end1095:
  %_raw_array1105 = call i64* @oat_alloc_array(i64 3)
  %_array1106 = bitcast i64* %_raw_array1105 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1106, { i64, [0 x i64] }** %_arr01104
  store i64 0, i64* %_i1107
  br label %_start1110
_start1110:
  %_id1109 = load i64, i64* %_i1107
  %_bop1108 = icmp slt i64 %_id1109, 3
  br i1 %_bop1108, label %_body1111, label %_end1112
_body1111:
  %_id1114 = load i64, i64* %_i1107
  %_bop1113 = mul i64 2, %_id1114
  %_id1115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01104
  %_id1116 = load i64, i64* %_i1107
  %_index_ptr1117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1115, i32 0, i32 1, i64 %_id1116
  store i64 %_bop1113, i64* %_index_ptr1117
  %_id1119 = load i64, i64* %_i1107
  %_bop1118 = add i64 %_id1119, 1
  store i64 %_bop1118, i64* %_i1107
  br label %_start1110
_end1112:
  %_id1123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1087
  %_index_ptr1124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1123, i32 0, i32 1, i32 3
  %_idx_tmp1127 = load i64, i64* %_index_ptr1124
  %_id1125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1072
  %_index_ptr1126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1125, i32 0, i32 1, i32 1
  %_idx_tmp1128 = load i64, i64* %_index_ptr1126
  %_bop1122 = add i64 %_idx_tmp1127, %_idx_tmp1128
  %_id1129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01104
  %_Call_retval1130 = call i64 @f({ i64, [0 x i64] }* %_id1129)
  %_bop1121 = add i64 %_bop1122, %_Call_retval1130
  %_Call_retval1131 = call i64 @g(i64 4)
  %_bop1120 = add i64 %_bop1121, %_Call_retval1131
  ret i64 %_bop1120
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
