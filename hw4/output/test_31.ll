; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x1018 = alloca i64
  store i64 %x, i64* %_x1018
  %_y1019 = alloca i64
  store i64 %y, i64* %_y1019
  %_1022 = load i64, i64* %_x1018
  %_1024 = load i64, i64* %_y1019
  %_1020 = icmp eq i64 %_1022, %_1024
  br i1 %_1020, label %_then1025, label %_else1026
_then1025:
  %_1029 = load i64, i64* %_x1018
  ret i64 %_1029
_else1026:
  br label %_end1027
_end1027:
  %_1033 = load i64, i64* %_x1018
  %_1031 = icmp eq i64 %_1033, 0
  br i1 %_1031, label %_then1035, label %_else1036
_then1035:
  %_1039 = load i64, i64* %_y1019
  ret i64 %_1039
_else1036:
  br label %_end1037
_end1037:
  %_1043 = load i64, i64* %_y1019
  %_1041 = icmp eq i64 %_1043, 0
  br i1 %_1041, label %_then1045, label %_else1046
_then1045:
  %_1049 = load i64, i64* %_x1018
  ret i64 %_1049
_else1046:
  br label %_end1047
_end1047:
  %_1053 = xor i64 -1, %_1055
  %_1055 = load i64, i64* %_x1018
  %_1052 = and i64 %_1053, 1
  %_1051 = icmp eq i64 %_1052, 1
  br i1 %_1051, label %_then1058, label %_else1059
_then1058:
  %_1064 = load i64, i64* %_y1019
  %_1062 = and i64 %_1064, 1
  %_1061 = icmp eq i64 %_1062, 1
  br i1 %_1061, label %_then1067, label %_else1068
_then1067:
  %_1071 = lshr i64 %_1073, 1
  %_1073 = load i64, i64* %_x1018
  %_1076 = load i64, i64* %_y1019
  %_retval1077 = call i64 @binary_gcd(i64 %_1071, i64 %_1076)
  ret i64 %_retval1077
_else1068:
  %_1081 = lshr i64 %_1083, 1
  %_1083 = load i64, i64* %_x1018
  %_1085 = lshr i64 %_1087, 1
  %_1087 = load i64, i64* %_y1019
  %_retval1089 = call i64 @binary_gcd(i64 %_1081, i64 %_1085)
  %_1079 = shl i64 %_retval1089, 1
  ret i64 %_1079
_end1069:
  br label %_end1060
_else1059:
  br label %_end1060
_end1060:
  %_1094 = xor i64 -1, %_1096
  %_1096 = load i64, i64* %_y1019
  %_1093 = and i64 %_1094, 1
  %_1092 = icmp eq i64 %_1093, 1
  br i1 %_1092, label %_then1099, label %_else1100
_then1099:
  %_1104 = load i64, i64* %_x1018
  %_1105 = lshr i64 %_1107, 1
  %_1107 = load i64, i64* %_y1019
  %_retval1109 = call i64 @binary_gcd(i64 %_1104, i64 %_1105)
  ret i64 %_retval1109
_else1100:
  br label %_end1101
_end1101:
  %_1113 = load i64, i64* %_x1018
  %_1115 = load i64, i64* %_y1019
  %_1111 = icmp sgt i64 %_1113, %_1115
  br i1 %_1111, label %_then1116, label %_else1117
_then1116:
  %_1120 = lshr i64 %_1121, 1
  %_1121 = sub i64 %_1123, %_1125
  %_1125 = load i64, i64* %_y1019
  %_1123 = load i64, i64* %_x1018
  %_1128 = load i64, i64* %_y1019
  %_retval1129 = call i64 @binary_gcd(i64 %_1120, i64 %_1128)
  ret i64 %_retval1129
_else1117:
  br label %_end1118
_end1118:
  %_1132 = lshr i64 %_1133, 1
  %_1133 = sub i64 %_1135, %_1137
  %_1137 = load i64, i64* %_x1018
  %_1135 = load i64, i64* %_y1019
  %_1140 = load i64, i64* %_x1018
  %_retval1141 = call i64 @binary_gcd(i64 %_1132, i64 %_1140)
  ret i64 %_retval1141
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1005 = alloca i64
  store i64 %argc, i64* %_argc1005
  %_argv1006 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1006
  %_x1007 = alloca i64
  store i64 21, i64* %_x1007
  %_y1009 = alloca i64
  store i64 15, i64* %_y1009
  %_1013 = load i64, i64* %_x1007
  %_1015 = load i64, i64* %_y1009
  %_retval1016 = call i64 @binary_gcd(i64 %_1013, i64 %_1015)
  ret i64 %_retval1016
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
