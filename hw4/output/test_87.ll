; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2330 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %temp = alloca i64
  %i = alloca i64
  %j = alloca i64
  %_numbers2338 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2338
  %_array_size2339 = alloca i64
  store i64 %array_size, i64* %_array_size2339
  store i64 0, i64* %temp
  %_id2341 = load i64, i64* %_array_size2339
  %_bop2340 = sub i64 %_id2341, 1
  store i64 %_bop2340, i64* %i
  br label %_start2344
_start2344:
  %_id2343 = load i64, i64* %i
  %_bop2342 = icmp sgt i64 %_id2343, 0
  br i1 %_bop2342, label %_body2345, label %_end2346
_body2345:
  store i64 1, i64* %j
  br label %_start2350
_start2350:
  %_id2348 = load i64, i64* %j
  %_id2349 = load i64, i64* %i
  %_bop2347 = icmp sle i64 %_id2348, %_id2349
  br i1 %_bop2347, label %_body2351, label %_end2352
_body2351:
  %_id2354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2338
  %_id2356 = load i64, i64* %j
  %_bop2355 = sub i64 %_id2356, 1
  %_index_ptr2357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2354, i32 0, i32 1, i64 %_bop2355
  %_idx_tmp2361 = load i64, i64* %_index_ptr2357
  %_id2358 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2338
  %_id2359 = load i64, i64* %i
  %_index_ptr2360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2358, i32 0, i32 1, i64 %_id2359
  %_idx_tmp2362 = load i64, i64* %_index_ptr2360
  %_bop2353 = icmp sgt i64 %_idx_tmp2361, %_idx_tmp2362
  br i1 %_bop2353, label %_then2363, label %_else2364
_then2363:
  %_id2366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2338
  %_id2368 = load i64, i64* %j
  %_bop2367 = sub i64 %_id2368, 1
  %_index_ptr2369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2366, i32 0, i32 1, i64 %_bop2367
  %_idx_tmp2370 = load i64, i64* %_index_ptr2369
  store i64 %_idx_tmp2370, i64* %temp
  %_id2371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2338
  %_id2372 = load i64, i64* %i
  %_index_ptr2373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2371, i32 0, i32 1, i64 %_id2372
  %_idx_tmp2374 = load i64, i64* %_index_ptr2373
  %_id2375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2338
  %_id2377 = load i64, i64* %j
  %_bop2376 = sub i64 %_id2377, 1
  %_index_ptr2378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2375, i32 0, i32 1, i64 %_bop2376
  store i64 %_idx_tmp2374, i64* %_index_ptr2378
  %_id2379 = load i64, i64* %temp
  %_id2380 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2338
  %_id2381 = load i64, i64* %i
  %_index_ptr2382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2380, i32 0, i32 1, i64 %_id2381
  store i64 %_id2379, i64* %_index_ptr2382
  br label %_end2365
_else2364:
  br label %_end2365
_end2365:
  %_id2384 = load i64, i64* %j
  %_bop2383 = add i64 %_id2384, 1
  store i64 %_bop2383, i64* %j
  br label %_start2350
_end2352:
  %_id2386 = load i64, i64* %i
  %_bop2385 = sub i64 %_id2386, 1
  store i64 %_bop2385, i64* %i
  br label %_start2344
_end2346:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x i64] }*
  %_argc2306 = alloca i64
  store i64 %argc, i64* %_argc2306
  %_argv2307 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2307
  %_raw_array2308 = call i64* @oat_alloc_array(i64 8)
  %_array2309 = bitcast i64* %_raw_array2308 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2309, { i64, [0 x i64] }** %a
  %_id2310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr2311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2310, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2311
  %_id2312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr2313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2312, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2313
  %_id2314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr2315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2314, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2315
  %_id2316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr2317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2316, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2317
  %_id2318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr2319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2318, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2319
  %_id2320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr2321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2320, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2321
  %_id2322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr2323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2322, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2323
  %_id2324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr2325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2324, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2325
  %_Call_retval2327 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2326)
  %_id2326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @print_string(i8* %_Call_retval2327)
  %_cstr_loc2329 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2330, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2329)
  %_id2332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @bubble_sort({ i64, [0 x i64] }* %_id2332, i64 8)
  %_Call_retval2335 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2334)
  %_id2334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @print_string(i8* %_Call_retval2335)
  %_uop2337 = sub i64 0, 1
  ret i64 %_uop2337
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
