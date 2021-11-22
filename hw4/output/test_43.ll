; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_id2041 = load i64, i64* @a
  %_bop2040 = add i64 %_id2041, 1
  store i64 %_bop2040, i64* @a
  %_id2042 = load i64, i64* @a
  ret i64 %_id2042
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b2021 = alloca { i64, [0 x i64] }*
  %_argc2019 = alloca i64
  store i64 %argc, i64* %_argc2019
  %_argv2020 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2020
  %_Call_retval2022 = call i64 @f()
  %_raw_array2023 = call i64* @oat_alloc_array(i64 %_Call_retval2022)
  %_array2024 = bitcast i64* %_raw_array2023 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2024, { i64, [0 x i64] }** %_b2021
  %_Call_retval2025 = call i64 @f()
  %_id2026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2021
  %_index_ptr2027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2026, i32 0, i32 1, i32 0
  store i64 %_Call_retval2025, i64* %_index_ptr2027
  %_Call_retval2028 = call i64 @f()
  %_id2029 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2021
  %_index_ptr2030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2029, i32 0, i32 1, i32 1
  store i64 %_Call_retval2028, i64* %_index_ptr2030
  %_id2033 = load i64, i64* @a
  %_id2034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2021
  %_index_ptr2035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2034, i32 0, i32 1, i32 0
  %_idx_tmp2036 = load i64, i64* %_index_ptr2035
  %_bop2032 = add i64 %_id2033, %_idx_tmp2036
  %_id2037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2021
  %_index_ptr2038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2037, i32 0, i32 1, i32 1
  %_idx_tmp2039 = load i64, i64* %_index_ptr2038
  %_bop2031 = add i64 %_bop2032, %_idx_tmp2039
  ret i64 %_bop2031
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
