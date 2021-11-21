; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i1158 = alloca i64
  store i64 %i, i64* %_i1158
  %_id1161 = load i64, i64* %_i1158
  %_Call_retval1162 = call i64 @f2(i64 %_id1161)
  ret i64 %_Call_retval1162
}

define i64 @f2(i64 %i) {
  %_i1152 = alloca i64
  store i64 %i, i64* %_i1152
  %_id1155 = load i64, i64* %_i1152
  %_Call_retval1156 = call i64 @f3(i64 %_id1155)
  ret i64 %_Call_retval1156
}

define i64 @f3(i64 %i) {
  %_i1146 = alloca i64
  store i64 %i, i64* %_i1146
  %_id1149 = load i64, i64* %_i1146
  %_Call_retval1150 = call i64 @f4(i64 %_id1149)
  ret i64 %_Call_retval1150
}

define i64 @f4(i64 %i) {
  %_i1140 = alloca i64
  store i64 %i, i64* %_i1140
  %_id1143 = load i64, i64* %_i1140
  %_Call_retval1144 = call i64 @f5(i64 %_id1143)
  ret i64 %_Call_retval1144
}

define i64 @f5(i64 %i) {
  %_i1134 = alloca i64
  store i64 %i, i64* %_i1134
  %_id1137 = load i64, i64* %_i1134
  %_Call_retval1138 = call i64 @f6(i64 %_id1137)
  ret i64 %_Call_retval1138
}

define i64 @f6(i64 %i) {
  %_i1128 = alloca i64
  store i64 %i, i64* %_i1128
  %_id1131 = load i64, i64* %_i1128
  %_Call_retval1132 = call i64 @f7(i64 %_id1131)
  ret i64 %_Call_retval1132
}

define i64 @f7(i64 %i) {
  %_i1122 = alloca i64
  store i64 %i, i64* %_i1122
  %_id1125 = load i64, i64* %_i1122
  %_Call_retval1126 = call i64 @f8(i64 %_id1125)
  ret i64 %_Call_retval1126
}

define i64 @f8(i64 %i) {
  %_i1116 = alloca i64
  store i64 %i, i64* %_i1116
  %_id1119 = load i64, i64* %_i1116
  %_Call_retval1120 = call i64 @f9(i64 %_id1119)
  ret i64 %_Call_retval1120
}

define i64 @f9(i64 %i) {
  %_i1112 = alloca i64
  store i64 %i, i64* %_i1112
  %_id1114 = load i64, i64* %_i1112
  ret i64 %_id1114
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1105 = alloca i64
  store i64 %argc, i64* %_argc1105
  %_argv1106 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1106
  %_id1109 = load i64, i64* %_argc1105
  %_Call_retval1110 = call i64 @f1(i64 %_id1109)
  ret i64 %_Call_retval1110
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
