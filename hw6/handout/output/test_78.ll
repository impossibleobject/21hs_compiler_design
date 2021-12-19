; generated from: hw5programs/compile_various_fields.oat
target triple = "x86_64-unknown-linux"
%Test = type { i64, i1, i8*, { i64, [0 x i64] }*, %Test*, i64 (i64)* }

@_str_arr6909 = global [6 x i8] c"hello\00"

define i64 @neg(i64 %_x6964) {
  %_x6965 = alloca i64
  store i64 %_x6964, i64* %_x6965
  %_x6967 = load i64, i64* %_x6965
  %_unop6968 = sub i64 0, %_x6967
  ret i64 %_unop6968
}

define i64 @program(i64 %_argc6900, { i64, [0 x i8*] }* %_argv6897) {
  %_j6917 = alloca i64
  %_n6942 = alloca %Test*
  %_raw_struct6903 = call i64* @oat_malloc(i64 48)
  %_struct6904 = bitcast i64* %_raw_struct6903 to %Test*
  %_ind6905 = getelementptr %Test, %Test* %_struct6904, i32 0, i32 0
  store i64 3, i64* %_ind6905
  %_ind6907 = getelementptr %Test, %Test* %_struct6904, i32 0, i32 1
  store i1 1, i1* %_ind6907
  %_str6910 = getelementptr [6 x i8], [6 x i8]* @_str_arr6909, i32 0, i32 0
  %_ind6911 = getelementptr %Test, %Test* %_struct6904, i32 0, i32 2
  store i8* %_str6910, i8** %_ind6911
  %_raw_array6915 = call i64* @oat_alloc_array(i64 3)
  %_array6916 = bitcast i64* %_raw_array6915 to { i64, [0 x i64] }*
  %_bnd_6914 = alloca i64
  store i64 3, i64* %_bnd_6914
  %_ptr_6913 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6916, { i64, [0 x i64] }** %_ptr_6913
  store i64 0, i64* %_j6917
  br label %_cond6924
_body6923:
  %__ptr_69136925 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_6913
  %_j6926 = load i64, i64* %_j6917
  %_tmp6928 = bitcast { i64, [0 x i64] }* %__ptr_69136925 to i64*
  call void @oat_assert_array_length(i64* %_tmp6928, i64 %_j6926)
  %_index_ptr6929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_69136925, i32 0, i32 1, i64 %_j6926
  store i64 0, i64* %_index_ptr6929
  %_j6931 = load i64, i64* %_j6917
  %_bop6932 = add i64 %_j6931, 1
  store i64 %_bop6932, i64* %_j6917
  br label %_cond6924
_cond6924:
  %_j6919 = load i64, i64* %_j6917
  %__bnd_69146920 = load i64, i64* %_bnd_6914
  %_bop6921 = icmp slt i64 %_j6919, %__bnd_69146920
  br i1 %_bop6921, label %_body6923, label %_post6922
_else6962:
  %_n6958 = load %Test*, %Test** %_n6942
  %_index6959 = getelementptr %Test, %Test* %_n6958, i32 0, i32 0
  %_proj6960 = load i64, i64* %_index6959
  ret i64 %_proj6960
_merge6961:
  ret i64 0
_post6922:
  %_ind6936 = getelementptr %Test, %Test* %_struct6904, i32 0, i32 3
  store { i64, [0 x i64] }* %_array6916, { i64, [0 x i64] }** %_ind6936
  %_ind6938 = getelementptr %Test, %Test* %_struct6904, i32 0, i32 4
  store %Test* null, %Test** %_ind6938
  %_ind6940 = getelementptr %Test, %Test* %_struct6904, i32 0, i32 5
  store i64 (i64)* @neg, i64 (i64)** %_ind6940
  store %Test* %_struct6904, %Test** %_n6942
  %_n6944 = load %Test*, %Test** %_n6942
  %_index6945 = getelementptr %Test, %Test* %_n6944, i32 0, i32 2
  %_proj6946 = load i8*, i8** %_index6945
  call void @print_string(i8* %_proj6946)
  %_n6948 = load %Test*, %Test** %_n6942
  %_index6949 = getelementptr %Test, %Test* %_n6948, i32 0, i32 1
  %_proj6950 = load i1, i1* %_index6949
  br i1 %_proj6950, label %_then6963, label %_else6962
_then6963:
  %_n6951 = load %Test*, %Test** %_n6942
  %_index6952 = getelementptr %Test, %Test* %_n6951, i32 0, i32 5
  %_proj6953 = load i64 (i64)*, i64 (i64)** %_index6952
  %_n6954 = load %Test*, %Test** %_n6942
  %_index6955 = getelementptr %Test, %Test* %_n6954, i32 0, i32 0
  %_proj6956 = load i64, i64* %_index6955
  %_result6957 = call i64 %_proj6953(i64 %_proj6956)
  ret i64 %_result6957
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
