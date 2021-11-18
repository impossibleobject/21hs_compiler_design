; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n1119 = alloca i64
  store i64 %n, i64* %_n1119
  %_1122 = load i64, i64* %_n1119
  %_1120 = icmp eq i64 %_1122, 0
  br i1 %_1120, label %_then1124, label %_else1125
_then1124:
  ret i64 0
_else1125:
  br label %_end1126
_end1126:
  %_1131 = load i64, i64* %_n1119
  %_1129 = icmp eq i64 %_1131, 1
  br i1 %_1129, label %_then1133, label %_else1134
_then1133:
  ret i64 1
_else1134:
  br label %_end1135
_end1135:
  %_1140 = sub i64 %_1142, 1
  %_1142 = load i64, i64* %_n1119
  %_retval1144 = call i64 @fibR(i64 %_1140)
  %_1146 = sub i64 %_1148, 2
  %_1148 = load i64, i64* %_n1119
  %_retval1150 = call i64 @fibR(i64 %_1146)
  %_1138 = add i64 %_retval1144, %_retval1150
  ret i64 %_1138
}

define i64 @fibI(i64 %n) {
  %_n1059 = alloca i64
  store i64 %n, i64* %_n1059
  %_a1060 = alloca i64
  store i64 0, i64* %_a1060
  %_b1062 = alloca i64
  store i64 1, i64* %_b1062
  %_old1093 = alloca i64
  store i64 %_1095, i64* %_old1093
  %_1066 = load i64, i64* %_n1059
  %_1064 = icmp eq i64 %_1066, 0
  br i1 %_1064, label %_then1068, label %_else1069
_then1068:
  %_1072 = load i64, i64* %_a1060
  ret i64 %_1072
_else1069:
  br label %_end1070
_end1070:
  %_1076 = load i64, i64* %_n1059
  %_1074 = icmp eq i64 %_1076, 1
  br i1 %_1074, label %_then1078, label %_else1079
_then1078:
  %_1082 = load i64, i64* %_b1062
  ret i64 %_1082
_else1079:
  br label %_end1080
_end1080:
  br label %_start1090
_start1090:
  %_1087 = load i64, i64* %_n1059
  %_1085 = sub i64 %_1087, 2
  %_1084 = icmp sgt i64 %_1085, 0
  br i1 %_1084, label %_body1091, label %_end1092
_body1091:
  %_1095 = load i64, i64* %_b1062
  %_1100 = load i64, i64* %_b1062
  %_1102 = load i64, i64* %_a1060
  %_1098 = add i64 %_1100, %_1102
  store i64 %_1098, i64* %_b1062
  %_1106 = load i64, i64* %_old1093
  store i64 %_1106, i64* %_a1060
  %_1111 = load i64, i64* %_n1059
  %_1109 = sub i64 %_1111, 1
  store i64 %_1109, i64* %_n1059
  br label %_start1090
_end1092:
  %_1115 = load i64, i64* %_a1060
  %_1117 = load i64, i64* %_b1062
  %_1113 = add i64 %_1115, %_1117
  ret i64 %_1113
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1035 = alloca i64
  store i64 %argc, i64* %_argc1035
  %_argv1036 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1036
  %_val1037 = alloca i64
  store i64 1, i64* %_val1037
  %_retval1043 = call i64 @fibR(i64 12)
  %_1040 = icmp eq i64 %_retval1043, 144
  %_retval1048 = call i64 @fibI(i64 12)
  %_1045 = icmp eq i64 %_retval1048, 144
  %_1039 = and i1 %_1040, %_1045
  br i1 %_1039, label %_then1050, label %_else1051
_then1050:
  store i64 0, i64* %_val1037
  br label %_end1052
_else1051:
  br label %_end1052
_end1052:
  %_1057 = load i64, i64* %_val1037
  ret i64 %_1057
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
