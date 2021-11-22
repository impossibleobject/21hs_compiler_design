; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr1 = alloca { i64, [0 x i64] }*
  %str = alloca i8*
  %arr2 = alloca { i64, [0 x i64] }*
  %s = alloca i64
  %i = alloca i64
  %_argc2030 = alloca i64
  store i64 %argc, i64* %_argc2030
  %_argv2031 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2031
  %_raw_array2032 = call i64* @oat_alloc_array(i64 5)
  %_array2033 = bitcast i64* %_raw_array2032 to { i64, [0 x i64] }*
  %_CArr_elem_42038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2033, i32 0, i32 1, i32 4
  store i64 115, i64* %_CArr_elem_42038
  %_CArr_elem_32037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2033, i32 0, i32 1, i32 3
  store i64 114, i64* %_CArr_elem_32037
  %_CArr_elem_22036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2033, i32 0, i32 1, i32 2
  store i64 113, i64* %_CArr_elem_22036
  %_CArr_elem_12035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2033, i32 0, i32 1, i32 1
  store i64 112, i64* %_CArr_elem_12035
  %_CArr_elem_02034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2033, i32 0, i32 1, i32 0
  store i64 111, i64* %_CArr_elem_02034
  store { i64, [0 x i64] }* %_array2033, { i64, [0 x i64] }** %arr1
  %_id2039 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_Call_retval2040 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2039)
  store i8* %_Call_retval2040, i8** %str
  %_id2041 = load i8*, i8** %str
  %_Call_retval2042 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2041)
  store { i64, [0 x i64] }* %_Call_retval2042, { i64, [0 x i64] }** %arr2
  store i64 0, i64* %s
  store i64 0, i64* %i
  br label %_start2045
_start2045:
  %_id2044 = load i64, i64* %i
  %_bop2043 = icmp slt i64 %_id2044, 5
  br i1 %_bop2043, label %_body2046, label %_end2047
_body2046:
  %_id2049 = load i64, i64* %s
  %_id2050 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr2
  %_id2051 = load i64, i64* %i
  %_index_ptr2052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2050, i32 0, i32 1, i64 %_id2051
  %_idx_tmp2053 = load i64, i64* %_index_ptr2052
  %_bop2048 = add i64 %_id2049, %_idx_tmp2053
  store i64 %_bop2048, i64* %s
  %_id2055 = load i64, i64* %i
  %_bop2054 = add i64 %_id2055, 1
  store i64 %_bop2054, i64* %i
  br label %_start2045
_end2047:
  %_id2056 = load i64, i64* %s
  ret i64 %_id2056
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
