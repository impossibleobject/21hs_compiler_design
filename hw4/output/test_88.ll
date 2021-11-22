; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2538 = global [2 x i8] c" \00"
@_cstr_glb2544 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %i = alloca i64
  %a = alloca { i64, [0 x i64] }*
  %_argc2518 = alloca i64
  store i64 %argc, i64* %_argc2518
  %_argv2519 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2519
  store i64 0, i64* %i
  %_raw_array2520 = call i64* @oat_alloc_array(i64 10)
  %_array2521 = bitcast i64* %_raw_array2520 to { i64, [0 x i64] }*
  %_CArr_elem_92531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 9
  store i64 117, i64* %_CArr_elem_92531
  %_CArr_elem_82530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 8
  store i64 118, i64* %_CArr_elem_82530
  %_CArr_elem_72529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 7
  store i64 119, i64* %_CArr_elem_72529
  %_CArr_elem_62528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 6
  store i64 120, i64* %_CArr_elem_62528
  %_CArr_elem_52527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 5
  store i64 121, i64* %_CArr_elem_52527
  %_CArr_elem_42526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 4
  store i64 122, i64* %_CArr_elem_42526
  %_CArr_elem_32525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 3
  store i64 123, i64* %_CArr_elem_32525
  %_CArr_elem_22524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 2
  store i64 124, i64* %_CArr_elem_22524
  %_CArr_elem_12523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 1
  store i64 125, i64* %_CArr_elem_12523
  %_CArr_elem_02522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2521, i32 0, i32 1, i32 0
  store i64 126, i64* %_CArr_elem_02522
  store { i64, [0 x i64] }* %_array2521, { i64, [0 x i64] }** %a
  %_Call_retval2533 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2532)
  %_id2532 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @print_string(i8* %_Call_retval2533)
  %_id2535 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2535, i64 0, i64 9)
  %_cstr_loc2537 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2538, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2537)
  %_Call_retval2541 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2540)
  %_id2540 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @print_string(i8* %_Call_retval2541)
  %_cstr_loc2543 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2544, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2543)
  %_id2546 = load i64, i64* %i
  ret i64 %_id2546
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %mid = alloca i64
  %_a2491 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2491
  %_low2492 = alloca i64
  store i64 %low, i64* %_low2492
  %_high2493 = alloca i64
  store i64 %high, i64* %_high2493
  store i64 0, i64* %mid
  %_id2495 = load i64, i64* %_low2492
  %_id2496 = load i64, i64* %_high2493
  %_bop2494 = icmp slt i64 %_id2495, %_id2496
  br i1 %_bop2494, label %_then2497, label %_else2498
_then2497:
  %_id2502 = load i64, i64* %_low2492
  %_id2503 = load i64, i64* %_high2493
  %_bop2501 = add i64 %_id2502, %_id2503
  %_bop2500 = lshr i64 %_bop2501, 1
  store i64 %_bop2500, i64* %mid
  %_id2504 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2491
  %_id2505 = load i64, i64* %_low2492
  %_id2506 = load i64, i64* %mid
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2504, i64 %_id2505, i64 %_id2506)
  %_id2508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2491
  %_bop2509 = add i64 %_id2510, 1
  %_id2510 = load i64, i64* %mid
  %_id2511 = load i64, i64* %_high2493
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2508, i64 %_bop2509, i64 %_id2511)
  %_id2513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2491
  %_id2514 = load i64, i64* %_low2492
  %_id2515 = load i64, i64* %_high2493
  %_id2516 = load i64, i64* %mid
  call void @merge({ i64, [0 x i64] }* %_id2513, i64 %_id2514, i64 %_id2515, i64 %_id2516)
  br label %_end2499
_else2498:
  br label %_end2499
_end2499:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %i = alloca i64
  %j = alloca i64
  %k = alloca i64
  %c = alloca { i64, [0 x i64] }*
  %_a2387 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2387
  %_low2388 = alloca i64
  store i64 %low, i64* %_low2388
  %_high2389 = alloca i64
  store i64 %high, i64* %_high2389
  %_mid2390 = alloca i64
  store i64 %mid, i64* %_mid2390
  store i64 0, i64* %i
  store i64 0, i64* %j
  store i64 0, i64* %k
  %_raw_array2391 = call i64* @oat_alloc_array(i64 50)
  %_array2392 = bitcast i64* %_raw_array2391 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2392, { i64, [0 x i64] }** %c
  %_id2393 = load i64, i64* %_low2388
  store i64 %_id2393, i64* %i
  %_id2395 = load i64, i64* %_mid2390
  %_bop2394 = add i64 %_id2395, 1
  store i64 %_bop2394, i64* %j
  %_id2396 = load i64, i64* %_low2388
  store i64 %_id2396, i64* %k
  br label %_start2404
_start2404:
  %_id2399 = load i64, i64* %i
  %_id2400 = load i64, i64* %_mid2390
  %_bop2398 = icmp sle i64 %_id2399, %_id2400
  %_id2402 = load i64, i64* %j
  %_id2403 = load i64, i64* %_high2389
  %_bop2401 = icmp sle i64 %_id2402, %_id2403
  %_bop2397 = and i1 %_bop2398, %_bop2401
  br i1 %_bop2397, label %_body2405, label %_end2406
_body2405:
  %_id2408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2387
  %_id2409 = load i64, i64* %i
  %_index_ptr2410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2408, i32 0, i32 1, i64 %_id2409
  %_idx_tmp2414 = load i64, i64* %_index_ptr2410
  %_id2411 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2387
  %_id2412 = load i64, i64* %j
  %_index_ptr2413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2411, i32 0, i32 1, i64 %_id2412
  %_idx_tmp2415 = load i64, i64* %_index_ptr2413
  %_bop2407 = icmp slt i64 %_idx_tmp2414, %_idx_tmp2415
  br i1 %_bop2407, label %_then2416, label %_else2417
_then2416:
  %_id2419 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2387
  %_id2420 = load i64, i64* %i
  %_index_ptr2421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2419, i32 0, i32 1, i64 %_id2420
  %_idx_tmp2422 = load i64, i64* %_index_ptr2421
  %_id2423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2424 = load i64, i64* %k
  %_index_ptr2425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2423, i32 0, i32 1, i64 %_id2424
  store i64 %_idx_tmp2422, i64* %_index_ptr2425
  %_id2427 = load i64, i64* %k
  %_bop2426 = add i64 %_id2427, 1
  store i64 %_bop2426, i64* %k
  %_id2429 = load i64, i64* %i
  %_bop2428 = add i64 %_id2429, 1
  store i64 %_bop2428, i64* %i
  br label %_end2418
_else2417:
  %_id2430 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2387
  %_id2431 = load i64, i64* %j
  %_index_ptr2432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2430, i32 0, i32 1, i64 %_id2431
  %_idx_tmp2433 = load i64, i64* %_index_ptr2432
  %_id2434 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2435 = load i64, i64* %k
  %_index_ptr2436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2434, i32 0, i32 1, i64 %_id2435
  store i64 %_idx_tmp2433, i64* %_index_ptr2436
  %_id2438 = load i64, i64* %k
  %_bop2437 = add i64 %_id2438, 1
  store i64 %_bop2437, i64* %k
  %_id2440 = load i64, i64* %j
  %_bop2439 = add i64 %_id2440, 1
  store i64 %_bop2439, i64* %j
  br label %_end2418
_end2418:
  br label %_start2404
_end2406:
  br label %_start2444
_start2444:
  %_id2442 = load i64, i64* %i
  %_id2443 = load i64, i64* %_mid2390
  %_bop2441 = icmp sle i64 %_id2442, %_id2443
  br i1 %_bop2441, label %_body2445, label %_end2446
_body2445:
  %_id2447 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2387
  %_id2448 = load i64, i64* %i
  %_index_ptr2449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2447, i32 0, i32 1, i64 %_id2448
  %_idx_tmp2450 = load i64, i64* %_index_ptr2449
  %_id2451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2452 = load i64, i64* %k
  %_index_ptr2453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2451, i32 0, i32 1, i64 %_id2452
  store i64 %_idx_tmp2450, i64* %_index_ptr2453
  %_id2455 = load i64, i64* %k
  %_bop2454 = add i64 %_id2455, 1
  store i64 %_bop2454, i64* %k
  %_id2457 = load i64, i64* %i
  %_bop2456 = add i64 %_id2457, 1
  store i64 %_bop2456, i64* %i
  br label %_start2444
_end2446:
  br label %_start2461
_start2461:
  %_id2459 = load i64, i64* %j
  %_id2460 = load i64, i64* %_high2389
  %_bop2458 = icmp sle i64 %_id2459, %_id2460
  br i1 %_bop2458, label %_body2462, label %_end2463
_body2462:
  %_id2464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2387
  %_id2465 = load i64, i64* %j
  %_index_ptr2466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2464, i32 0, i32 1, i64 %_id2465
  %_idx_tmp2467 = load i64, i64* %_index_ptr2466
  %_id2468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2469 = load i64, i64* %k
  %_index_ptr2470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2468, i32 0, i32 1, i64 %_id2469
  store i64 %_idx_tmp2467, i64* %_index_ptr2470
  %_id2472 = load i64, i64* %k
  %_bop2471 = add i64 %_id2472, 1
  store i64 %_bop2471, i64* %k
  %_id2474 = load i64, i64* %j
  %_bop2473 = add i64 %_id2474, 1
  store i64 %_bop2473, i64* %j
  br label %_start2461
_end2463:
  %_id2475 = load i64, i64* %_low2388
  store i64 %_id2475, i64* %i
  br label %_start2479
_start2479:
  %_id2477 = load i64, i64* %i
  %_id2478 = load i64, i64* %k
  %_bop2476 = icmp slt i64 %_id2477, %_id2478
  br i1 %_bop2476, label %_body2480, label %_end2481
_body2480:
  %_id2482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2483 = load i64, i64* %i
  %_index_ptr2484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2482, i32 0, i32 1, i64 %_id2483
  %_idx_tmp2485 = load i64, i64* %_index_ptr2484
  %_id2486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2387
  %_id2487 = load i64, i64* %i
  %_index_ptr2488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2486, i32 0, i32 1, i64 %_id2487
  store i64 %_idx_tmp2485, i64* %_index_ptr2488
  %_id2490 = load i64, i64* %i
  %_bop2489 = add i64 %_id2490, 1
  store i64 %_bop2489, i64* %i
  br label %_start2479
_end2481:
  ret void
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
