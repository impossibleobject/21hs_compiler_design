; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n1029 = alloca i64
  store i64 %n, i64* %_n1029
  %_1032 = load i64, i64* %_n1029
  %_1030 = icmp eq i64 %_1032, 0
  br i1 %_1030, label %_then1034, label %_else1035
_then1034:
  ret i64 0
_else1035:
  br label %_end1036
_end1036:
  %_1041 = load i64, i64* %_n1029
  %_1039 = icmp eq i64 %_1041, 1
  br i1 %_1039, label %_then1043, label %_else1044
_then1043:
  ret i64 1
_else1044:
  br label %_end1045
_end1045:
  %_1050 = sub i64 %_1052, 1
  %_1052 = load i64, i64* %_n1029
  %_retval1054 = call i64 @fibR(i64 %_1050)
  %_1056 = sub i64 %_1058, 2
  %_1058 = load i64, i64* %_n1029
  %_retval1060 = call i64 @fibR(i64 %_1056)
  %_1048 = add i64 %_retval1054, %_retval1060
  ret i64 %_1048
}

define i64 @fibI(i64 %n) {
  %_n969 = alloca i64
  store i64 %n, i64* %_n969
  %_a970 = alloca i64
  store i64 0, i64* %_a970
  %_b972 = alloca i64
  store i64 1, i64* %_b972
  %_old1003 = alloca i64
  store i64 %_1005, i64* %_old1003
  %_976 = load i64, i64* %_n969
  %_974 = icmp eq i64 %_976, 0
  br i1 %_974, label %_then978, label %_else979
_then978:
  %_982 = load i64, i64* %_a970
  ret i64 %_982
_else979:
  br label %_end980
_end980:
  %_986 = load i64, i64* %_n969
  %_984 = icmp eq i64 %_986, 1
  br i1 %_984, label %_then988, label %_else989
_then988:
  %_992 = load i64, i64* %_b972
  ret i64 %_992
_else989:
  br label %_end990
_end990:
  br label %_start1000
_start1000:
  %_997 = load i64, i64* %_n969
  %_995 = sub i64 %_997, 2
  %_994 = icmp sgt i64 %_995, 0
  br i1 %_994, label %_body1001, label %_end1002
_body1001:
  %_1005 = load i64, i64* %_b972
  %_1010 = load i64, i64* %_b972
  %_1012 = load i64, i64* %_a970
  %_1008 = add i64 %_1010, %_1012
  store i64 %_1008, i64* %_b972
  %_1016 = load i64, i64* %_old1003
  store i64 %_1016, i64* %_a970
  %_1021 = load i64, i64* %_n969
  %_1019 = sub i64 %_1021, 1
  store i64 %_1019, i64* %_n969
  br label %_start1000
_end1002:
  %_1025 = load i64, i64* %_a970
  %_1027 = load i64, i64* %_b972
  %_1023 = add i64 %_1025, %_1027
  ret i64 %_1023
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc945 = alloca i64
  store i64 %argc, i64* %_argc945
  %_argv946 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv946
  %_val947 = alloca i64
  store i64 1, i64* %_val947
  %_retval953 = call i64 @fibR(i64 12)
  %_950 = icmp eq i64 %_retval953, 144
  %_retval958 = call i64 @fibI(i64 12)
  %_955 = icmp eq i64 %_retval958, 144
  %_949 = and i1 %_950, %_955
  br i1 %_949, label %_then960, label %_else961
_then960:
  store i64 0, i64* %_val947
  br label %_end962
_else961:
  br label %_end962
_end962:
  %_967 = load i64, i64* %_val947
  ret i64 %_967
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
