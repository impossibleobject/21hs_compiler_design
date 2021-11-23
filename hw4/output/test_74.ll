; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_id2043 = load i64, i64* @a
  %_bop2042 = add i64 %_id2043, 1
  store i64 %_bop2042, i64* @a
  %_id2044 = load i64, i64* @a
  ret i64 %_id2044
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2023 = alloca { i64, [0 x i64] }*
  %_argc2021 = alloca i64
  store i64 %argc, i64* %_argc2021
  %_argv2022 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2022
  %_Call_retval2024 = call i64 @f()
  %_raw_array2025 = call i64* @oat_alloc_array(i64 %_Call_retval2024)
  %_array2026 = bitcast i64* %_raw_array2025 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2026, { i64, [0 x i64] }** %_b2023
  %_Call_retval2027 = call i64 @f()
  %_id2028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2023
  %_index_ptr2029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2028, i32 0, i32 1, i32 0
  store i64 %_Call_retval2027, i64* %_index_ptr2029
  %_Call_retval2030 = call i64 @f()
  %_id2031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2023
  %_index_ptr2032 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2031, i32 0, i32 1, i32 1
  store i64 %_Call_retval2030, i64* %_index_ptr2032
  %_id2035 = load i64, i64* @a
  %_id2036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2023
  %_index_ptr2037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2036, i32 0, i32 1, i32 0
  %_idx_tmp2038 = load i64, i64* %_index_ptr2037
  %_bop2034 = add i64 %_id2035, %_idx_tmp2038
  %_id2039 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2023
  %_index_ptr2040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2039, i32 0, i32 1, i32 1
  %_idx_tmp2041 = load i64, i64* %_index_ptr2040
  %_bop2033 = add i64 %_bop2034, %_idx_tmp2041
  ret i64 %_bop2033
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
