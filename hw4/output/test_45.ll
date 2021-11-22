; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2094 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2090 = alloca i64
  store i64 %argc, i64* %_argc2090
  %_argv2091 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2091
  %_str2092 = alloca i8*
  %_arr2095 = alloca { i64, [0 x i64] }*
  %_s2098 = alloca i64
  %_i2099 = alloca i64
  %_cstr_loc2093 = getelementptr [6 x i8], [6 x i8]* @_cstr_glb2094, i32 0, i32 0
  store i8* %_cstr_loc2093, i8** %_str2092
  %_id2096 = load i8*, i8** %_str2092
  %_Call_retval2097 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2096)
  store { i64, [0 x i64] }* %_Call_retval2097, { i64, [0 x i64] }** %_arr2095
  store i64 0, i64* %_s2098
  store i64 0, i64* %_i2099
  br label %_start2102
_start2102:
  %_id2101 = load i64, i64* %_i2099
  %_bop2100 = icmp slt i64 %_id2101, 5
  br i1 %_bop2100, label %_body2103, label %_end2104
_body2103:
  %_id2106 = load i64, i64* %_s2098
  %_id2107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2095
  %_id2108 = load i64, i64* %_i2099
  %_index_ptr2109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2107, i32 0, i32 1, i64 %_id2108
  %_idx_tmp2110 = load i64, i64* %_index_ptr2109
  %_bop2105 = add i64 %_id2106, %_idx_tmp2110
  store i64 %_bop2105, i64* %_s2098
  %_id2112 = load i64, i64* %_i2099
  %_bop2111 = add i64 %_id2112, 1
  store i64 %_bop2111, i64* %_i2099
  br label %_start2102
_end2104:
  %_id2113 = load i64, i64* %_s2098
  ret i64 %_id2113
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
