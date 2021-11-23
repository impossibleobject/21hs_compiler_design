; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_gstr2079 to i8*)
@_gstr2079 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr2058 = alloca { i64, [0 x i64] }*
  %_s2061 = alloca i64
  %_i2062 = alloca i64
  %_argc2056 = alloca i64
  store i64 %argc, i64* %_argc2056
  %_argv2057 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2057
  %_id2059 = load i8*, i8** @str
  %_Call_retval2060 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2059)
  store { i64, [0 x i64] }* %_Call_retval2060, { i64, [0 x i64] }** %_arr2058
  store i64 0, i64* %_s2061
  store i64 0, i64* %_i2062
  br label %_start2065
_start2065:
  %_id2064 = load i64, i64* %_i2062
  %_bop2063 = icmp slt i64 %_id2064, 5
  br i1 %_bop2063, label %_body2066, label %_end2067
_body2066:
  %_id2069 = load i64, i64* %_s2061
  %_id2070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2058
  %_id2071 = load i64, i64* %_i2062
  %_index_ptr2072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2070, i32 0, i32 1, i64 %_id2071
  %_idx_tmp2073 = load i64, i64* %_index_ptr2072
  %_bop2068 = add i64 %_id2069, %_idx_tmp2073
  store i64 %_bop2068, i64* %_s2061
  %_id2075 = load i64, i64* %_i2062
  %_bop2074 = add i64 %_id2075, 1
  store i64 %_bop2074, i64* %_i2062
  br label %_start2065
_end2067:
  %_id2076 = load i64, i64* %_s2061
  call void @print_int(i64 %_id2076)
  %_id2078 = load i64, i64* %_s2061
  ret i64 %_id2078
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
