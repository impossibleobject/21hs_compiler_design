; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_arr2256 = alloca { i64, [0 x i64] }*
  %_r2259 = alloca { i64, [0 x i64] }*
  %_i2263 = alloca i64
  %_str2253 = alloca i8*
  store i8* %str, i8** %_str2253
  %_start2254 = alloca i64
  store i64 %start, i64* %_start2254
  %_len2255 = alloca i64
  store i64 %len, i64* %_len2255
  %_id2257 = load i8*, i8** %_str2253
  %_Call_retval2258 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2257)
  store { i64, [0 x i64] }* %_Call_retval2258, { i64, [0 x i64] }** %_arr2256
  %_id2260 = load i64, i64* %_len2255
  %_raw_array2261 = call i64* @oat_alloc_array(i64 %_id2260)
  %_array2262 = bitcast i64* %_raw_array2261 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2262, { i64, [0 x i64] }** %_r2259
  store i64 0, i64* %_i2263
  br label %_start2267
_start2267:
  %_id2265 = load i64, i64* %_i2263
  %_id2266 = load i64, i64* %_len2255
  %_bop2264 = icmp slt i64 %_id2265, %_id2266
  br i1 %_bop2264, label %_body2268, label %_end2269
_body2268:
  %_id2270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2256
  %_id2272 = load i64, i64* %_i2263
  %_id2273 = load i64, i64* %_start2254
  %_bop2271 = add i64 %_id2272, %_id2273
  %_index_ptr2274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2270, i32 0, i32 1, i64 %_bop2271
  %_idx_tmp2275 = load i64, i64* %_index_ptr2274
  %_id2276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2259
  %_id2277 = load i64, i64* %_i2263
  %_index_ptr2278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2276, i32 0, i32 1, i64 %_id2277
  store i64 %_idx_tmp2275, i64* %_index_ptr2278
  %_id2280 = load i64, i64* %_i2263
  %_bop2279 = add i64 %_id2280, 1
  store i64 %_bop2279, i64* %_i2263
  br label %_start2267
_end2269:
  %_id2281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2259
  %_Call_retval2282 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2281)
  ret i8* %_Call_retval2282
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2246 = alloca i64
  store i64 %argc, i64* %_argc2246
  %_argv2247 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2247
  %_id2248 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2247
  %_index_ptr2249 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id2248, i32 0, i32 1, i32 1
  %_idx_tmp2250 = load i8*, i8** %_index_ptr2249
  %_Call_retval2251 = call i8* @sub(i8* %_idx_tmp2250, i64 3, i64 5)
  call void @print_string(i8* %_Call_retval2251)
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
