; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2240 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers2249 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2249
  %_array_size2250 = alloca i64
  store i64 %array_size, i64* %_array_size2250
  %_temp2251 = alloca i64
  %_i2252 = alloca i64
  %_j2260 = alloca i64
  store i64 0, i64* %_temp2251
  %_id2254 = load i64, i64* %_array_size2250
  %_bop2253 = sub i64 %_id2254, 1
  store i64 %_bop2253, i64* %_i2252
  br label %_start2257
_start2257:
  %_id2256 = load i64, i64* %_i2252
  %_bop2255 = icmp sgt i64 %_id2256, 0
  br i1 %_bop2255, label %_body2258, label %_end2259
_body2258:
  store i64 1, i64* %_j2260
  br label %_start2264
_start2264:
  %_id2262 = load i64, i64* %_j2260
  %_id2263 = load i64, i64* %_i2252
  %_bop2261 = icmp sle i64 %_id2262, %_id2263
  br i1 %_bop2261, label %_body2265, label %_end2266
_body2265:
  %_id2268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2249
  %_id2270 = load i64, i64* %_j2260
  %_bop2269 = sub i64 %_id2270, 1
  %_index_ptr2271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2268, i32 0, i32 1, i64 %_bop2269
  %_2275 = load i64, i64* %_index_ptr2271
  %_id2272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2249
  %_id2273 = load i64, i64* %_i2252
  %_index_ptr2274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2272, i32 0, i32 1, i64 %_id2273
  %_2276 = load i64, i64* %_index_ptr2274
  %_bop2267 = icmp sgt i64 %_2275, %_2276
  br i1 %_bop2267, label %_then2277, label %_else2278
_then2277:
  %_id2281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2249
  %_id2283 = load i64, i64* %_j2260
  %_bop2282 = sub i64 %_id2283, 1
  %_index_ptr2284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2281, i32 0, i32 1, i64 %_bop2282
  store i64 %_index_ptr2284, i64* @temp
  %_id2285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2249
  %_id2287 = load i64, i64* %_j2260
  %_bop2286 = sub i64 %_id2287, 1
  %_index_ptr2288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2285, i32 0, i32 1, i64 %_bop2286
  %_id2289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2249
  %_id2290 = load i64, i64* %_i2252
  %_index_ptr2291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2289, i32 0, i32 1, i64 %_id2290
  store i64* %_index_ptr2291, i64** %_index_ptr2288
  %_id2292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2249
  %_id2293 = load i64, i64* %_i2252
  %_index_ptr2294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2292, i32 0, i32 1, i64 %_id2293
  %_id2295 = load i64, i64* %_index_ptr2284
  store i64 %_id2295, i64* %_index_ptr2294
  br label %_end2279
_else2278:
  br label %_end2279
_end2279:
  %_id2298 = load i64, i64* %_j2260
  %_bop2297 = add i64 %_id2298, 1
  store i64 %_bop2297, i64* %_j2260
  br label %_start2264
_end2266:
  %_id2301 = load i64, i64* %_i2252
  %_bop2300 = sub i64 %_id2301, 1
  store i64 %_bop2300, i64* %_i2252
  br label %_start2257
_end2259:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2215 = alloca i64
  store i64 %argc, i64* %_argc2215
  %_argv2216 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2216
  %_a2217 = alloca { i64, [0 x i64] }*
  %_raw_array2218 = call i64* @oat_alloc_array(i64 8)
  %_array2219 = bitcast i64* %_raw_array2218 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2219, { i64, [0 x i64] }** %_a2217
  %_id2220 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  %_index_ptr2221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2220, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2221
  %_id2222 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  %_index_ptr2223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2222, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2223
  %_id2224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  %_index_ptr2225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2224, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2225
  %_id2226 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  %_index_ptr2227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2226, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2227
  %_id2228 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  %_index_ptr2229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2228, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2229
  %_id2230 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  %_index_ptr2231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2230, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2231
  %_id2232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  %_index_ptr2233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2232, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2233
  %_id2234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  %_index_ptr2235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2234, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2235
  %_Call_retval2237 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2236)
  %_id2236 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  call void @print_string(i8* %_Call_retval2237)
  %_cstr_loc2239 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2240, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2239)
  %_id2242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  call void @bubble_sort({ i64, [0 x i64] }* %_id2242, i64 8)
  %_Call_retval2245 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2244)
  %_id2244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2217
  call void @print_string(i8* %_Call_retval2245)
  %_uop2247 = sub i64 0, 1
  ret i64 %_uop2247
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
