; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2084 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str2082 = alloca i8*
  %_arr2085 = alloca { i64, [0 x i64] }*
  %_s2088 = alloca i64
  %_i2089 = alloca i64
  %_argc2080 = alloca i64
  store i64 %argc, i64* %_argc2080
  %_argv2081 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2081
  %_cstr_loc2083 = getelementptr [6 x i8], [6 x i8]* @_cstr_glb2084, i32 0, i32 0
  store i8* %_cstr_loc2083, i8** %_str2082
  %_id2086 = load i8*, i8** %_str2082
  %_Call_retval2087 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2086)
  store { i64, [0 x i64] }* %_Call_retval2087, { i64, [0 x i64] }** %_arr2085
  store i64 0, i64* %_s2088
  store i64 0, i64* %_i2089
  br label %_start2092
_start2092:
  %_id2091 = load i64, i64* %_i2089
  %_bop2090 = icmp slt i64 %_id2091, 5
  br i1 %_bop2090, label %_body2093, label %_end2094
_body2093:
  %_id2096 = load i64, i64* %_s2088
  %_id2097 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2085
  %_id2098 = load i64, i64* %_i2089
  %_index_ptr2099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2097, i32 0, i32 1, i64 %_id2098
  %_idx_tmp2100 = load i64, i64* %_index_ptr2099
  %_bop2095 = add i64 %_id2096, %_idx_tmp2100
  store i64 %_bop2095, i64* %_s2088
  %_id2102 = load i64, i64* %_i2089
  %_bop2101 = add i64 %_id2102, 1
  store i64 %_bop2101, i64* %_i2089
  br label %_start2092
_end2094:
  %_id2103 = load i64, i64* %_s2088
  ret i64 %_id2103
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
