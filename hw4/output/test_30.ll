; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n968 = alloca i64
  store i64 %n, i64* %_n968
  %_971 = load i64, i64* %_n968
  %_969 = icmp eq i64 %_971, 0
  br i1 %_969, label %_then973, label %_else974
_then973:
  ret i64 0
_else974:
  br label %_end975
_end975:
  %_980 = load i64, i64* %_n968
  %_978 = icmp eq i64 %_980, 1
  br i1 %_978, label %_then982, label %_else983
_then982:
  ret i64 1
_else983:
  br label %_end984
_end984:
  %_989 = sub i64 %_991, 1
  %_991 = load i64, i64* %_n968
  %_retval993 = call i64 @fibR(i64 %_989)
  %_995 = sub i64 %_997, 2
  %_997 = load i64, i64* %_n968
  %_retval999 = call i64 @fibR(i64 %_995)
  %_987 = add i64 %_retval993, %_retval999
  ret i64 %_987
}

define i64 @fibI(i64 %n) {
  %_n908 = alloca i64
  store i64 %n, i64* %_n908
  %_a909 = alloca i64
  store i64 0, i64* %_a909
  %_b911 = alloca i64
  store i64 1, i64* %_b911
  %_old942 = alloca i64
  store i64 %_944, i64* %_old942
  %_915 = load i64, i64* %_n908
  %_913 = icmp eq i64 %_915, 0
  br i1 %_913, label %_then917, label %_else918
_then917:
  %_921 = load i64, i64* %_a909
  ret i64 %_921
_else918:
  br label %_end919
_end919:
  %_925 = load i64, i64* %_n908
  %_923 = icmp eq i64 %_925, 1
  br i1 %_923, label %_then927, label %_else928
_then927:
  %_931 = load i64, i64* %_b911
  ret i64 %_931
_else928:
  br label %_end929
_end929:
  br label %_start939
_start939:
  %_936 = load i64, i64* %_n908
  %_934 = sub i64 %_936, 2
  %_933 = icmp sgt i64 %_934, 0
  br i1 %_933, label %_body940, label %_end941
_body940:
  %_944 = load i64, i64* %_b911
  %_949 = load i64, i64* %_b911
  %_951 = load i64, i64* %_a909
  %_947 = add i64 %_949, %_951
  store i64 %_947, i64* %_b911
  %_955 = load i64, i64* %_old942
  store i64 %_955, i64* %_a909
  %_960 = load i64, i64* %_n908
  %_958 = sub i64 %_960, 1
  store i64 %_958, i64* %_n908
  br label %_start939
_end941:
  %_964 = load i64, i64* %_a909
  %_966 = load i64, i64* %_b911
  %_962 = add i64 %_964, %_966
  ret i64 %_962
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc884 = alloca i64
  store i64 %argc, i64* %_argc884
  %_argv885 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv885
  %_val886 = alloca i64
  store i64 1, i64* %_val886
  %_retval892 = call i64 @fibR(i64 12)
  %_889 = icmp eq i64 %_retval892, 144
  %_retval897 = call i64 @fibI(i64 12)
  %_894 = icmp eq i64 %_retval897, 144
  %_888 = and i1 %_889, %_894
  br i1 %_888, label %_then899, label %_else900
_then899:
  store i64 0, i64* %_val886
  br label %_end901
_else900:
  br label %_end901
_end901:
  %_906 = load i64, i64* %_val886
  ret i64 %_906
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
