; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %j = alloca i64
  %_a2283 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2283
  %_l2284 = alloca i64
  store i64 %l, i64* %_l2284
  %_r2285 = alloca i64
  store i64 %r, i64* %_r2285
  store i64 0, i64* %j
  %_id2287 = load i64, i64* %_l2284
  %_id2288 = load i64, i64* %_r2285
  %_bop2286 = icmp slt i64 %_id2287, %_id2288
  br i1 %_bop2286, label %_then2289, label %_else2290
_then2289:
  %_id2292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2283
  %_id2293 = load i64, i64* %_l2284
  %_id2294 = load i64, i64* %_r2285
  %_Call_retval2295 = call i64 @partition({ i64, [0 x i64] }* %_id2292, i64 %_id2293, i64 %_id2294)
  store i64 %_Call_retval2295, i64* %j
  %_id2296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2283
  %_id2297 = load i64, i64* %_l2284
  %_bop2298 = sub i64 %_id2299, 1
  %_id2299 = load i64, i64* %j
  call void @quick_sort({ i64, [0 x i64] }* %_id2296, i64 %_id2297, i64 %_bop2298)
  %_id2301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2283
  %_bop2302 = add i64 %_id2303, 1
  %_id2303 = load i64, i64* %j
  %_id2304 = load i64, i64* %_r2285
  call void @quick_sort({ i64, [0 x i64] }* %_id2301, i64 %_bop2302, i64 %_id2304)
  br label %_end2291
_else2290:
  br label %_end2291
_end2291:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %pivot = alloca i64
  %i = alloca i64
  %j = alloca i64
  %t = alloca i64
  %done = alloca i64
  %_a2196 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2196
  %_l2197 = alloca i64
  store i64 %l, i64* %_l2197
  %_r2198 = alloca i64
  store i64 %r, i64* %_r2198
  %_id2199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2200 = load i64, i64* %_l2197
  %_index_ptr2201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2199, i32 0, i32 1, i64 %_id2200
  %_idx_tmp2202 = load i64, i64* %_index_ptr2201
  store i64 %_idx_tmp2202, i64* %pivot
  %_id2203 = load i64, i64* %_l2197
  store i64 %_id2203, i64* %i
  %_id2205 = load i64, i64* %_r2198
  %_bop2204 = add i64 %_id2205, 1
  store i64 %_bop2204, i64* %j
  store i64 0, i64* %t
  store i64 0, i64* %done
  br label %_start2208
_start2208:
  %_id2207 = load i64, i64* %done
  %_bop2206 = icmp eq i64 %_id2207, 0
  br i1 %_bop2206, label %_body2209, label %_end2210
_body2209:
  %_id2212 = load i64, i64* %i
  %_bop2211 = add i64 %_id2212, 1
  store i64 %_bop2211, i64* %i
  br label %_start2223
_start2223:
  %_id2215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2216 = load i64, i64* %i
  %_index_ptr2217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2215, i32 0, i32 1, i64 %_id2216
  %_idx_tmp2219 = load i64, i64* %_index_ptr2217
  %_id2218 = load i64, i64* %pivot
  %_bop2214 = icmp sle i64 %_idx_tmp2219, %_id2218
  %_id2221 = load i64, i64* %i
  %_id2222 = load i64, i64* %_r2198
  %_bop2220 = icmp sle i64 %_id2221, %_id2222
  %_bop2213 = and i1 %_bop2214, %_bop2220
  br i1 %_bop2213, label %_body2224, label %_end2225
_body2224:
  %_id2227 = load i64, i64* %i
  %_bop2226 = add i64 %_id2227, 1
  store i64 %_bop2226, i64* %i
  br label %_start2223
_end2225:
  %_id2229 = load i64, i64* %j
  %_bop2228 = sub i64 %_id2229, 1
  store i64 %_bop2228, i64* %j
  br label %_start2236
_start2236:
  %_id2231 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2232 = load i64, i64* %j
  %_index_ptr2233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2231, i32 0, i32 1, i64 %_id2232
  %_idx_tmp2235 = load i64, i64* %_index_ptr2233
  %_id2234 = load i64, i64* %pivot
  %_bop2230 = icmp sgt i64 %_idx_tmp2235, %_id2234
  br i1 %_bop2230, label %_body2237, label %_end2238
_body2237:
  %_id2240 = load i64, i64* %j
  %_bop2239 = sub i64 %_id2240, 1
  store i64 %_bop2239, i64* %j
  br label %_start2236
_end2238:
  %_id2242 = load i64, i64* %i
  %_id2243 = load i64, i64* %j
  %_bop2241 = icmp sge i64 %_id2242, %_id2243
  br i1 %_bop2241, label %_then2244, label %_else2245
_then2244:
  store i64 1, i64* %done
  br label %_end2246
_else2245:
  br label %_end2246
_end2246:
  %_id2248 = load i64, i64* %done
  %_bop2247 = icmp eq i64 %_id2248, 0
  br i1 %_bop2247, label %_then2249, label %_else2250
_then2249:
  %_id2252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2253 = load i64, i64* %i
  %_index_ptr2254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2252, i32 0, i32 1, i64 %_id2253
  %_idx_tmp2255 = load i64, i64* %_index_ptr2254
  store i64 %_idx_tmp2255, i64* %t
  %_id2256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2257 = load i64, i64* %j
  %_index_ptr2258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2256, i32 0, i32 1, i64 %_id2257
  %_idx_tmp2259 = load i64, i64* %_index_ptr2258
  %_id2260 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2261 = load i64, i64* %i
  %_index_ptr2262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2260, i32 0, i32 1, i64 %_id2261
  store i64 %_idx_tmp2259, i64* %_index_ptr2262
  %_id2263 = load i64, i64* %t
  %_id2264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2265 = load i64, i64* %j
  %_index_ptr2266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2264, i32 0, i32 1, i64 %_id2265
  store i64 %_id2263, i64* %_index_ptr2266
  br label %_end2251
_else2250:
  br label %_end2251
_end2251:
  br label %_start2208
_end2210:
  %_id2267 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2268 = load i64, i64* %_l2197
  %_index_ptr2269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2267, i32 0, i32 1, i64 %_id2268
  %_idx_tmp2270 = load i64, i64* %_index_ptr2269
  store i64 %_idx_tmp2270, i64* %t
  %_id2271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2272 = load i64, i64* %j
  %_index_ptr2273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2271, i32 0, i32 1, i64 %_id2272
  %_idx_tmp2274 = load i64, i64* %_index_ptr2273
  %_id2275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2276 = load i64, i64* %_l2197
  %_index_ptr2277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2275, i32 0, i32 1, i64 %_id2276
  store i64 %_idx_tmp2274, i64* %_index_ptr2277
  %_id2278 = load i64, i64* %t
  %_id2279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2196
  %_id2280 = load i64, i64* %j
  %_index_ptr2281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2279, i32 0, i32 1, i64 %_id2280
  store i64 %_id2278, i64* %_index_ptr2281
  %_id2282 = load i64, i64* %j
  ret i64 %_id2282
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x i64] }*
  %_argc2175 = alloca i64
  store i64 %argc, i64* %_argc2175
  %_argv2176 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2176
  %_raw_array2177 = call i64* @oat_alloc_array(i64 9)
  %_array2178 = bitcast i64* %_raw_array2177 to { i64, [0 x i64] }*
  %_CArr_elem_82187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 8
  store i64 109, i64* %_CArr_elem_82187
  %_CArr_elem_72186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 7
  store i64 111, i64* %_CArr_elem_72186
  %_CArr_elem_62185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 6
  store i64 104, i64* %_CArr_elem_62185
  %_CArr_elem_52184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 5
  store i64 115, i64* %_CArr_elem_52184
  %_CArr_elem_42183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 4
  store i64 123, i64* %_CArr_elem_42183
  %_CArr_elem_32182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 3
  store i64 102, i64* %_CArr_elem_32182
  %_CArr_elem_22181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 2
  store i64 121, i64* %_CArr_elem_22181
  %_CArr_elem_12180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 1
  store i64 112, i64* %_CArr_elem_12180
  %_CArr_elem_02179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2178, i32 0, i32 1, i32 0
  store i64 107, i64* %_CArr_elem_02179
  store { i64, [0 x i64] }* %_array2178, { i64, [0 x i64] }** %a
  %_Call_retval2189 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2188)
  %_id2188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @print_string(i8* %_Call_retval2189)
  %_id2191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @quick_sort({ i64, [0 x i64] }* %_id2191, i64 0, i64 8)
  %_Call_retval2194 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2193)
  %_id2193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @print_string(i8* %_Call_retval2194)
  ret i64 255
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
