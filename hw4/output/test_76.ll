; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_gstr1980 to i8*)
@_gstr1980 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr = alloca { i64, [0 x i64] }*
  %s = alloca i64
  %i = alloca i64
  %_argc1960 = alloca i64
  store i64 %argc, i64* %_argc1960
  %_argv1961 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1961
  %_id1962 = load i8*, i8** @str
  %_Call_retval1963 = call { i64, [0 x i64] }* @array_of_string(i8* %_id1962)
  store { i64, [0 x i64] }* %_Call_retval1963, { i64, [0 x i64] }** %arr
  store i64 0, i64* %s
  store i64 0, i64* %i
  br label %_start1966
_start1966:
  %_id1965 = load i64, i64* %i
  %_bop1964 = icmp slt i64 %_id1965, 5
  br i1 %_bop1964, label %_body1967, label %_end1968
_body1967:
  %_id1970 = load i64, i64* %s
  %_id1971 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_id1972 = load i64, i64* %i
  %_index_ptr1973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1971, i32 0, i32 1, i64 %_id1972
  %_idx_tmp1974 = load i64, i64* %_index_ptr1973
  %_bop1969 = add i64 %_id1970, %_idx_tmp1974
  store i64 %_bop1969, i64* %s
  %_id1976 = load i64, i64* %i
  %_bop1975 = add i64 %_id1976, 1
  store i64 %_bop1975, i64* %i
  br label %_start1966
_end1968:
  %_id1977 = load i64, i64* %s
  call void @print_int(i64 %_id1977)
  %_id1979 = load i64, i64* %s
  ret i64 %_id1979
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
