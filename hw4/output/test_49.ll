; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2263 = alloca i8*
  store i8* %str, i8** %_str2263
  %_start2264 = alloca i64
  store i64 %start, i64* %_start2264
  %_len2265 = alloca i64
  store i64 %len, i64* %_len2265
  %_arr2266 = alloca { i64, [0 x i64] }*
  %_r2269 = alloca { i64, [0 x i64] }*
  %_i2273 = alloca i64
  %_id2267 = load i8**, i8*** %_str2263
  %_Call_retval2268 = call { i64, [0 x i64] }* @array_of_string(i8** %_id2267)
  store { i64, [0 x i64] }* %_Call_retval2268, { i64, [0 x i64] }** %_arr2266
  %_id2270 = load i64*, i64** %_len2265
  %_raw_array2271 = call i64* @oat_alloc_array(i64 %_id2270)
  %_array2272 = bitcast i64* %_raw_array2271 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2272, { i64, [0 x i64] }** %_r2269
  store i64 0, i64* %_i2273
  br label %_start2277
_start2277:
  %_id2275 = load i64, i64* %_i2273
  %_id2276 = load i64*, i64** %_len2265
  %_bop2274 = icmp slt i64 %_id2275, %_id2276
  br i1 %_bop2274, label %_body2278, label %_end2279
_body2278:
  %_id2280 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2266
  %_id2282 = load i64, i64* %_i2273
  %_id2283 = load i64*, i64** %_start2264
  %_bop2281 = add i64 %_id2282, %_id2283
  %_index_ptr2284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2280, i32 0, i32 1, i64 %_bop2281
  %_idx_tmp2285 = load i64, i64* %_index_ptr2284
  %_id2286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2269
  %_id2287 = load i64, i64* %_i2273
  %_index_ptr2288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2286, i32 0, i32 1, i64 %_id2287
  store i64 %_idx_tmp2285, i64* %_index_ptr2288
  %_id2290 = load i64, i64* %_i2273
  %_bop2289 = add i64 %_id2290, 1
  store i64 %_bop2289, i64* %_i2273
  br label %_start2277
_end2279:
  %_id2291 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2269
  %_Call_retval2292 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2291)
  ret i8* %_Call_retval2292
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2256 = alloca i64
  store i64 %argc, i64* %_argc2256
  %_argv2257 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2257
  %_Call_retval2261 = call i8* @sub(i8* %_idx_tmp2260, i64 3, i64 5)
  %_id2258 = load { i64, [0 x i8*] }**, { i64, [0 x i8*] }*** %_argv2257
  %_index_ptr2259 = getelementptr { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_id2258, i32 0, i32 0, i32 1, i32 1
  %_idx_tmp2260 = load i8*, i8** %_index_ptr2259
  call void @print_string(i8* %_Call_retval2261)
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
