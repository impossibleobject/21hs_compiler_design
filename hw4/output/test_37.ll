; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1143 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1143
  %_id1144 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1143
  %_index_ptr1145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1144, i32 0, i32 1, i32 1
  %_1146 = load i64, i64* %_index_ptr1145
  ret i64 %_1146
}

define i64 @g(i64 %x) {
  %_x1123 = alloca i64
  store i64 %x, i64* %_x1123
  %_arr1124 = alloca { i64, [0 x i64] }*
  %_i1127 = alloca i64
  %_raw_array1125 = call i64* @oat_alloc_array(i64 3)
  %_array1126 = bitcast i64* %_raw_array1125 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1126, { i64, [0 x i64] }** %_arr1124
  store i64 0, i64* %_i1127
  br label %_start1130
_start1130:
  %_id1129 = load i64, i64* %_i1127
  %_bop1128 = icmp slt i64 %_id1129, 3
  br i1 %_bop1128, label %_body1131, label %_end1132
_body1131:
  %_id1133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1124
  %_id1134 = load i64, i64* %_i1127
  %_index_ptr1135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1133, i32 0, i32 1, i64 %_id1134
  %_id1136 = load i64, i64* %_x1123
  store i64 %_id1136, i64* %_index_ptr1135
  %_id1139 = load i64, i64* %_i1127
  %_bop1138 = add i64 %_id1139, 1
  store i64 %_bop1138, i64* %_i1127
  br label %_start1130
_end1132:
  %_id1140 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1124
  %_index_ptr1141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1140, i32 0, i32 1, i32 1
  %_1142 = load i64, i64* %_index_ptr1141
  ret i64 %_1142
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1057 = alloca i64
  store i64 %argc, i64* %_argc1057
  %_argv1058 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1058
  %_a1059 = alloca { i64, [0 x i64] }*
  %_i1062 = alloca i64
  %_arr1075 = alloca { i64, [0 x i64] }*
  %_i1078 = alloca i64
  %_arr01093 = alloca { i64, [0 x i64] }*
  %_i1096 = alloca i64
  %_raw_array1060 = call i64* @oat_alloc_array(i64 3)
  %_array1061 = bitcast i64* %_raw_array1060 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1061, { i64, [0 x i64] }** %_a1059
  store i64 0, i64* %_i1062
  br label %_start1065
_start1065:
  %_id1064 = load i64, i64* %_i1062
  %_bop1063 = icmp slt i64 %_id1064, 3
  br i1 %_bop1063, label %_body1066, label %_end1067
_body1066:
  %_id1068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1059
  %_id1069 = load i64, i64* %_i1062
  %_index_ptr1070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1068, i32 0, i32 1, i64 %_id1069
  %_id1071 = load i64, i64* %_i1062
  store i64 %_id1071, i64* %_index_ptr1070
  %_id1074 = load i64, i64* %_i1062
  %_bop1073 = add i64 %_id1074, 1
  store i64 %_bop1073, i64* %_i1062
  br label %_start1065
_end1067:
  %_raw_array1076 = call i64* @oat_alloc_array(i64 4)
  %_array1077 = bitcast i64* %_raw_array1076 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1077, { i64, [0 x i64] }** %_arr1075
  store i64 0, i64* %_i1078
  br label %_start1081
_start1081:
  %_id1080 = load i64, i64* %_i1078
  %_bop1079 = icmp slt i64 %_id1080, 4
  br i1 %_bop1079, label %_body1082, label %_end1083
_body1082:
  %_id1084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1075
  %_id1085 = load i64, i64* %_i1078
  %_index_ptr1086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1084, i32 0, i32 1, i64 %_id1085
  %_id1088 = load i64, i64* %_i1078
  %_id1089 = load i64, i64* %_i1078
  %_bop1087 = mul i64 %_id1088, %_id1089
  store i64 %_bop1087, i64* %_index_ptr1086
  %_id1092 = load i64, i64* %_i1078
  %_bop1091 = add i64 %_id1092, 1
  store i64 %_bop1091, i64* %_i1078
  br label %_start1081
_end1083:
  %_raw_array1094 = call i64* @oat_alloc_array(i64 3)
  %_array1095 = bitcast i64* %_raw_array1094 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1095, { i64, [0 x i64] }** %_arr01093
  store i64 0, i64* %_i1096
  br label %_start1099
_start1099:
  %_id1098 = load i64, i64* %_i1096
  %_bop1097 = icmp slt i64 %_id1098, 3
  br i1 %_bop1097, label %_body1100, label %_end1101
_body1100:
  %_id1102 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01093
  %_id1103 = load i64, i64* %_i1096
  %_index_ptr1104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1102, i32 0, i32 1, i64 %_id1103
  %_id1106 = load i64, i64* %_i1096
  %_bop1105 = mul i64 2, %_id1106
  store i64 %_bop1105, i64* %_index_ptr1104
  %_id1109 = load i64, i64* %_i1096
  %_bop1108 = add i64 %_id1109, 1
  store i64 %_bop1108, i64* %_i1096
  br label %_start1099
_end1101:
  %_id1113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1075
  %_index_ptr1114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1113, i32 0, i32 1, i32 3
  %_1117 = load i64, i64* %_index_ptr1114
  %_id1115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1059
  %_index_ptr1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1115, i32 0, i32 1, i32 1
  %_1118 = load i64, i64* %_index_ptr1116
  %_bop1112 = add i64 %_1117, %_1118
  %_id1119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01093
  %_Call_retval1120 = call i64 @f({ i64, [0 x i64] }* %_id1119)
  %_bop1111 = add i64 %_bop1112, %_Call_retval1120
  %_Call_retval1121 = call i64 @g(i64 4)
  %_bop1110 = add i64 %_bop1111, %_Call_retval1121
  ret i64 %_bop1110
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
