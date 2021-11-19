; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x6960 = alloca i64
  store i64 %x, i64* %_x6960
  %_y6961 = alloca i64
  store i64 %y, i64* %_y6961
  %_6964 = load i64, i64* %_x6960
  %_6966 = load i64, i64* %_y6961
  %_6962 = icmp eq i64 %_6964, %_6966
  br i1 %_6962, label %_then6967, label %_else6968
_then6967:
  %_6971 = load i64, i64* %_x6960
  ret i64 %_6971
_else6968:
  br label %_end6969
_end6969:
  %_6975 = load i64, i64* %_x6960
  %_6973 = icmp eq i64 %_6975, 0
  br i1 %_6973, label %_then6977, label %_else6978
_then6977:
  %_6981 = load i64, i64* %_y6961
  ret i64 %_6981
_else6978:
  br label %_end6979
_end6979:
  %_6985 = load i64, i64* %_y6961
  %_6983 = icmp eq i64 %_6985, 0
  br i1 %_6983, label %_then6987, label %_else6988
_then6987:
  %_6991 = load i64, i64* %_x6960
  ret i64 %_6991
_else6988:
  br label %_end6989
_end6989:
  %_6995 = xor i64 -1, %_6997
  %_6997 = load i64, i64* %_x6960
  %_6994 = and i64 %_6995, 1
  %_6993 = icmp eq i64 %_6994, 1
  br i1 %_6993, label %_then7000, label %_else7001
_then7000:
  %_7006 = load i64, i64* %_y6961
  %_7004 = and i64 %_7006, 1
  %_7003 = icmp eq i64 %_7004, 1
  br i1 %_7003, label %_then7009, label %_else7010
_then7009:
  %_7013 = lshr i64 %_7015, 1
  %_7015 = load i64, i64* %_x6960
  %_7018 = load i64, i64* %_y6961
  %_retval7019 = call i64 @binary_gcd(i64 %_7013, i64 %_7018)
  ret i64 %_retval7019
_else7010:
  %_7023 = lshr i64 %_7025, 1
  %_7025 = load i64, i64* %_x6960
  %_7027 = lshr i64 %_7029, 1
  %_7029 = load i64, i64* %_y6961
  %_retval7031 = call i64 @binary_gcd(i64 %_7023, i64 %_7027)
  %_7021 = shl i64 %_retval7031, 1
  ret i64 %_7021
_end7011:
  br label %_end7002
_else7001:
  br label %_end7002
_end7002:
  %_7036 = xor i64 -1, %_7038
  %_7038 = load i64, i64* %_y6961
  %_7035 = and i64 %_7036, 1
  %_7034 = icmp eq i64 %_7035, 1
  br i1 %_7034, label %_then7041, label %_else7042
_then7041:
  %_7046 = load i64, i64* %_x6960
  %_7047 = lshr i64 %_7049, 1
  %_7049 = load i64, i64* %_y6961
  %_retval7051 = call i64 @binary_gcd(i64 %_7046, i64 %_7047)
  ret i64 %_retval7051
_else7042:
  br label %_end7043
_end7043:
  %_7055 = load i64, i64* %_x6960
  %_7057 = load i64, i64* %_y6961
  %_7053 = icmp sgt i64 %_7055, %_7057
  br i1 %_7053, label %_then7058, label %_else7059
_then7058:
  %_7062 = lshr i64 %_7063, 1
  %_7063 = sub i64 %_7065, %_7067
  %_7067 = load i64, i64* %_y6961
  %_7065 = load i64, i64* %_x6960
  %_7070 = load i64, i64* %_y6961
  %_retval7071 = call i64 @binary_gcd(i64 %_7062, i64 %_7070)
  ret i64 %_retval7071
_else7059:
  br label %_end7060
_end7060:
  %_7074 = lshr i64 %_7075, 1
  %_7075 = sub i64 %_7077, %_7079
  %_7079 = load i64, i64* %_x6960
  %_7077 = load i64, i64* %_y6961
  %_7082 = load i64, i64* %_x6960
  %_retval7083 = call i64 @binary_gcd(i64 %_7074, i64 %_7082)
  ret i64 %_retval7083
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6947 = alloca i64
  store i64 %argc, i64* %_argc6947
  %_argv6948 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6948
  %_x6949 = alloca i64
  %_y6951 = alloca i64
  store i64 21, i64* %_x6949
  store i64 15, i64* %_y6951
  %_6955 = load i64, i64* %_x6949
  %_6957 = load i64, i64* %_y6951
  %_retval6958 = call i64 @binary_gcd(i64 %_6955, i64 %_6957)
  ret i64 %_retval6958
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
