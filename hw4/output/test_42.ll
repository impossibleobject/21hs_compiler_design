; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_id2030 = load i64, i64* 1
  %_bop2029 = add i64 %_id2030, 1
  store i64 %_bop2029, i64* %a
  %_id2031 = load i64, i64* 1
  ret i64 %_id2031
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2010 = alloca i64
  store i64 %argc, i64* %_argc2010
  %_argv2011 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2011
  %_b2012 = alloca { i64, [0 x i64] }*
  %_Call_retval2013 = call i64 @f()
  %_raw_array2014 = call i64* @oat_alloc_array(i64 %_Call_retval2013)
  %_array2015 = bitcast i64* %_raw_array2014 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2015, { i64, [0 x i64] }** %_b2012
  %_id2016 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2012
  %_index_ptr2017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2016, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr2017
  %_id2018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2012
  %_index_ptr2019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2018, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr2019
  %_id2022 = load i64, i64* 1
  %_id2023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2012
  %_index_ptr2024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2023, i32 0, i32 1, i32 0
  %_idx_tmp2025 = load i64, i64* %_index_ptr2024
  %_bop2021 = add i64 %_id2022, %_idx_tmp2025
  %_id2026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2012
  %_index_ptr2027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2026, i32 0, i32 1, i32 1
  %_idx_tmp2028 = load i64, i64* %_index_ptr2027
  %_bop2020 = add i64 %_bop2021, %_idx_tmp2028
  ret i64 %_bop2020
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
