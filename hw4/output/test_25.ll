; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i1113 = alloca i64
  store i64 %i, i64* %_i1113
  %_1116 = load i64, i64* %_i1113
  %_retval1117 = call i64 @f2(i64 %_1116)
  ret i64 %_retval1117
}

define i64 @f2(i64 %i) {
  %_i1107 = alloca i64
  store i64 %i, i64* %_i1107
  %_1110 = load i64, i64* %_i1107
  %_retval1111 = call i64 @f3(i64 %_1110)
  ret i64 %_retval1111
}

define i64 @f3(i64 %i) {
  %_i1101 = alloca i64
  store i64 %i, i64* %_i1101
  %_1104 = load i64, i64* %_i1101
  %_retval1105 = call i64 @f4(i64 %_1104)
  ret i64 %_retval1105
}

define i64 @f4(i64 %i) {
  %_i1095 = alloca i64
  store i64 %i, i64* %_i1095
  %_1098 = load i64, i64* %_i1095
  %_retval1099 = call i64 @f5(i64 %_1098)
  ret i64 %_retval1099
}

define i64 @f5(i64 %i) {
  %_i1089 = alloca i64
  store i64 %i, i64* %_i1089
  %_1092 = load i64, i64* %_i1089
  %_retval1093 = call i64 @f6(i64 %_1092)
  ret i64 %_retval1093
}

define i64 @f6(i64 %i) {
  %_i1083 = alloca i64
  store i64 %i, i64* %_i1083
  %_1086 = load i64, i64* %_i1083
  %_retval1087 = call i64 @f7(i64 %_1086)
  ret i64 %_retval1087
}

define i64 @f7(i64 %i) {
  %_i1077 = alloca i64
  store i64 %i, i64* %_i1077
  %_1080 = load i64, i64* %_i1077
  %_retval1081 = call i64 @f8(i64 %_1080)
  ret i64 %_retval1081
}

define i64 @f8(i64 %i) {
  %_i1071 = alloca i64
  store i64 %i, i64* %_i1071
  %_1074 = load i64, i64* %_i1071
  %_retval1075 = call i64 @f9(i64 %_1074)
  ret i64 %_retval1075
}

define i64 @f9(i64 %i) {
  %_i1067 = alloca i64
  store i64 %i, i64* %_i1067
  %_1069 = load i64, i64* %_i1067
  ret i64 %_1069
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1060 = alloca i64
  store i64 %argc, i64* %_argc1060
  %_argv1061 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1061
  %_1064 = load i64, i64* %_argc1060
  %_retval1065 = call i64 @f1(i64 %_1064)
  ret i64 %_retval1065
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
