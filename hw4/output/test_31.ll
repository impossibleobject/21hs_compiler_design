; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i1111 = alloca i64
  store i64 %i, i64* %_i1111
  %_1114 = load i64, i64* %_i1111
  %_retval1115 = call i64 @f2(i64 %_1114)
  ret i64 %_retval1115
}

define i64 @f2(i64 %i) {
  %_i1105 = alloca i64
  store i64 %i, i64* %_i1105
  %_1108 = load i64, i64* %_i1105
  %_retval1109 = call i64 @f3(i64 %_1108)
  ret i64 %_retval1109
}

define i64 @f3(i64 %i) {
  %_i1099 = alloca i64
  store i64 %i, i64* %_i1099
  %_1102 = load i64, i64* %_i1099
  %_retval1103 = call i64 @f4(i64 %_1102)
  ret i64 %_retval1103
}

define i64 @f4(i64 %i) {
  %_i1093 = alloca i64
  store i64 %i, i64* %_i1093
  %_1096 = load i64, i64* %_i1093
  %_retval1097 = call i64 @f5(i64 %_1096)
  ret i64 %_retval1097
}

define i64 @f5(i64 %i) {
  %_i1087 = alloca i64
  store i64 %i, i64* %_i1087
  %_1090 = load i64, i64* %_i1087
  %_retval1091 = call i64 @f6(i64 %_1090)
  ret i64 %_retval1091
}

define i64 @f6(i64 %i) {
  %_i1081 = alloca i64
  store i64 %i, i64* %_i1081
  %_1084 = load i64, i64* %_i1081
  %_retval1085 = call i64 @f7(i64 %_1084)
  ret i64 %_retval1085
}

define i64 @f7(i64 %i) {
  %_i1075 = alloca i64
  store i64 %i, i64* %_i1075
  %_1078 = load i64, i64* %_i1075
  %_retval1079 = call i64 @f8(i64 %_1078)
  ret i64 %_retval1079
}

define i64 @f8(i64 %i) {
  %_i1069 = alloca i64
  store i64 %i, i64* %_i1069
  %_1072 = load i64, i64* %_i1069
  %_retval1073 = call i64 @f9(i64 %_1072)
  ret i64 %_retval1073
}

define i64 @f9(i64 %i) {
  %_i1065 = alloca i64
  store i64 %i, i64* %_i1065
  %_1067 = load i64, i64* %_i1065
  ret i64 %_1067
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1058 = alloca i64
  store i64 %argc, i64* %_argc1058
  %_argv1059 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1059
  %_1062 = load i64, i64* %_argc1058
  %_retval1063 = call i64 @f1(i64 %_1062)
  ret i64 %_retval1063
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
