; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x7016 = alloca i64
  store i64 %x, i64* %_x7016
  %_y7017 = alloca i64
  store i64 %y, i64* %_y7017
  %_id7021 = load i64, i64* %_x7016
  %_id7023 = load i64, i64* %_y7017
  %_bop7019 = icmp eq i64 %_id7021, %_id7023
  br i1 %_bop7019, label %_then7024, label %_else7025
_then7024:
  %_id7028 = load i64, i64* %_x7016
  ret i64 %_id7028
_else7025:
  br label %_end7026
_end7026:
  %_id7033 = load i64, i64* %_x7016
  %_bop7031 = icmp eq i64 %_id7033, 0
  br i1 %_bop7031, label %_then7035, label %_else7036
_then7035:
  %_id7039 = load i64, i64* %_y7017
  ret i64 %_id7039
_else7036:
  br label %_end7037
_end7037:
  %_id7044 = load i64, i64* %_y7017
  %_bop7042 = icmp eq i64 %_id7044, 0
  br i1 %_bop7042, label %_then7046, label %_else7047
_then7046:
  %_id7050 = load i64, i64* %_x7016
  ret i64 %_id7050
_else7047:
  br label %_end7048
_end7048:
  %_uop7057 = xor i64 -1, %_id7059
  %_id7059 = load i64, i64* %_x7016
  %_bop7055 = and i64 %_uop7057, 1
  %_bop7053 = icmp eq i64 %_bop7055, 1
  br i1 %_bop7053, label %_then7062, label %_else7063
_then7062:
  %_id7070 = load i64, i64* %_y7017
  %_bop7068 = and i64 %_id7070, 1
  %_bop7066 = icmp eq i64 %_bop7068, 1
  br i1 %_bop7066, label %_then7073, label %_else7074
_then7073:
  %_bop7078 = lshr i64 %_id7080, 1
  %_id7080 = load i64, i64* %_x7016
  %_id7083 = load i64, i64* %_y7017
  %_Call_retval7084 = call i64 @binary_gcd(i64 %_bop7078, i64 %_id7083)
  ret i64 %_Call_retval7084
_else7074:
  %_bop7090 = lshr i64 %_id7092, 1
  %_id7092 = load i64, i64* %_x7016
  %_bop7095 = lshr i64 %_id7097, 1
  %_id7097 = load i64, i64* %_y7017
  %_Call_retval7099 = call i64 @binary_gcd(i64 %_bop7090, i64 %_bop7095)
  %_bop7087 = shl i64 %_Call_retval7099, 1
  ret i64 %_bop7087
_end7075:
  br label %_end7064
_else7063:
  br label %_end7064
_end7064:
  %_uop7107 = xor i64 -1, %_id7109
  %_id7109 = load i64, i64* %_y7017
  %_bop7105 = and i64 %_uop7107, 1
  %_bop7103 = icmp eq i64 %_bop7105, 1
  br i1 %_bop7103, label %_then7112, label %_else7113
_then7112:
  %_id7117 = load i64, i64* %_x7016
  %_bop7119 = lshr i64 %_id7121, 1
  %_id7121 = load i64, i64* %_y7017
  %_Call_retval7123 = call i64 @binary_gcd(i64 %_id7117, i64 %_bop7119)
  ret i64 %_Call_retval7123
_else7113:
  br label %_end7114
_end7114:
  %_id7128 = load i64, i64* %_x7016
  %_id7130 = load i64, i64* %_y7017
  %_bop7126 = icmp sgt i64 %_id7128, %_id7130
  br i1 %_bop7126, label %_then7131, label %_else7132
_then7131:
  %_bop7136 = lshr i64 %_bop7138, 1
  %_bop7138 = sub i64 %_id7140, %_id7142
  %_id7142 = load i64, i64* %_y7017
  %_id7140 = load i64, i64* %_x7016
  %_id7145 = load i64, i64* %_y7017
  %_Call_retval7146 = call i64 @binary_gcd(i64 %_bop7136, i64 %_id7145)
  ret i64 %_Call_retval7146
_else7132:
  br label %_end7133
_end7133:
  %_bop7150 = lshr i64 %_bop7152, 1
  %_bop7152 = sub i64 %_id7154, %_id7156
  %_id7156 = load i64, i64* %_x7016
  %_id7154 = load i64, i64* %_y7017
  %_id7159 = load i64, i64* %_x7016
  %_Call_retval7160 = call i64 @binary_gcd(i64 %_bop7150, i64 %_id7159)
  ret i64 %_Call_retval7160
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7003 = alloca i64
  store i64 %argc, i64* %_argc7003
  %_argv7004 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7004
  %_x7005 = alloca i64
  %_y7007 = alloca i64
  store i64 21, i64* %_x7005
  store i64 15, i64* %_y7007
  %_id7011 = load i64, i64* %_x7005
  %_id7013 = load i64, i64* %_y7007
  %_Call_retval7014 = call i64 @binary_gcd(i64 %_id7011, i64 %_id7013)
  ret i64 %_Call_retval7014
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
