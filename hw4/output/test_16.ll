; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x11089 = alloca i64
  store i64 %x1, i64* %_x11089
  %_x21090 = alloca i64
  store i64 %x2, i64* %_x21090
  %_x31091 = alloca i64
  store i64 %x3, i64* %_x31091
  %_x41092 = alloca i64
  store i64 %x4, i64* %_x41092
  %_x51093 = alloca i64
  store i64 %x5, i64* %_x51093
  %_x61094 = alloca i64
  store i64 %x6, i64* %_x61094
  %_x71095 = alloca i64
  store i64 %x7, i64* %_x71095
  %_x81096 = alloca i64
  store i64 %x8, i64* %_x81096
  %_1105 = load i64, i64* %_x11089
  %_1107 = load i64, i64* %_x21090
  %_1103 = add i64 %_1105, %_1107
  %_1110 = load i64, i64* %_1103
  %_1109 = load i64, i64* %_x31091
  %_1102 = add i64 %_1110, %_1109
  %_1113 = load i64, i64* %_1102
  %_1112 = load i64, i64* %_x41092
  %_1101 = add i64 %_1113, %_1112
  %_1116 = load i64, i64* %_1101
  %_1115 = load i64, i64* %_x51093
  %_1100 = add i64 %_1116, %_1115
  %_1119 = load i64, i64* %_1100
  %_1118 = load i64, i64* %_x61094
  %_1099 = add i64 %_1119, %_1118
  %_1122 = load i64, i64* %_1099
  %_1121 = load i64, i64* %_x71095
  %_1098 = add i64 %_1122, %_1121
  %_1125 = load i64, i64* %_1098
  %_1124 = load i64, i64* %_x81096
  %_1097 = add i64 %_1125, %_1124
  %_1126 = load i64, i64* %_1097
  ret i64 %_1126
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1062 = alloca i64
  store i64 %argc, i64* %_argc1062
  %_argv1063 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1063
  store i64 1, i64* %_1066
  store i64 2, i64* %_1068
  store i64 3, i64* %_1070
  store i64 4, i64* %_1072
  store i64 5, i64* %_1074
  %_1078 = load i64, i64* %_1077
  store i64 5, i64* %_1077
  %_1075 = sub i64 0, %_1078
  %_1082 = load i64, i64* %_1081
  store i64 4, i64* %_1081
  %_1079 = sub i64 0, %_1082
  %_1086 = load i64, i64* %_1085
  store i64 3, i64* %_1085
  %_1083 = sub i64 0, %_1086
  %_retval1087 = call i64 @f(i64* %_1066, i64* %_1068, i64* %_1070, i64* %_1072, i64* %_1074, i64* %_1075, i64* %_1079, i64* %_1083)
  %_1088 = load i64, i64* %_retval1087
  ret i64 %_1088
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
