; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2472 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers2480 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2480
  %_array_size2481 = alloca i64
  store i64 %array_size, i64* %_array_size2481
  %_temp2482 = alloca i64
  %_i2483 = alloca i64
  %_j2491 = alloca i64
  store i64 0, i64* %_temp2482
  %_id2485 = load i64*, i64** %_array_size2481
  %_bop2484 = sub i64 %_id2485, 1
  store i64 %_bop2484, i64* %_i2483
  br label %_start2488
_start2488:
  %_id2487 = load i64, i64* %_i2483
  %_bop2486 = icmp sgt i64 %_id2487, 0
  br i1 %_bop2486, label %_body2489, label %_end2490
_body2489:
  store i64 1, i64* %_j2491
  br label %_start2495
_start2495:
  %_id2493 = load i64, i64* %_j2491
  %_id2494 = load i64, i64* %_i2483
  %_bop2492 = icmp sle i64 %_id2493, %_id2494
  br i1 %_bop2492, label %_body2496, label %_end2497
_body2496:
  %_id2499 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_numbers2480
  %_id2501 = load i64, i64* %_j2491
  %_bop2500 = sub i64 %_id2501, 1
  %_index_ptr2502 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id2499, i32 0, i32 0, i32 1, i64 %_bop2500
  %_idx_tmp2506 = load i64, i64* %_index_ptr2502
  %_id2503 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_numbers2480
  %_id2504 = load i64, i64* %_i2483
  %_index_ptr2505 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id2503, i32 0, i32 0, i32 1, i64 %_id2504
  %_idx_tmp2507 = load i64, i64* %_index_ptr2505
  %_bop2498 = icmp sgt i64 %_idx_tmp2506, %_idx_tmp2507
  br i1 %_bop2498, label %_then2508, label %_else2509
_then2508:
  %_id2511 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_numbers2480
  %_id2513 = load i64, i64* %_j2491
  %_bop2512 = sub i64 %_id2513, 1
  %_index_ptr2514 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id2511, i32 0, i32 0, i32 1, i64 %_bop2512
  %_idx_tmp2515 = load i64, i64* %_index_ptr2514
  store i64 %_idx_tmp2515, i64* %_temp2482
  %_id2516 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_numbers2480
  %_id2517 = load i64, i64* %_i2483
  %_index_ptr2518 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id2516, i32 0, i32 0, i32 1, i64 %_id2517
  %_idx_tmp2519 = load i64, i64* %_index_ptr2518
  %_id2520 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_numbers2480
  %_id2522 = load i64, i64* %_j2491
  %_bop2521 = sub i64 %_id2522, 1
  %_index_ptr2523 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id2520, i32 0, i32 0, i32 1, i64 %_bop2521
  store i64 %_idx_tmp2519, i64* %_index_ptr2523
  %_id2524 = load i64, i64* %_temp2482
  %_id2525 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_numbers2480
  %_id2526 = load i64, i64* %_i2483
  %_index_ptr2527 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id2525, i32 0, i32 0, i32 1, i64 %_id2526
  store i64 %_id2524, i64* %_index_ptr2527
  br label %_end2510
_else2509:
  br label %_end2510
_end2510:
  %_id2529 = load i64, i64* %_j2491
  %_bop2528 = add i64 %_id2529, 1
  store i64 %_bop2528, i64* %_j2491
  br label %_start2495
_end2497:
  %_id2531 = load i64, i64* %_i2483
  %_bop2530 = sub i64 %_id2531, 1
  store i64 %_bop2530, i64* %_i2483
  br label %_start2488
_end2490:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2447 = alloca i64
  store i64 %argc, i64* %_argc2447
  %_argv2448 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2448
  %_a2449 = alloca { i64, [0 x i64] }*
  %_raw_array2450 = call i64* @oat_alloc_array(i64 8)
  %_array2451 = bitcast i64* %_raw_array2450 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2451, { i64, [0 x i64] }** %_a2449
  %_id2452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  %_index_ptr2453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2452, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2453
  %_id2454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  %_index_ptr2455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2454, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2455
  %_id2456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  %_index_ptr2457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2456, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2457
  %_id2458 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  %_index_ptr2459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2458, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2459
  %_id2460 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  %_index_ptr2461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2460, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2461
  %_id2462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  %_index_ptr2463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2462, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2463
  %_id2464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  %_index_ptr2465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2464, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2465
  %_id2466 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  %_index_ptr2467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2466, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2467
  %_Call_retval2469 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2468)
  %_id2468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  call void @print_string(i8* %_Call_retval2469)
  %_cstr_loc2471 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2472, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2471)
  %_id2474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  call void @bubble_sort({ i64, [0 x i64] }* %_id2474, i64 8)
  %_Call_retval2477 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2476)
  %_id2476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2449
  call void @print_string(i8* %_Call_retval2477)
  %_uop2479 = sub i64 0, 1
  ret i64 %_uop2479
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
