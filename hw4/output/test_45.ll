; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb1959 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1955 = alloca i64
  store i64 %argc, i64* %_argc1955
  %_argv1956 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1956
  %_arr1957 = alloca { i64, [0 x i64] }*
  %_sum1961 = alloca i64
  %_i1962 = alloca i64
  %_i1975 = alloca i64
  %_cstr_loc1958 = getelementptr [11 x i8], [11 x i8]* @_cstr_glb1959, i32 0, i32 0
  %_Call_retval1960 = call { i64, [0 x i64] }* @array_of_string(i8* %_cstr_loc1958)
  store { i64, [0 x i64] }* %_Call_retval1960, { i64, [0 x i64] }** %_arr1957
  store i64 0, i64* %_sum1961
  store i64 0, i64* %_i1962
  br label %_start1965
_start1965:
  %_id1964 = load i64, i64* %_i1962
  %_bop1963 = icmp slt i64 %_id1964, 10
  br i1 %_bop1963, label %_body1966, label %_end1967
_body1966:
  %_id1968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1957
  %_id1969 = load i64, i64* %_i1962
  %_index_ptr1970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1968, i32 0, i32 1, i64 %_id1969
  %_id1971 = load i64, i64* %_i1962
  store i64 %_id1971, i64* %_index_ptr1970
  %_id1974 = load i64, i64* %_i1962
  %_bop1973 = add i64 %_id1974, 1
  store i64 %_bop1973, i64* %_i1962
  br label %_start1965
_end1967:
  store i64 0, i64* %_i1975
  br label %_start1978
_start1978:
  %_id1977 = load i64, i64* %_i1975
  %_bop1976 = icmp slt i64 %_id1977, 10
  br i1 %_bop1976, label %_body1979, label %_end1980
_body1979:
  %_id1983 = load i64, i64* %_sum1961
  %_id1984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1957
  %_id1985 = load i64, i64* %_i1975
  %_index_ptr1986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1984, i32 0, i32 1, i64 %_id1985
  %_1987 = load i64, i64* %_index_ptr1986
  %_bop1982 = add i64 %_id1983, %_1987
  store i64 %_bop1982, i64* %_sum1961
  %_id1990 = load i64, i64* %_i1975
  %_bop1989 = add i64 %_id1990, 1
  store i64 %_bop1989, i64* %_i1975
  br label %_start1978
_end1980:
  %_id1991 = load i64, i64* %_sum1961
  ret i64 %_id1991
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
