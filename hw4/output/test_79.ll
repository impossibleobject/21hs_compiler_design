; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr12140 = alloca { i64, [0 x i64] }*
  %_str2148 = alloca i8*
  %_arr22151 = alloca { i64, [0 x i64] }*
  %_s2154 = alloca i64
  %_i2155 = alloca i64
  %_argc2138 = alloca i64
  store i64 %argc, i64* %_argc2138
  %_argv2139 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2139
  %_raw_array2141 = call i64* @oat_alloc_array(i64 5)
  %_array2142 = bitcast i64* %_raw_array2141 to { i64, [0 x i64] }*
  %_CArr_elem_42147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2142, i32 0, i32 1, i32 4
  store i64 115, i64* %_CArr_elem_42147
  %_CArr_elem_32146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2142, i32 0, i32 1, i32 3
  store i64 114, i64* %_CArr_elem_32146
  %_CArr_elem_22145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2142, i32 0, i32 1, i32 2
  store i64 113, i64* %_CArr_elem_22145
  %_CArr_elem_12144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2142, i32 0, i32 1, i32 1
  store i64 112, i64* %_CArr_elem_12144
  %_CArr_elem_02143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2142, i32 0, i32 1, i32 0
  store i64 111, i64* %_CArr_elem_02143
  store { i64, [0 x i64] }* %_array2142, { i64, [0 x i64] }** %_arr12140
  %_id2149 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12140
  %_Call_retval2150 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2149)
  store i8* %_Call_retval2150, i8** %_str2148
  %_id2152 = load i8*, i8** %_str2148
  %_Call_retval2153 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2152)
  store { i64, [0 x i64] }* %_Call_retval2153, { i64, [0 x i64] }** %_arr22151
  store i64 0, i64* %_s2154
  store i64 0, i64* %_i2155
  br label %_start2158
_start2158:
  %_id2157 = load i64, i64* %_i2155
  %_bop2156 = icmp slt i64 %_id2157, 5
  br i1 %_bop2156, label %_body2159, label %_end2160
_body2159:
  %_id2162 = load i64, i64* %_s2154
  %_id2163 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22151
  %_id2164 = load i64, i64* %_i2155
  %_index_ptr2165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2163, i32 0, i32 1, i64 %_id2164
  %_idx_tmp2166 = load i64, i64* %_index_ptr2165
  %_bop2161 = add i64 %_id2162, %_idx_tmp2166
  store i64 %_bop2161, i64* %_s2154
  %_id2168 = load i64, i64* %_i2155
  %_bop2167 = add i64 %_id2168, 1
  store i64 %_bop2167, i64* %_i2155
  br label %_start2158
_end2160:
  %_id2169 = load i64, i64* %_s2154
  ret i64 %_id2169
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
