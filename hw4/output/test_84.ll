; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %arr = alloca { i64, [0 x i64] }*
  %r = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %_str2133 = alloca i8*
  store i8* %str, i8** %_str2133
  %_start2134 = alloca i64
  store i64 %start, i64* %_start2134
  %_len2135 = alloca i64
  store i64 %len, i64* %_len2135
  %_id2136 = load i8*, i8** %_str2133
  %_Call_retval2137 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2136)
  store { i64, [0 x i64] }* %_Call_retval2137, { i64, [0 x i64] }** %arr
  %_id2138 = load i64, i64* %_len2135
  %_raw_array2139 = call i64* @oat_alloc_array(i64 %_id2138)
  %_array2140 = bitcast i64* %_raw_array2139 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2140, { i64, [0 x i64] }** %r
  store i64 0, i64* %i
  br label %_start2144
_start2144:
  %_id2142 = load i64, i64* %i
  %_id2143 = load i64, i64* %_len2135
  %_bop2141 = icmp slt i64 %_id2142, %_id2143
  br i1 %_bop2141, label %_body2145, label %_end2146
_body2145:
  %_id2147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr
  %_id2149 = load i64, i64* %i
  %_id2150 = load i64, i64* %_start2134
  %_bop2148 = add i64 %_id2149, %_id2150
  %_index_ptr2151 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2147, i32 0, i32 1, i64 %_bop2148
  %_idx_tmp2152 = load i64, i64* %_index_ptr2151
  %_id2153 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %r
  %_id2154 = load i64, i64* %i
  %_index_ptr2155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2153, i32 0, i32 1, i64 %_id2154
  store i64 %_idx_tmp2152, i64* %_index_ptr2155
  %_id2157 = load i64, i64* %i
  %_bop2156 = add i64 %_id2157, 1
  store i64 %_bop2156, i64* %i
  br label %_start2144
_end2146:
  %_id2158 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %r
  %_Call_retval2159 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2158)
  ret i8* %_Call_retval2159
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2126 = alloca i64
  store i64 %argc, i64* %_argc2126
  %_argv2127 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2127
  %_Call_retval2131 = call i8* @sub(i8* %_idx_tmp2130, i64 3, i64 5)
  %_id2128 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2127
  %_index_ptr2129 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id2128, i32 0, i32 1, i32 1
  %_idx_tmp2130 = load i8*, i8** %_index_ptr2129
  call void @print_string(i8* %_Call_retval2131)
  ret i64 0
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
