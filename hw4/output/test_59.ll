; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1077 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1077
  %_id1078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1077
  %_index_ptr1079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1078, i32 0, i32 1, i32 1
  %_idx_tmp1080 = load i64, i64* %_index_ptr1079
  ret i64 %_idx_tmp1080
}

define i64 @g(i64 %x) {
  %arr = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %_x1060 = alloca i64
  store i64 %x, i64* %_x1060
  %_raw_array1061 = call i64* @oat_alloc_array(i64 3)
  %_array1062 = bitcast i64* %_raw_array1061 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1062, { i64, [0 x i64] }** %arr
  store i64 0, i64* %i
  br label %_start1065
_start1065:
  %_id1064 = load i64, i64* %i
  %_bop1063 = icmp slt i64 %_id1064, 3
  br i1 %_bop1063, label %_body1066, label %_end1067
_body1066:
  %_id1068 = load i64, i64* %_x1060
  %_id1069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_id1070 = load i64, i64* %i
  %_index_ptr1071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1069, i32 0, i32 1, i64 %_id1070
  store i64 %_id1068, i64* %_index_ptr1071
  %_id1073 = load i64, i64* %i
  %_bop1072 = add i64 %_id1073, 1
  store i64 %_bop1072, i64* %i
  br label %_start1065
_end1067:
  %_id1074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_index_ptr1075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1074, i32 0, i32 1, i32 1
  %_idx_tmp1076 = load i64, i64* %_index_ptr1075
  ret i64 %_idx_tmp1076
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %arr = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %arr0 = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %_argc1004 = alloca i64
  store i64 %argc, i64* %_argc1004
  %_argv1005 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1005
  %_raw_array1006 = call i64* @oat_alloc_array(i64 3)
  %_array1007 = bitcast i64* %_raw_array1006 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1007, { i64, [0 x i64] }** %a
  store i64 0, i64* %i
  br label %_start1010
_start1010:
  %_id1009 = load i64, i64* %i
  %_bop1008 = icmp slt i64 %_id1009, 3
  br i1 %_bop1008, label %_body1011, label %_end1012
_body1011:
  %_id1013 = load i64, i64* %i
  %_id1014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_id1015 = load i64, i64* %i
  %_index_ptr1016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1014, i32 0, i32 1, i64 %_id1015
  store i64 %_id1013, i64* %_index_ptr1016
  %_id1018 = load i64, i64* %i
  %_bop1017 = add i64 %_id1018, 1
  store i64 %_bop1017, i64* %i
  br label %_start1010
_end1012:
  %_raw_array1019 = call i64* @oat_alloc_array(i64 4)
  %_array1020 = bitcast i64* %_raw_array1019 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1020, { i64, [0 x i64] }** %arr
  store i64 0, i64* %i
  br label %_start1023
_start1023:
  %_id1022 = load i64, i64* %i
  %_bop1021 = icmp slt i64 %_id1022, 4
  br i1 %_bop1021, label %_body1024, label %_end1025
_body1024:
  %_id1027 = load i64, i64* %i
  %_id1028 = load i64, i64* %i
  %_bop1026 = mul i64 %_id1027, %_id1028
  %_id1029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_id1030 = load i64, i64* %i
  %_index_ptr1031 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1029, i32 0, i32 1, i64 %_id1030
  store i64 %_bop1026, i64* %_index_ptr1031
  %_id1033 = load i64, i64* %i
  %_bop1032 = add i64 %_id1033, 1
  store i64 %_bop1032, i64* %i
  br label %_start1023
_end1025:
  %_raw_array1034 = call i64* @oat_alloc_array(i64 3)
  %_array1035 = bitcast i64* %_raw_array1034 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1035, { i64, [0 x i64] }** %arr0
  store i64 0, i64* %i
  br label %_start1038
_start1038:
  %_id1037 = load i64, i64* %i
  %_bop1036 = icmp slt i64 %_id1037, 3
  br i1 %_bop1036, label %_body1039, label %_end1040
_body1039:
  %_id1042 = load i64, i64* %i
  %_bop1041 = mul i64 2, %_id1042
  %_id1043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr0
  %_id1044 = load i64, i64* %i
  %_index_ptr1045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1043, i32 0, i32 1, i64 %_id1044
  store i64 %_bop1041, i64* %_index_ptr1045
  %_id1047 = load i64, i64* %i
  %_bop1046 = add i64 %_id1047, 1
  store i64 %_bop1046, i64* %i
  br label %_start1038
_end1040:
  %_id1051 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_index_ptr1052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1051, i32 0, i32 1, i32 3
  %_idx_tmp1055 = load i64, i64* %_index_ptr1052
  %_id1053 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr1054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1053, i32 0, i32 1, i32 1
  %_idx_tmp1056 = load i64, i64* %_index_ptr1054
  %_bop1050 = add i64 %_idx_tmp1055, %_idx_tmp1056
  %_id1057 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr0
  %_Call_retval1058 = call i64 @f({ i64, [0 x i64] }* %_id1057)
  %_bop1049 = add i64 %_bop1050, %_Call_retval1058
  %_Call_retval1059 = call i64 @g(i64 4)
  %_bop1048 = add i64 %_bop1049, %_Call_retval1059
  ret i64 %_bop1048
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
