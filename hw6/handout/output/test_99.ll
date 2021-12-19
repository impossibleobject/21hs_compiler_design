; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str_arr7889 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %_arr8109, i64 %_len8106) {
  %_arr8110 = alloca { i64, [0 x i64] }*
  %_len8107 = alloca i64
  %_min8117 = alloca i64
  %_i8119 = alloca i64
  store { i64, [0 x i64] }* %_arr8109, { i64, [0 x i64] }** %_arr8110
  store i64 %_len8106, i64* %_len8107
  %_arr8112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8110
  %_tmp8114 = bitcast { i64, [0 x i64] }* %_arr8112 to i64*
  call void @oat_assert_array_length(i64* %_tmp8114, i64 0)
  %_index_ptr8115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8112, i32 0, i32 1, i32 0
  %_index8116 = load i64, i64* %_index_ptr8115
  store i64 %_index8116, i64* %_min8117
  store i64 0, i64* %_i8119
  br label %_cond8126
_body8125:
  %_arr8127 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8110
  %_i8128 = load i64, i64* %_i8119
  %_tmp8130 = bitcast { i64, [0 x i64] }* %_arr8127 to i64*
  call void @oat_assert_array_length(i64* %_tmp8130, i64 %_i8128)
  %_index_ptr8131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8127, i32 0, i32 1, i64 %_i8128
  %_index8132 = load i64, i64* %_index_ptr8131
  %_min8133 = load i64, i64* %_min8117
  %_bop8134 = icmp slt i64 %_index8132, %_min8133
  br i1 %_bop8134, label %_then8144, label %_else8143
_cond8126:
  %_i8121 = load i64, i64* %_i8119
  %_len8122 = load i64, i64* %_len8107
  %_bop8123 = icmp slt i64 %_i8121, %_len8122
  br i1 %_bop8123, label %_body8125, label %_post8124
_else8143:
  br label %_merge8142
_merge8142:
  %_i8145 = load i64, i64* %_i8119
  %_bop8146 = add i64 %_i8145, 1
  store i64 %_bop8146, i64* %_i8119
  br label %_cond8126
_post8124:
  %_min8148 = load i64, i64* %_min8117
  ret i64 %_min8148
_then8144:
  %_arr8135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8110
  %_i8136 = load i64, i64* %_i8119
  %_tmp8138 = bitcast { i64, [0 x i64] }* %_arr8135 to i64*
  call void @oat_assert_array_length(i64* %_tmp8138, i64 %_i8136)
  %_index_ptr8139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8135, i32 0, i32 1, i64 %_i8136
  %_index8140 = load i64, i64* %_index_ptr8139
  store i64 %_index8140, i64* %_min8117
  br label %_merge8142
}

define i64 @max({ i64, [0 x i64] }* %_arr8066, i64 %_len8063) {
  %_arr8067 = alloca { i64, [0 x i64] }*
  %_len8064 = alloca i64
  %_max8074 = alloca i64
  %_i8076 = alloca i64
  store { i64, [0 x i64] }* %_arr8066, { i64, [0 x i64] }** %_arr8067
  store i64 %_len8063, i64* %_len8064
  %_arr8069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8067
  %_tmp8071 = bitcast { i64, [0 x i64] }* %_arr8069 to i64*
  call void @oat_assert_array_length(i64* %_tmp8071, i64 0)
  %_index_ptr8072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8069, i32 0, i32 1, i32 0
  %_index8073 = load i64, i64* %_index_ptr8072
  store i64 %_index8073, i64* %_max8074
  store i64 0, i64* %_i8076
  br label %_cond8083
_body8082:
  %_arr8084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8067
  %_i8085 = load i64, i64* %_i8076
  %_tmp8087 = bitcast { i64, [0 x i64] }* %_arr8084 to i64*
  call void @oat_assert_array_length(i64* %_tmp8087, i64 %_i8085)
  %_index_ptr8088 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8084, i32 0, i32 1, i64 %_i8085
  %_index8089 = load i64, i64* %_index_ptr8088
  %_max8090 = load i64, i64* %_max8074
  %_bop8091 = icmp sgt i64 %_index8089, %_max8090
  br i1 %_bop8091, label %_then8101, label %_else8100
_cond8083:
  %_i8078 = load i64, i64* %_i8076
  %_len8079 = load i64, i64* %_len8064
  %_bop8080 = icmp slt i64 %_i8078, %_len8079
  br i1 %_bop8080, label %_body8082, label %_post8081
_else8100:
  br label %_merge8099
_merge8099:
  %_i8102 = load i64, i64* %_i8076
  %_bop8103 = add i64 %_i8102, 1
  store i64 %_bop8103, i64* %_i8076
  br label %_cond8083
_post8081:
  %_max8105 = load i64, i64* %_max8074
  ret i64 %_max8105
_then8101:
  %_arr8092 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr8067
  %_i8093 = load i64, i64* %_i8076
  %_tmp8095 = bitcast { i64, [0 x i64] }* %_arr8092 to i64*
  call void @oat_assert_array_length(i64* %_tmp8095, i64 %_i8093)
  %_index_ptr8096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr8092, i32 0, i32 1, i64 %_i8093
  %_index8097 = load i64, i64* %_index_ptr8096
  store i64 %_index8097, i64* %_max8074
  br label %_merge8099
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr7903, i64 %_len7900) {
  %_arr7904 = alloca { i64, [0 x i64] }*
  %_len7901 = alloca i64
  %_min7909 = alloca i64
  %_max7914 = alloca i64
  %_i7924 = alloca i64
  %_counts7943 = alloca { i64, [0 x i64] }*
  %_i7945 = alloca i64
  %_i7984 = alloca i64
  %_j7986 = alloca i64
  %_i27993 = alloca i64
  %_out8012 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr7903, { i64, [0 x i64] }** %_arr7904
  store i64 %_len7900, i64* %_len7901
  %_len7906 = load i64, i64* %_len7901
  %_arr7907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7904
  %_result7908 = call i64 @min({ i64, [0 x i64] }* %_arr7907, i64 %_len7906)
  store i64 %_result7908, i64* %_min7909
  %_len7911 = load i64, i64* %_len7901
  %_arr7912 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7904
  %_result7913 = call i64 @max({ i64, [0 x i64] }* %_arr7912, i64 %_len7911)
  store i64 %_result7913, i64* %_max7914
  %_max7918 = load i64, i64* %_max7914
  %_min7919 = load i64, i64* %_min7909
  %_bop7920 = sub i64 %_max7918, %_min7919
  %_bop7921 = add i64 %_bop7920, 1
  %_raw_array7922 = call i64* @oat_alloc_array(i64 %_bop7921)
  %_array7923 = bitcast i64* %_raw_array7922 to { i64, [0 x i64] }*
  %_bnd_7917 = alloca i64
  store i64 %_bop7921, i64* %_bnd_7917
  %_ptr_7916 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7923, { i64, [0 x i64] }** %_ptr_7916
  store i64 0, i64* %_i7924
  br label %_cond7931
_body7930:
  %__ptr_79167932 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7916
  %_i7933 = load i64, i64* %_i7924
  %_tmp7935 = bitcast { i64, [0 x i64] }* %__ptr_79167932 to i64*
  call void @oat_assert_array_length(i64* %_tmp7935, i64 %_i7933)
  %_index_ptr7936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_79167932, i32 0, i32 1, i64 %_i7933
  store i64 0, i64* %_index_ptr7936
  %_i7938 = load i64, i64* %_i7924
  %_bop7939 = add i64 %_i7938, 1
  store i64 %_bop7939, i64* %_i7924
  br label %_cond7931
_body7951:
  %_counts7953 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7943
  %_arr7954 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7904
  %_i7955 = load i64, i64* %_i7945
  %_tmp7957 = bitcast { i64, [0 x i64] }* %_arr7954 to i64*
  call void @oat_assert_array_length(i64* %_tmp7957, i64 %_i7955)
  %_index_ptr7958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr7954, i32 0, i32 1, i64 %_i7955
  %_index7959 = load i64, i64* %_index_ptr7958
  %_min7960 = load i64, i64* %_min7909
  %_bop7961 = sub i64 %_index7959, %_min7960
  %_tmp7963 = bitcast { i64, [0 x i64] }* %_counts7953 to i64*
  call void @oat_assert_array_length(i64* %_tmp7963, i64 %_bop7961)
  %_index_ptr7964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts7953, i32 0, i32 1, i64 %_bop7961
  %_counts7965 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7943
  %_arr7966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7904
  %_i7967 = load i64, i64* %_i7945
  %_tmp7969 = bitcast { i64, [0 x i64] }* %_arr7966 to i64*
  call void @oat_assert_array_length(i64* %_tmp7969, i64 %_i7967)
  %_index_ptr7970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr7966, i32 0, i32 1, i64 %_i7967
  %_index7971 = load i64, i64* %_index_ptr7970
  %_min7972 = load i64, i64* %_min7909
  %_bop7973 = sub i64 %_index7971, %_min7972
  %_tmp7975 = bitcast { i64, [0 x i64] }* %_counts7965 to i64*
  call void @oat_assert_array_length(i64* %_tmp7975, i64 %_bop7973)
  %_index_ptr7976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts7965, i32 0, i32 1, i64 %_bop7973
  %_index7977 = load i64, i64* %_index_ptr7976
  %_bop7978 = add i64 %_index7977, 1
  store i64 %_bop7978, i64* %_index_ptr7964
  %_i7980 = load i64, i64* %_i7945
  %_bop7981 = add i64 %_i7980, 1
  store i64 %_bop7981, i64* %_i7945
  br label %_cond7952
_body7999:
  %__ptr_79888001 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7988
  %_i28002 = load i64, i64* %_i27993
  %_tmp8004 = bitcast { i64, [0 x i64] }* %__ptr_79888001 to i64*
  call void @oat_assert_array_length(i64* %_tmp8004, i64 %_i28002)
  %_index_ptr8005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_79888001, i32 0, i32 1, i64 %_i28002
  store i64 0, i64* %_index_ptr8005
  %_i28007 = load i64, i64* %_i27993
  %_bop8008 = add i64 %_i28007, 1
  store i64 %_bop8008, i64* %_i27993
  br label %_cond8000
_body8018:
  %_counts8020 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7943
  %_i8021 = load i64, i64* %_i7984
  %_min8022 = load i64, i64* %_min7909
  %_bop8023 = sub i64 %_i8021, %_min8022
  %_tmp8025 = bitcast { i64, [0 x i64] }* %_counts8020 to i64*
  call void @oat_assert_array_length(i64* %_tmp8025, i64 %_bop8023)
  %_index_ptr8026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts8020, i32 0, i32 1, i64 %_bop8023
  %_index8027 = load i64, i64* %_index_ptr8026
  %_bop8028 = icmp sgt i64 %_index8027, 0
  br i1 %_bop8028, label %_then8061, label %_else8060
_cond7931:
  %_i7926 = load i64, i64* %_i7924
  %__bnd_79177927 = load i64, i64* %_bnd_7917
  %_bop7928 = icmp slt i64 %_i7926, %__bnd_79177927
  br i1 %_bop7928, label %_body7930, label %_post7929
_cond7952:
  %_i7947 = load i64, i64* %_i7945
  %_len7948 = load i64, i64* %_len7901
  %_bop7949 = icmp slt i64 %_i7947, %_len7948
  br i1 %_bop7949, label %_body7951, label %_post7950
_cond8000:
  %_i27995 = load i64, i64* %_i27993
  %__bnd_79897996 = load i64, i64* %_bnd_7989
  %_bop7997 = icmp slt i64 %_i27995, %__bnd_79897996
  br i1 %_bop7997, label %_body7999, label %_post7998
_cond8019:
  %_i8014 = load i64, i64* %_i7984
  %_max8015 = load i64, i64* %_max7914
  %_bop8016 = icmp sle i64 %_i8014, %_max8015
  br i1 %_bop8016, label %_body8018, label %_post8017
_else8060:
  %_i8056 = load i64, i64* %_i7984
  %_bop8057 = add i64 %_i8056, 1
  store i64 %_bop8057, i64* %_i7984
  br label %_merge8059
_merge8059:
  br label %_cond8019
_post7929:
  store { i64, [0 x i64] }* %_array7923, { i64, [0 x i64] }** %_counts7943
  store i64 0, i64* %_i7945
  br label %_cond7952
_post7950:
  %_min7983 = load i64, i64* %_min7909
  store i64 %_min7983, i64* %_i7984
  store i64 0, i64* %_j7986
  %_len7990 = load i64, i64* %_len7901
  %_raw_array7991 = call i64* @oat_alloc_array(i64 %_len7990)
  %_array7992 = bitcast i64* %_raw_array7991 to { i64, [0 x i64] }*
  %_bnd_7989 = alloca i64
  store i64 %_len7990, i64* %_bnd_7989
  %_ptr_7988 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7992, { i64, [0 x i64] }** %_ptr_7988
  store i64 0, i64* %_i27993
  br label %_cond8000
_post7998:
  store { i64, [0 x i64] }* %_array7992, { i64, [0 x i64] }** %_out8012
  br label %_cond8019
_post8017:
  %_out8062 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out8012
  ret { i64, [0 x i64] }* %_out8062
_then8061:
  %_out8029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out8012
  %_j8030 = load i64, i64* %_j7986
  %_tmp8032 = bitcast { i64, [0 x i64] }* %_out8029 to i64*
  call void @oat_assert_array_length(i64* %_tmp8032, i64 %_j8030)
  %_index_ptr8033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out8029, i32 0, i32 1, i64 %_j8030
  %_i8034 = load i64, i64* %_i7984
  store i64 %_i8034, i64* %_index_ptr8033
  %_counts8036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7943
  %_i8037 = load i64, i64* %_i7984
  %_min8038 = load i64, i64* %_min7909
  %_bop8039 = sub i64 %_i8037, %_min8038
  %_tmp8041 = bitcast { i64, [0 x i64] }* %_counts8036 to i64*
  call void @oat_assert_array_length(i64* %_tmp8041, i64 %_bop8039)
  %_index_ptr8042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts8036, i32 0, i32 1, i64 %_bop8039
  %_counts8043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts7943
  %_i8044 = load i64, i64* %_i7984
  %_min8045 = load i64, i64* %_min7909
  %_bop8046 = sub i64 %_i8044, %_min8045
  %_tmp8048 = bitcast { i64, [0 x i64] }* %_counts8043 to i64*
  call void @oat_assert_array_length(i64* %_tmp8048, i64 %_bop8046)
  %_index_ptr8049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts8043, i32 0, i32 1, i64 %_bop8046
  %_index8050 = load i64, i64* %_index_ptr8049
  %_bop8051 = sub i64 %_index8050, 1
  store i64 %_bop8051, i64* %_index_ptr8042
  %_j8053 = load i64, i64* %_j7986
  %_bop8054 = add i64 %_j8053, 1
  store i64 %_bop8054, i64* %_j7986
  br label %_merge8059
}

define i64 @program(i64 %_argc7859, { i64, [0 x i8*] }* %_argv7856) {
  %_arr7882 = alloca { i64, [0 x i64] }*
  %_len7884 = alloca i64
  %_sorted7895 = alloca { i64, [0 x i64] }*
  %_raw_array7862 = call i64* @oat_alloc_array(i64 9)
  %_array7863 = bitcast i64* %_raw_array7862 to { i64, [0 x i64] }*
  %_ind7864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7863, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind7864
  %_ind7866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7863, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind7866
  %_ind7868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7863, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind7868
  %_ind7870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7863, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind7870
  %_ind7872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7863, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind7872
  %_ind7874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7863, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind7874
  %_ind7876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7863, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind7876
  %_ind7878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7863, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind7878
  %_ind7880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7863, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind7880
  store { i64, [0 x i64] }* %_array7863, { i64, [0 x i64] }** %_arr7882
  store i64 9, i64* %_len7884
  %_arr7886 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7882
  %_result7887 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr7886)
  call void @print_string(i8* %_result7887)
  %_str7890 = getelementptr [2 x i8], [2 x i8]* @_str_arr7889, i32 0, i32 0
  call void @print_string(i8* %_str7890)
  %_len7892 = load i64, i64* %_len7884
  %_arr7893 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7882
  %_result7894 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr7893, i64 %_len7892)
  store { i64, [0 x i64] }* %_result7894, { i64, [0 x i64] }** %_sorted7895
  %_sorted7897 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted7895
  %_result7898 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted7897)
  call void @print_string(i8* %_result7898)
  ret i64 0
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
