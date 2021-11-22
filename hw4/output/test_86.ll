; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_j2416 = alloca i64
  %_a2413 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2413
  %_l2414 = alloca i64
  store i64 %l, i64* %_l2414
  %_r2415 = alloca i64
  store i64 %r, i64* %_r2415
  store i64 0, i64* %_j2416
  %_id2418 = load i64, i64* %_l2414
  %_id2419 = load i64, i64* %_r2415
  %_bop2417 = icmp slt i64 %_id2418, %_id2419
  br i1 %_bop2417, label %_then2420, label %_else2421
_then2420:
  %_id2425 = load i64, i64* %_r2415
  %_id2424 = load i64, i64* %_l2414
  %_id2423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2413
  %_Call_retval2426 = call i64 @partition({ i64, [0 x i64] }* %_id2423, i64 %_id2424, i64 %_id2425)
  store i64 %_Call_retval2426, i64* %_j2416
  %_id2430 = load i64, i64* %_j2416
  %_bop2429 = sub i64 %_id2430, 1
  %_id2428 = load i64, i64* %_l2414
  %_id2427 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2413
  call void @quick_sort({ i64, [0 x i64] }* %_id2427, i64 %_id2428, i64 %_bop2429)
  %_id2435 = load i64, i64* %_r2415
  %_id2434 = load i64, i64* %_j2416
  %_bop2433 = add i64 %_id2434, 1
  %_id2432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2413
  call void @quick_sort({ i64, [0 x i64] }* %_id2432, i64 %_bop2433, i64 %_id2435)
  br label %_end2422
_else2421:
  br label %_end2422
_end2422:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_pivot2324 = alloca i64
  %_i2329 = alloca i64
  %_j2331 = alloca i64
  %_t2334 = alloca i64
  %_done2335 = alloca i64
  %_a2321 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2321
  %_l2322 = alloca i64
  store i64 %l, i64* %_l2322
  %_r2323 = alloca i64
  store i64 %r, i64* %_r2323
  %_id2325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2326 = load i64, i64* %_l2322
  %_index_ptr2327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2325, i32 0, i32 1, i64 %_id2326
  %_idx_tmp2328 = load i64, i64* %_index_ptr2327
  store i64 %_idx_tmp2328, i64* %_pivot2324
  %_id2330 = load i64, i64* %_l2322
  store i64 %_id2330, i64* %_i2329
  %_id2333 = load i64, i64* %_r2323
  %_bop2332 = add i64 %_id2333, 1
  store i64 %_bop2332, i64* %_j2331
  store i64 0, i64* %_t2334
  store i64 0, i64* %_done2335
  br label %_start2338
_start2338:
  %_id2337 = load i64, i64* %_done2335
  %_bop2336 = icmp eq i64 %_id2337, 0
  br i1 %_bop2336, label %_body2339, label %_end2340
_body2339:
  %_id2342 = load i64, i64* %_i2329
  %_bop2341 = add i64 %_id2342, 1
  store i64 %_bop2341, i64* %_i2329
  br label %_start2353
_start2353:
  %_id2345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2346 = load i64, i64* %_i2329
  %_index_ptr2347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2345, i32 0, i32 1, i64 %_id2346
  %_idx_tmp2349 = load i64, i64* %_index_ptr2347
  %_id2348 = load i64, i64* %_pivot2324
  %_bop2344 = icmp sle i64 %_idx_tmp2349, %_id2348
  %_id2351 = load i64, i64* %_i2329
  %_id2352 = load i64, i64* %_r2323
  %_bop2350 = icmp sle i64 %_id2351, %_id2352
  %_bop2343 = and i1 %_bop2344, %_bop2350
  br i1 %_bop2343, label %_body2354, label %_end2355
_body2354:
  %_id2357 = load i64, i64* %_i2329
  %_bop2356 = add i64 %_id2357, 1
  store i64 %_bop2356, i64* %_i2329
  br label %_start2353
_end2355:
  %_id2359 = load i64, i64* %_j2331
  %_bop2358 = sub i64 %_id2359, 1
  store i64 %_bop2358, i64* %_j2331
  br label %_start2366
_start2366:
  %_id2361 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2362 = load i64, i64* %_j2331
  %_index_ptr2363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2361, i32 0, i32 1, i64 %_id2362
  %_idx_tmp2365 = load i64, i64* %_index_ptr2363
  %_id2364 = load i64, i64* %_pivot2324
  %_bop2360 = icmp sgt i64 %_idx_tmp2365, %_id2364
  br i1 %_bop2360, label %_body2367, label %_end2368
_body2367:
  %_id2370 = load i64, i64* %_j2331
  %_bop2369 = sub i64 %_id2370, 1
  store i64 %_bop2369, i64* %_j2331
  br label %_start2366
_end2368:
  %_id2372 = load i64, i64* %_i2329
  %_id2373 = load i64, i64* %_j2331
  %_bop2371 = icmp sge i64 %_id2372, %_id2373
  br i1 %_bop2371, label %_then2374, label %_else2375
_then2374:
  store i64 1, i64* %_done2335
  br label %_end2376
_else2375:
  br label %_end2376
_end2376:
  %_id2378 = load i64, i64* %_done2335
  %_bop2377 = icmp eq i64 %_id2378, 0
  br i1 %_bop2377, label %_then2379, label %_else2380
_then2379:
  %_id2382 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2383 = load i64, i64* %_i2329
  %_index_ptr2384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2382, i32 0, i32 1, i64 %_id2383
  %_idx_tmp2385 = load i64, i64* %_index_ptr2384
  store i64 %_idx_tmp2385, i64* %_t2334
  %_id2386 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2387 = load i64, i64* %_j2331
  %_index_ptr2388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2386, i32 0, i32 1, i64 %_id2387
  %_idx_tmp2389 = load i64, i64* %_index_ptr2388
  %_id2390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2391 = load i64, i64* %_i2329
  %_index_ptr2392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2390, i32 0, i32 1, i64 %_id2391
  store i64 %_idx_tmp2389, i64* %_index_ptr2392
  %_id2393 = load i64, i64* %_t2334
  %_id2394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2395 = load i64, i64* %_j2331
  %_index_ptr2396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2394, i32 0, i32 1, i64 %_id2395
  store i64 %_id2393, i64* %_index_ptr2396
  br label %_end2381
_else2380:
  br label %_end2381
_end2381:
  br label %_start2338
_end2340:
  %_id2397 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2398 = load i64, i64* %_l2322
  %_index_ptr2399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2397, i32 0, i32 1, i64 %_id2398
  %_idx_tmp2400 = load i64, i64* %_index_ptr2399
  store i64 %_idx_tmp2400, i64* %_t2334
  %_id2401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2402 = load i64, i64* %_j2331
  %_index_ptr2403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2401, i32 0, i32 1, i64 %_id2402
  %_idx_tmp2404 = load i64, i64* %_index_ptr2403
  %_id2405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2406 = load i64, i64* %_l2322
  %_index_ptr2407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2405, i32 0, i32 1, i64 %_id2406
  store i64 %_idx_tmp2404, i64* %_index_ptr2407
  %_id2408 = load i64, i64* %_t2334
  %_id2409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2321
  %_id2410 = load i64, i64* %_j2331
  %_index_ptr2411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2409, i32 0, i32 1, i64 %_id2410
  store i64 %_id2408, i64* %_index_ptr2411
  %_id2412 = load i64, i64* %_j2331
  ret i64 %_id2412
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2301 = alloca { i64, [0 x i64] }*
  %_argc2299 = alloca i64
  store i64 %argc, i64* %_argc2299
  %_argv2300 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2300
  %_raw_array2302 = call i64* @oat_alloc_array(i64 9)
  %_array2303 = bitcast i64* %_raw_array2302 to { i64, [0 x i64] }*
  %_CArr_elem_82312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2303, i32 0, i32 1, i32 8
  store i64 109, i64* %_CArr_elem_82312
  %_CArr_elem_72311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2303, i32 0, i32 1, i32 7
  store i64 111, i64* %_CArr_elem_72311
  %_CArr_elem_62310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2303, i32 0, i32 1, i32 6
  store i64 104, i64* %_CArr_elem_62310
  %_CArr_elem_52309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2303, i32 0, i32 1, i32 5
  store i64 115, i64* %_CArr_elem_52309
  %_CArr_elem_42308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2303, i32 0, i32 1, i32 4
  store i64 123, i64* %_CArr_elem_42308
  %_CArr_elem_32307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2303, i32 0, i32 1, i32 3
  store i64 102, i64* %_CArr_elem_32307
  %_CArr_elem_22306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2303, i32 0, i32 1, i32 2
  store i64 121, i64* %_CArr_elem_22306
  %_CArr_elem_12305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2303, i32 0, i32 1, i32 1
  store i64 112, i64* %_CArr_elem_12305
  %_CArr_elem_02304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2303, i32 0, i32 1, i32 0
  store i64 107, i64* %_CArr_elem_02304
  store { i64, [0 x i64] }* %_array2303, { i64, [0 x i64] }** %_a2301
  %_id2313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2301
  %_Call_retval2314 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2313)
  call void @print_string(i8* %_Call_retval2314)
  %_id2316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2301
  call void @quick_sort({ i64, [0 x i64] }* %_id2316, i64 0, i64 8)
  %_id2318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2301
  %_Call_retval2319 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2318)
  call void @print_string(i8* %_Call_retval2319)
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
