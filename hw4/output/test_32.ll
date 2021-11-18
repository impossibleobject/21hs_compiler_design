; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n1098 = alloca i64
  store i64 %n, i64* %_n1098
  %_1101 = load i64, i64* %_n1098
  %_1099 = icmp eq i64 %_1101, 0
  br i1 %_1099, label %_then1103, label %_else1104
_then1103:
  ret i64 0
_else1104:
  br label %_end1105
_end1105:
  %_1110 = load i64, i64* %_n1098
  %_1108 = icmp eq i64 %_1110, 1
  br i1 %_1108, label %_then1112, label %_else1113
_then1112:
  ret i64 1
_else1113:
  br label %_end1114
_end1114:
  %_1119 = sub i64 %_1121, 1
  %_1121 = load i64, i64* %_n1098
  %_retval1123 = call i64 @fibR(i64 %_1119)
  %_1125 = sub i64 %_1127, 2
  %_1127 = load i64, i64* %_n1098
  %_retval1129 = call i64 @fibR(i64 %_1125)
  %_1117 = add i64 %_retval1123, %_retval1129
  ret i64 %_1117
}

define i64 @fibI(i64 %n) {
  %_n1038 = alloca i64
  store i64 %n, i64* %_n1038
  %_a1039 = alloca i64
  store i64 0, i64* %_a1039
  %_b1041 = alloca i64
  store i64 1, i64* %_b1041
  %_old1072 = alloca i64
  store i64 %_1074, i64* %_old1072
  %_1045 = load i64, i64* %_n1038
  %_1043 = icmp eq i64 %_1045, 0
  br i1 %_1043, label %_then1047, label %_else1048
_then1047:
  %_1051 = load i64, i64* %_a1039
  ret i64 %_1051
_else1048:
  br label %_end1049
_end1049:
  %_1055 = load i64, i64* %_n1038
  %_1053 = icmp eq i64 %_1055, 1
  br i1 %_1053, label %_then1057, label %_else1058
_then1057:
  %_1061 = load i64, i64* %_b1041
  ret i64 %_1061
_else1058:
  br label %_end1059
_end1059:
  br label %_start1069
_start1069:
  %_1066 = load i64, i64* %_n1038
  %_1064 = sub i64 %_1066, 2
  %_1063 = icmp sgt i64 %_1064, 0
  br i1 %_1063, label %_body1070, label %_end1071
_body1070:
  %_1074 = load i64, i64* %_b1041
  %_1079 = load i64, i64* %_b1041
  %_1081 = load i64, i64* %_a1039
  %_1077 = add i64 %_1079, %_1081
  store i64 %_1077, i64* %_b1041
  %_1085 = load i64, i64* %_old1072
  store i64 %_1085, i64* %_a1039
  %_1090 = load i64, i64* %_n1038
  %_1088 = sub i64 %_1090, 1
  store i64 %_1088, i64* %_n1038
  br label %_start1069
_end1071:
  %_1094 = load i64, i64* %_a1039
  %_1096 = load i64, i64* %_b1041
  %_1092 = add i64 %_1094, %_1096
  ret i64 %_1092
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1014 = alloca i64
  store i64 %argc, i64* %_argc1014
  %_argv1015 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1015
  %_val1016 = alloca i64
  store i64 1, i64* %_val1016
  %_retval1022 = call i64 @fibR(i64 12)
  %_1019 = icmp eq i64 %_retval1022, 144
  %_retval1027 = call i64 @fibI(i64 12)
  %_1024 = icmp eq i64 %_retval1027, 144
  %_1018 = and i1 %_1019, %_1024
  br i1 %_1018, label %_then1029, label %_else1030
_then1029:
  store i64 0, i64* %_val1016
  br label %_end1031
_else1030:
  br label %_end1031
_end1031:
  %_1036 = load i64, i64* %_val1016
  ret i64 %_1036
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
