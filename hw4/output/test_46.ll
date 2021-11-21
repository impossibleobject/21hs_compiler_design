; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2019 = alloca i8*
  store i8* %str, i8** %_str2019
  %_start2020 = alloca i64
  store i64 %start, i64* %_start2020
  %_len2021 = alloca i64
  store i64 %len, i64* %_len2021
  %_arr2022 = alloca { i64, [0 x i64] }*
  %_r2025 = alloca { i64, [0 x i64] }*
  %_i2029 = alloca i64
  %_id2023 = load i8*, i8** %_str2019
  %_Call_retval2024 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2023)
  store { i64, [0 x i64] }* %_Call_retval2024, { i64, [0 x i64] }** %_arr2022
  %_id2026 = load i64, i64* %_len2021
  %_raw_array2027 = call i64* @oat_alloc_array(i64 %_id2026)
  %_array2028 = bitcast i64* %_raw_array2027 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2028, { i64, [0 x i64] }** %_r2025
  store i64 0, i64* %_i2029
  br label %_start2033
_start2033:
  %_id2031 = load i64, i64* %_i2029
  %_id2032 = load i64, i64* %_len2021
  %_bop2030 = icmp slt i64 %_id2031, %_id2032
  br i1 %_bop2030, label %_body2034, label %_end2035
_body2034:
  %_id2036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2025
  %_id2037 = load i64, i64* %_i2029
  %_index_ptr2038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2036, i32 0, i32 1, i64 %_id2037
  %_id2039 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2022
  %_id2041 = load i64, i64* %_i2029
  %_id2042 = load i64, i64* %_start2020
  %_bop2040 = add i64 %_id2041, %_id2042
  %_index_ptr2043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2039, i32 0, i32 1, i64 %_bop2040
  store i64* %_index_ptr2043, i64** %_index_ptr2038
  %_id2046 = load i64, i64* %_i2029
  %_bop2045 = add i64 %_id2046, 1
  store i64 %_bop2045, i64* %_i2029
  br label %_start2033
_end2035:
  %_id2047 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2025
  %_Call_retval2048 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2047)
  %_2049 = load i8, i8* %_Call_retval2048
  ret i8* %_2049
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2012 = alloca i64
  store i64 %argc, i64* %_argc2012
  %_argv2013 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2013
  %_Call_retval2016 = call i8* @sub(i8** %_index_ptr2015, i64 3, i64 5)
  %_id2014 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2013
  %_index_ptr2015 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id2014, i32 0, i32 1, i32 1
  call void @print_string(i8* %_Call_retval2016)
  ret i64 0
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
