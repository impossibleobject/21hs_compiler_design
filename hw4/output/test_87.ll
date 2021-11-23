; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2462 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_temp2472 = alloca i64
  %_i2473 = alloca i64
  %_j2481 = alloca i64
  %_numbers2470 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2470
  %_array_size2471 = alloca i64
  store i64 %array_size, i64* %_array_size2471
  store i64 0, i64* %_temp2472
  %_id2475 = load i64, i64* %_array_size2471
  %_bop2474 = sub i64 %_id2475, 1
  store i64 %_bop2474, i64* %_i2473
  br label %_start2478
_start2478:
  %_id2477 = load i64, i64* %_i2473
  %_bop2476 = icmp sgt i64 %_id2477, 0
  br i1 %_bop2476, label %_body2479, label %_end2480
_body2479:
  store i64 1, i64* %_j2481
  br label %_start2485
_start2485:
  %_id2483 = load i64, i64* %_j2481
  %_id2484 = load i64, i64* %_i2473
  %_bop2482 = icmp sle i64 %_id2483, %_id2484
  br i1 %_bop2482, label %_body2486, label %_end2487
_body2486:
  %_id2489 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2470
  %_id2491 = load i64, i64* %_j2481
  %_bop2490 = sub i64 %_id2491, 1
  %_index_ptr2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2489, i32 0, i32 1, i64 %_bop2490
  %_idx_tmp2496 = load i64, i64* %_index_ptr2492
  %_id2493 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2470
  %_id2494 = load i64, i64* %_i2473
  %_index_ptr2495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2493, i32 0, i32 1, i64 %_id2494
  %_idx_tmp2497 = load i64, i64* %_index_ptr2495
  %_bop2488 = icmp sgt i64 %_idx_tmp2496, %_idx_tmp2497
  br i1 %_bop2488, label %_then2498, label %_else2499
_then2498:
  %_id2501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2470
  %_id2503 = load i64, i64* %_j2481
  %_bop2502 = sub i64 %_id2503, 1
  %_index_ptr2504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2501, i32 0, i32 1, i64 %_bop2502
  %_idx_tmp2505 = load i64, i64* %_index_ptr2504
  store i64 %_idx_tmp2505, i64* %_temp2472
  %_id2506 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2470
  %_id2507 = load i64, i64* %_i2473
  %_index_ptr2508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2506, i32 0, i32 1, i64 %_id2507
  %_idx_tmp2509 = load i64, i64* %_index_ptr2508
  %_id2510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2470
  %_id2512 = load i64, i64* %_j2481
  %_bop2511 = sub i64 %_id2512, 1
  %_index_ptr2513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2510, i32 0, i32 1, i64 %_bop2511
  store i64 %_idx_tmp2509, i64* %_index_ptr2513
  %_id2514 = load i64, i64* %_temp2472
  %_id2515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2470
  %_id2516 = load i64, i64* %_i2473
  %_index_ptr2517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2515, i32 0, i32 1, i64 %_id2516
  store i64 %_id2514, i64* %_index_ptr2517
  br label %_end2500
_else2499:
  br label %_end2500
_end2500:
  %_id2519 = load i64, i64* %_j2481
  %_bop2518 = add i64 %_id2519, 1
  store i64 %_bop2518, i64* %_j2481
  br label %_start2485
_end2487:
  %_id2521 = load i64, i64* %_i2473
  %_bop2520 = sub i64 %_id2521, 1
  store i64 %_bop2520, i64* %_i2473
  br label %_start2478
_end2480:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2439 = alloca { i64, [0 x i64] }*
  %_argc2437 = alloca i64
  store i64 %argc, i64* %_argc2437
  %_argv2438 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2438
  %_raw_array2440 = call i64* @oat_alloc_array(i64 8)
  %_array2441 = bitcast i64* %_raw_array2440 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2441, { i64, [0 x i64] }** %_a2439
  %_id2442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_index_ptr2443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2442, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2443
  %_id2444 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_index_ptr2445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2444, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2445
  %_id2446 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_index_ptr2447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2446, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2447
  %_id2448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_index_ptr2449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2448, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2449
  %_id2450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_index_ptr2451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2450, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2451
  %_id2452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_index_ptr2453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2452, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2453
  %_id2454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_index_ptr2455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2454, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2455
  %_id2456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_index_ptr2457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2456, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2457
  %_id2458 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_Call_retval2459 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2458)
  call void @print_string(i8* %_Call_retval2459)
  %_cstr_loc2461 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2462, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2461)
  %_id2464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  call void @bubble_sort({ i64, [0 x i64] }* %_id2464, i64 8)
  %_id2466 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2439
  %_Call_retval2467 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2466)
  call void @print_string(i8* %_Call_retval2467)
  %_uop2469 = sub i64 0, 1
  ret i64 %_uop2469
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
