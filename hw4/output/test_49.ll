; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2250 = alloca i8*
  store i8* %str, i8** %_str2250
  %_start2251 = alloca i64
  store i64 %start, i64* %_start2251
  %_len2252 = alloca i64
  store i64 %len, i64* %_len2252
  %_arr2253 = alloca { i64, [0 x i64] }*
  %_r2256 = alloca { i64, [0 x i64] }*
  %_i2260 = alloca i64
  %_id2254 = load i8**, i8*** %_str2250
  %_Call_retval2255 = call { i64, [0 x i64] }* @array_of_string(i8** %_id2254)
  store { i64, [0 x i64] }* %_Call_retval2255, { i64, [0 x i64] }** %_arr2253
  %_id2257 = load i64*, i64** %_len2252
  %_raw_array2258 = call i64* @oat_alloc_array(i64 %_id2257)
  %_array2259 = bitcast i64* %_raw_array2258 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2259, { i64, [0 x i64] }** %_r2256
  store i64 0, i64* %_i2260
  br label %_start2264
_start2264:
  %_id2262 = load i64, i64* %_i2260
  %_id2263 = load i64*, i64** %_len2252
  %_bop2261 = icmp slt i64 %_id2262, %_id2263
  br i1 %_bop2261, label %_body2265, label %_end2266
_body2265:
  %_id2267 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2253
  %_id2269 = load i64, i64* %_i2260
  %_id2270 = load i64*, i64** %_start2251
  %_bop2268 = add i64 %_id2269, %_id2270
  %_index_ptr2271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2267, i32 0, i32 1, i64 %_bop2268
  %_idx_tmp2272 = load i64, i64* %_index_ptr2271
  %_id2273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2256
  %_id2274 = load i64, i64* %_i2260
  %_index_ptr2275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2273, i32 0, i32 1, i64 %_id2274
  store i64 %_idx_tmp2272, i64* %_index_ptr2275
  %_id2277 = load i64, i64* %_i2260
  %_bop2276 = add i64 %_id2277, 1
  store i64 %_bop2276, i64* %_i2260
  br label %_start2264
_end2266:
  %_id2278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2256
  %_Call_retval2279 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2278)
  ret i8* %_Call_retval2279
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2243 = alloca i64
  store i64 %argc, i64* %_argc2243
  %_argv2244 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2244
  %_Call_retval2248 = call i8* @sub(i8* %_idx_tmp2247, i64 3, i64 5)
  %_id2245 = load { i64, [0 x i8*] }**, { i64, [0 x i8*] }*** %_argv2244
  %_index_ptr2246 = getelementptr { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_id2245, i32 0, i32 0, i32 1, i32 1
  %_idx_tmp2247 = load i8*, i8** %_index_ptr2246
  call void @print_string(i8* %_Call_retval2248)
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
