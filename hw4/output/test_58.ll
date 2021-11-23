; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1068 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1068
  %_id1069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1068
  %_index_ptr1070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1069, i32 0, i32 1, i32 3
  %_idx_tmp1071 = load i64, i64* %_index_ptr1070
  ret i64 %_idx_tmp1071
}

define { i64, [0 x i64] }* @g() {
  %_arr1060 = alloca { i64, [0 x i64] }*
  %_raw_array1061 = call i64* @oat_alloc_array(i64 4)
  %_array1062 = bitcast i64* %_raw_array1061 to { i64, [0 x i64] }*
  %_CArr_elem_31066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 3
  store i64 99, i64* %_CArr_elem_31066
  %_CArr_elem_21065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_21065
  %_CArr_elem_11064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_11064
  %_CArr_elem_01063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1062, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_01063
  store { i64, [0 x i64] }* %_array1062, { i64, [0 x i64] }** %_arr1060
  %_id1067 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1060
  ret { i64, [0 x i64] }* %_id1067
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr1993 = alloca { i64, [0 x i64] }*
  %_arr2999 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1020 = alloca i64
  %_arr41021 = alloca { i64, [0 x i64] }*
  %_arr31023 = alloca { i64, [0 x i64] }*
  %_argc991 = alloca i64
  store i64 %argc, i64* %_argc991
  %_argv992 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv992
  %_raw_array994 = call i64* @oat_alloc_array(i64 3)
  %_array995 = bitcast i64* %_raw_array994 to { i64, [0 x i64] }*
  %_CArr_elem_2998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array995, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_2998
  %_CArr_elem_1997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array995, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1997
  %_CArr_elem_0996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array995, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_0996
  store { i64, [0 x i64] }* %_array995, { i64, [0 x i64] }** %_arr1993
  %_raw_array1000 = call i64* @oat_alloc_array(i64 3)
  %_array1001 = bitcast i64* %_raw_array1000 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1012 = call i64* @oat_alloc_array(i64 3)
  %_array1013 = bitcast i64* %_raw_array1012 to { i64, [0 x i64] }*
  %_CArr_elem_21016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1013, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_21016
  %_CArr_elem_11015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1013, i32 0, i32 1, i32 1
  store i64 99, i64* %_CArr_elem_11015
  %_CArr_elem_01014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1013, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_01014
  %_CArr_elem_21019 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1001, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1013, { i64, [0 x i64] }** %_CArr_elem_21019
  %_raw_array1007 = call i64* @oat_alloc_array(i64 3)
  %_array1008 = bitcast i64* %_raw_array1007 to { i64, [0 x i64] }*
  %_CArr_elem_21011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1008, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_21011
  %_CArr_elem_11010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1008, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_11010
  %_CArr_elem_01009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1008, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_01009
  %_CArr_elem_11018 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1001, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1008, { i64, [0 x i64] }** %_CArr_elem_11018
  %_raw_array1002 = call i64* @oat_alloc_array(i64 3)
  %_array1003 = bitcast i64* %_raw_array1002 to { i64, [0 x i64] }*
  %_CArr_elem_21006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1003, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_21006
  %_CArr_elem_11005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1003, i32 0, i32 1, i32 1
  store i64 99, i64* %_CArr_elem_11005
  %_CArr_elem_01004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1003, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_01004
  %_CArr_elem_01017 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1001, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1003, { i64, [0 x i64] }** %_CArr_elem_01017
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1001, { i64, [0 x { i64, [0 x i64] }*] }** %_arr2999
  store i64 1, i64* %_c1020
  %_Call_retval1022 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_Call_retval1022, { i64, [0 x i64] }** %_arr41021
  %_raw_array1024 = call i64* @oat_alloc_array(i64 4)
  %_array1025 = bitcast i64* %_raw_array1024 to { i64, [0 x i64] }*
  %_CArr_elem_31029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 3
  store i64 1, i64* %_CArr_elem_31029
  %_CArr_elem_21028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_21028
  %_CArr_elem_11027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 1
  store i64 99, i64* %_CArr_elem_11027
  %_CArr_elem_01026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1025, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_01026
  store { i64, [0 x i64] }* %_array1025, { i64, [0 x i64] }** %_arr31023
  %_id1031 = load i64, i64* %_c1020
  %_id1032 = load i64, i64* @i
  %_bop1030 = add i64 %_id1031, %_id1032
  store i64 %_bop1030, i64* %_c1020
  %_id1034 = load i64, i64* %_c1020
  %_id1035 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1993
  %_index_ptr1036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1035, i32 0, i32 1, i32 1
  %_idx_tmp1037 = load i64, i64* %_index_ptr1036
  %_bop1033 = add i64 %_id1034, %_idx_tmp1037
  store i64 %_bop1033, i64* %_c1020
  %_id1039 = load i64, i64* %_c1020
  %_id1040 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr2999
  %_index_ptr1041 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id1040, i32 0, i32 1, i32 1
  %_idx_tmp1042 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1041
  %_index_ptr1043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp1042, i32 0, i32 1, i32 1
  %_idx_tmp1044 = load i64, i64* %_index_ptr1043
  %_bop1038 = add i64 %_id1039, %_idx_tmp1044
  store i64 %_bop1038, i64* %_c1020
  %_id1046 = load i64, i64* %_c1020
  %_id1047 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31023
  %_index_ptr1048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1047, i32 0, i32 1, i32 3
  %_idx_tmp1049 = load i64, i64* %_index_ptr1048
  %_bop1045 = add i64 %_id1046, %_idx_tmp1049
  store i64 %_bop1045, i64* %_c1020
  %_id1051 = load i64, i64* %_c1020
  %_id1052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31023
  %_Call_retval1053 = call i64 @f({ i64, [0 x i64] }* %_id1052)
  %_bop1050 = add i64 %_id1051, %_Call_retval1053
  store i64 %_bop1050, i64* %_c1020
  %_id1055 = load i64, i64* %_c1020
  %_id1056 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41021
  %_index_ptr1057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1056, i32 0, i32 1, i32 1
  %_idx_tmp1058 = load i64, i64* %_index_ptr1057
  %_bop1054 = add i64 %_id1055, %_idx_tmp1058
  store i64 %_bop1054, i64* %_c1020
  %_id1059 = load i64, i64* %_c1020
  ret i64 %_id1059
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
