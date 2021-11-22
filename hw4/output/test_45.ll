; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2081 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2077 = alloca i64
  store i64 %argc, i64* %_argc2077
  %_argv2078 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2078
  %_str2079 = alloca i8*
  %_arr2082 = alloca { i64, [0 x i64] }*
  %_s2085 = alloca i64
  %_i2086 = alloca i64
  %_cstr_loc2080 = getelementptr [6 x i8], [6 x i8]* @_cstr_glb2081, i32 0, i32 0
  store i8* %_cstr_loc2080, i8** %_str2079
  %_id2083 = load i8*, i8** %_str2079
  %_Call_retval2084 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2083)
  store { i64, [0 x i64] }* %_Call_retval2084, { i64, [0 x i64] }** %_arr2082
  store i64 0, i64* %_s2085
  store i64 0, i64* %_i2086
  br label %_start2089
_start2089:
  %_id2088 = load i64, i64* %_i2086
  %_bop2087 = icmp slt i64 %_id2088, 5
  br i1 %_bop2087, label %_body2090, label %_end2091
_body2090:
  %_id2093 = load i64, i64* %_s2085
  %_id2094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2082
  %_id2095 = load i64, i64* %_i2086
  %_index_ptr2096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2094, i32 0, i32 1, i64 %_id2095
  %_idx_tmp2097 = load i64, i64* %_index_ptr2096
  %_bop2092 = add i64 %_id2093, %_idx_tmp2097
  store i64 %_bop2092, i64* %_s2085
  %_id2099 = load i64, i64* %_i2086
  %_bop2098 = add i64 %_id2099, 1
  store i64 %_bop2098, i64* %_i2086
  br label %_start2089
_end2091:
  %_id2100 = load i64, i64* %_s2085
  ret i64 %_id2100
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
