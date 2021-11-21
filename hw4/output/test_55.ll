; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x6938 = alloca i64
  store i64 %x, i64* %_x6938
  %_y6939 = alloca i64
  store i64 %y, i64* %_y6939
  %_6942 = load i64, i64* %_x6938
  %_6944 = load i64, i64* %_y6939
  %_6940 = icmp eq i64 %_6942, %_6944
  br i1 %_6940, label %_then6945, label %_else6946
_then6945:
  %_6949 = load i64, i64* %_x6938
  ret i64 %_6949
_else6946:
  br label %_end6947
_end6947:
  %_6953 = load i64, i64* %_x6938
  %_6951 = icmp eq i64 %_6953, 0
  br i1 %_6951, label %_then6955, label %_else6956
_then6955:
  %_6959 = load i64, i64* %_y6939
  ret i64 %_6959
_else6956:
  br label %_end6957
_end6957:
  %_6963 = load i64, i64* %_y6939
  %_6961 = icmp eq i64 %_6963, 0
  br i1 %_6961, label %_then6965, label %_else6966
_then6965:
  %_6969 = load i64, i64* %_x6938
  ret i64 %_6969
_else6966:
  br label %_end6967
_end6967:
  %_6973 = xor i64 -1, %_6975
  %_6975 = load i64, i64* %_x6938
  %_6972 = and i64 %_6973, 1
  %_6971 = icmp eq i64 %_6972, 1
  br i1 %_6971, label %_then6978, label %_else6979
_then6978:
  %_6984 = load i64, i64* %_y6939
  %_6982 = and i64 %_6984, 1
  %_6981 = icmp eq i64 %_6982, 1
  br i1 %_6981, label %_then6987, label %_else6988
_then6987:
  %_6991 = lshr i64 %_6993, 1
  %_6993 = load i64, i64* %_x6938
  %_6996 = load i64, i64* %_y6939
  %_retval6997 = call i64 @binary_gcd(i64 %_6991, i64 %_6996)
  ret i64 %_retval6997
_else6988:
  %_7001 = lshr i64 %_7003, 1
  %_7003 = load i64, i64* %_x6938
  %_7005 = lshr i64 %_7007, 1
  %_7007 = load i64, i64* %_y6939
  %_retval7009 = call i64 @binary_gcd(i64 %_7001, i64 %_7005)
  %_6999 = shl i64 %_retval7009, 1
  ret i64 %_6999
_end6989:
  br label %_end6980
_else6979:
  br label %_end6980
_end6980:
  %_7014 = xor i64 -1, %_7016
  %_7016 = load i64, i64* %_y6939
  %_7013 = and i64 %_7014, 1
  %_7012 = icmp eq i64 %_7013, 1
  br i1 %_7012, label %_then7019, label %_else7020
_then7019:
  %_7024 = load i64, i64* %_x6938
  %_7025 = lshr i64 %_7027, 1
  %_7027 = load i64, i64* %_y6939
  %_retval7029 = call i64 @binary_gcd(i64 %_7024, i64 %_7025)
  ret i64 %_retval7029
_else7020:
  br label %_end7021
_end7021:
  %_7033 = load i64, i64* %_x6938
  %_7035 = load i64, i64* %_y6939
  %_7031 = icmp sgt i64 %_7033, %_7035
  br i1 %_7031, label %_then7036, label %_else7037
_then7036:
  %_7040 = lshr i64 %_7041, 1
  %_7041 = sub i64 %_7043, %_7045
  %_7045 = load i64, i64* %_y6939
  %_7043 = load i64, i64* %_x6938
  %_7048 = load i64, i64* %_y6939
  %_retval7049 = call i64 @binary_gcd(i64 %_7040, i64 %_7048)
  ret i64 %_retval7049
_else7037:
  br label %_end7038
_end7038:
  %_7052 = lshr i64 %_7053, 1
  %_7053 = sub i64 %_7055, %_7057
  %_7057 = load i64, i64* %_x6938
  %_7055 = load i64, i64* %_y6939
  %_7060 = load i64, i64* %_x6938
  %_retval7061 = call i64 @binary_gcd(i64 %_7052, i64 %_7060)
  ret i64 %_retval7061
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6925 = alloca i64
  store i64 %argc, i64* %_argc6925
  %_argv6926 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6926
  %_x6927 = alloca i64
  %_y6929 = alloca i64
  store i64 21, i64* %_x6927
  store i64 15, i64* %_y6929
  %_6933 = load i64, i64* %_x6927
  %_6935 = load i64, i64* %_y6929
  %_retval6936 = call i64 @binary_gcd(i64 %_6933, i64 %_6935)
  ret i64 %_retval6936
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
