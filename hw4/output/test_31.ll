; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x1079 = alloca i64
  store i64 %x, i64* %_x1079
  %_y1080 = alloca i64
  store i64 %y, i64* %_y1080
  %_1083 = load i64, i64* %_x1079
  %_1085 = load i64, i64* %_y1080
  %_1081 = icmp eq i64 %_1083, %_1085
  br i1 %_1081, label %_then1086, label %_else1087
_then1086:
  %_1090 = load i64, i64* %_x1079
  ret i64 %_1090
_else1087:
  br label %_end1088
_end1088:
  %_1094 = load i64, i64* %_x1079
  %_1092 = icmp eq i64 %_1094, 0
  br i1 %_1092, label %_then1096, label %_else1097
_then1096:
  %_1100 = load i64, i64* %_y1080
  ret i64 %_1100
_else1097:
  br label %_end1098
_end1098:
  %_1104 = load i64, i64* %_y1080
  %_1102 = icmp eq i64 %_1104, 0
  br i1 %_1102, label %_then1106, label %_else1107
_then1106:
  %_1110 = load i64, i64* %_x1079
  ret i64 %_1110
_else1107:
  br label %_end1108
_end1108:
  %_1114 = xor i64 -1, %_1116
  %_1116 = load i64, i64* %_x1079
  %_1113 = and i64 %_1114, 1
  %_1112 = icmp eq i64 %_1113, 1
  br i1 %_1112, label %_then1119, label %_else1120
_then1119:
  %_1125 = load i64, i64* %_y1080
  %_1123 = and i64 %_1125, 1
  %_1122 = icmp eq i64 %_1123, 1
  br i1 %_1122, label %_then1128, label %_else1129
_then1128:
  %_1132 = lshr i64 %_1134, 1
  %_1134 = load i64, i64* %_x1079
  %_1137 = load i64, i64* %_y1080
  %_retval1138 = call i64 @binary_gcd(i64 %_1132, i64 %_1137)
  ret i64 %_retval1138
_else1129:
  %_1142 = lshr i64 %_1144, 1
  %_1144 = load i64, i64* %_x1079
  %_1146 = lshr i64 %_1148, 1
  %_1148 = load i64, i64* %_y1080
  %_retval1150 = call i64 @binary_gcd(i64 %_1142, i64 %_1146)
  %_1140 = shl i64 %_retval1150, 1
  ret i64 %_1140
_end1130:
  br label %_end1121
_else1120:
  br label %_end1121
_end1121:
  %_1155 = xor i64 -1, %_1157
  %_1157 = load i64, i64* %_y1080
  %_1154 = and i64 %_1155, 1
  %_1153 = icmp eq i64 %_1154, 1
  br i1 %_1153, label %_then1160, label %_else1161
_then1160:
  %_1165 = load i64, i64* %_x1079
  %_1166 = lshr i64 %_1168, 1
  %_1168 = load i64, i64* %_y1080
  %_retval1170 = call i64 @binary_gcd(i64 %_1165, i64 %_1166)
  ret i64 %_retval1170
_else1161:
  br label %_end1162
_end1162:
  %_1174 = load i64, i64* %_x1079
  %_1176 = load i64, i64* %_y1080
  %_1172 = icmp sgt i64 %_1174, %_1176
  br i1 %_1172, label %_then1177, label %_else1178
_then1177:
  %_1181 = lshr i64 %_1182, 1
  %_1182 = sub i64 %_1184, %_1186
  %_1186 = load i64, i64* %_y1080
  %_1184 = load i64, i64* %_x1079
  %_1189 = load i64, i64* %_y1080
  %_retval1190 = call i64 @binary_gcd(i64 %_1181, i64 %_1189)
  ret i64 %_retval1190
_else1178:
  br label %_end1179
_end1179:
  %_1193 = lshr i64 %_1194, 1
  %_1194 = sub i64 %_1196, %_1198
  %_1198 = load i64, i64* %_x1079
  %_1196 = load i64, i64* %_y1080
  %_1201 = load i64, i64* %_x1079
  %_retval1202 = call i64 @binary_gcd(i64 %_1193, i64 %_1201)
  ret i64 %_retval1202
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1066 = alloca i64
  store i64 %argc, i64* %_argc1066
  %_argv1067 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1067
  %_x1068 = alloca i64
  store i64 21, i64* %_x1068
  %_y1070 = alloca i64
  store i64 15, i64* %_y1070
  %_1074 = load i64, i64* %_x1068
  %_1076 = load i64, i64* %_y1070
  %_retval1077 = call i64 @binary_gcd(i64 %_1074, i64 %_1076)
  ret i64 %_retval1077
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
