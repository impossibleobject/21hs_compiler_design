; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1000 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1000
  %_id1001 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1000
  %_index_ptr1002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1001, i32 0, i32 1, i32 3
  %_idx_tmp1003 = load i64, i64* %_index_ptr1002
  ret i64 %_idx_tmp1003
}

define { i64, [0 x i64] }* @g() {
  %arr = alloca { i64, [0 x i64] }*
  %_raw_array993 = call i64* @oat_alloc_array(i64 4)
  %_array994 = bitcast i64* %_raw_array993 to { i64, [0 x i64] }*
  %_CArr_elem_3998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 3
  store i64 99, i64* %_CArr_elem_3998
  %_CArr_elem_2997 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_2997
  %_CArr_elem_1996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1996
  %_CArr_elem_0995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_0995
  store { i64, [0 x i64] }* %_array994, { i64, [0 x i64] }** %arr
  %_id999 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  ret { i64, [0 x i64] }* %_id999
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr1 = alloca { i64, [0 x i64] }*
  %arr2 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %c = alloca i64
  %arr4 = alloca { i64, [0 x i64] }*
  %arr3 = alloca { i64, [0 x i64] }*
  %_argc929 = alloca i64
  store i64 %argc, i64* %_argc929
  %_argv930 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv930
  %_raw_array931 = call i64* @oat_alloc_array(i64 3)
  %_array932 = bitcast i64* %_raw_array931 to { i64, [0 x i64] }*
  %_CArr_elem_2935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array932, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_2935
  %_CArr_elem_1934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array932, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1934
  %_CArr_elem_0933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array932, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_0933
  store { i64, [0 x i64] }* %_array932, { i64, [0 x i64] }** %arr1
  %_raw_array936 = call i64* @oat_alloc_array(i64 3)
  %_array937 = bitcast i64* %_raw_array936 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array948 = call i64* @oat_alloc_array(i64 3)
  %_array949 = bitcast i64* %_raw_array948 to { i64, [0 x i64] }*
  %_CArr_elem_2952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array949, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_2952
  %_CArr_elem_1951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array949, i32 0, i32 1, i32 1
  store i64 99, i64* %_CArr_elem_1951
  %_CArr_elem_0950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array949, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_0950
  %_CArr_elem_2955 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array937, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array949, { i64, [0 x i64] }** %_CArr_elem_2955
  %_raw_array943 = call i64* @oat_alloc_array(i64 3)
  %_array944 = bitcast i64* %_raw_array943 to { i64, [0 x i64] }*
  %_CArr_elem_2947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array944, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_2947
  %_CArr_elem_1946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array944, i32 0, i32 1, i32 1
  store i64 1, i64* %_CArr_elem_1946
  %_CArr_elem_0945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array944, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_0945
  %_CArr_elem_1954 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array937, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array944, { i64, [0 x i64] }** %_CArr_elem_1954
  %_raw_array938 = call i64* @oat_alloc_array(i64 3)
  %_array939 = bitcast i64* %_raw_array938 to { i64, [0 x i64] }*
  %_CArr_elem_2942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array939, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_2942
  %_CArr_elem_1941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array939, i32 0, i32 1, i32 1
  store i64 99, i64* %_CArr_elem_1941
  %_CArr_elem_0940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array939, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_0940
  %_CArr_elem_0953 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array937, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array939, { i64, [0 x i64] }** %_CArr_elem_0953
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array937, { i64, [0 x { i64, [0 x i64] }*] }** %arr2
  store i64 1, i64* %c
  %_Call_retval956 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_Call_retval956, { i64, [0 x i64] }** %arr4
  %_raw_array957 = call i64* @oat_alloc_array(i64 4)
  %_array958 = bitcast i64* %_raw_array957 to { i64, [0 x i64] }*
  %_CArr_elem_3962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 3
  store i64 1, i64* %_CArr_elem_3962
  %_CArr_elem_2961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 2
  store i64 99, i64* %_CArr_elem_2961
  %_CArr_elem_1960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 1
  store i64 99, i64* %_CArr_elem_1960
  %_CArr_elem_0959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array958, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_0959
  store { i64, [0 x i64] }* %_array958, { i64, [0 x i64] }** %arr3
  %_id964 = load i64, i64* %c
  %_id965 = load i64, i64* @i
  %_bop963 = add i64 %_id964, %_id965
  store i64 %_bop963, i64* %c
  %_id967 = load i64, i64* %c
  %_id968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_index_ptr969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id968, i32 0, i32 1, i32 1
  %_idx_tmp970 = load i64, i64* %_index_ptr969
  %_bop966 = add i64 %_id967, %_idx_tmp970
  store i64 %_bop966, i64* %c
  %_id972 = load i64, i64* %c
  %_id973 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr2
  %_index_ptr974 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id973, i32 0, i32 1, i32 1
  %_idx_tmp975 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr974
  %_index_ptr976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp975, i32 0, i32 1, i32 1
  %_idx_tmp977 = load i64, i64* %_index_ptr976
  %_bop971 = add i64 %_id972, %_idx_tmp977
  store i64 %_bop971, i64* %c
  %_id979 = load i64, i64* %c
  %_id980 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr3
  %_index_ptr981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id980, i32 0, i32 1, i32 3
  %_idx_tmp982 = load i64, i64* %_index_ptr981
  %_bop978 = add i64 %_id979, %_idx_tmp982
  store i64 %_bop978, i64* %c
  %_id984 = load i64, i64* %c
  %_id985 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr3
  %_Call_retval986 = call i64 @f({ i64, [0 x i64] }* %_id985)
  %_bop983 = add i64 %_id984, %_Call_retval986
  store i64 %_bop983, i64* %c
  %_id988 = load i64, i64* %c
  %_id989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr4
  %_index_ptr990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id989, i32 0, i32 1, i32 1
  %_idx_tmp991 = load i64, i64* %_index_ptr990
  %_bop987 = add i64 %_id988, %_idx_tmp991
  store i64 %_bop987, i64* %c
  %_id992 = load i64, i64* %c
  ret i64 %_id992
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
