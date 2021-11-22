; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2459 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_temp2469 = alloca i64
  %_i2470 = alloca i64
  %_j2478 = alloca i64
  %_numbers2467 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2467
  %_array_size2468 = alloca i64
  store i64 %array_size, i64* %_array_size2468
  store i64 0, i64* %_temp2469
  %_id2472 = load i64, i64* %_array_size2468
  %_bop2471 = sub i64 %_id2472, 1
  store i64 %_bop2471, i64* %_i2470
  br label %_start2475
_start2475:
  %_id2474 = load i64, i64* %_i2470
  %_bop2473 = icmp sgt i64 %_id2474, 0
  br i1 %_bop2473, label %_body2476, label %_end2477
_body2476:
  store i64 1, i64* %_j2478
  br label %_start2482
_start2482:
  %_id2480 = load i64, i64* %_j2478
  %_id2481 = load i64, i64* %_i2470
  %_bop2479 = icmp sle i64 %_id2480, %_id2481
  br i1 %_bop2479, label %_body2483, label %_end2484
_body2483:
  %_id2486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2467
  %_id2488 = load i64, i64* %_j2478
  %_bop2487 = sub i64 %_id2488, 1
  %_index_ptr2489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2486, i32 0, i32 1, i64 %_bop2487
  %_idx_tmp2493 = load i64, i64* %_index_ptr2489
  %_id2490 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2467
  %_id2491 = load i64, i64* %_i2470
  %_index_ptr2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2490, i32 0, i32 1, i64 %_id2491
  %_idx_tmp2494 = load i64, i64* %_index_ptr2492
  %_bop2485 = icmp sgt i64 %_idx_tmp2493, %_idx_tmp2494
  br i1 %_bop2485, label %_then2495, label %_else2496
_then2495:
  %_id2498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2467
  %_id2500 = load i64, i64* %_j2478
  %_bop2499 = sub i64 %_id2500, 1
  %_index_ptr2501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2498, i32 0, i32 1, i64 %_bop2499
  %_idx_tmp2502 = load i64, i64* %_index_ptr2501
  store i64 %_idx_tmp2502, i64* %_temp2469
  %_id2503 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2467
  %_id2504 = load i64, i64* %_i2470
  %_index_ptr2505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2503, i32 0, i32 1, i64 %_id2504
  %_idx_tmp2506 = load i64, i64* %_index_ptr2505
  %_id2507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2467
  %_id2509 = load i64, i64* %_j2478
  %_bop2508 = sub i64 %_id2509, 1
  %_index_ptr2510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2507, i32 0, i32 1, i64 %_bop2508
  store i64 %_idx_tmp2506, i64* %_index_ptr2510
  %_id2511 = load i64, i64* %_temp2469
  %_id2512 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2467
  %_id2513 = load i64, i64* %_i2470
  %_index_ptr2514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2512, i32 0, i32 1, i64 %_id2513
  store i64 %_id2511, i64* %_index_ptr2514
  br label %_end2497
_else2496:
  br label %_end2497
_end2497:
  %_id2516 = load i64, i64* %_j2478
  %_bop2515 = add i64 %_id2516, 1
  store i64 %_bop2515, i64* %_j2478
  br label %_start2482
_end2484:
  %_id2518 = load i64, i64* %_i2470
  %_bop2517 = sub i64 %_id2518, 1
  store i64 %_bop2517, i64* %_i2470
  br label %_start2475
_end2477:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2436 = alloca { i64, [0 x i64] }*
  %_argc2434 = alloca i64
  store i64 %argc, i64* %_argc2434
  %_argv2435 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2435
  %_raw_array2437 = call i64* @oat_alloc_array(i64 8)
  %_array2438 = bitcast i64* %_raw_array2437 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2438, { i64, [0 x i64] }** %_a2436
  %_id2439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  %_index_ptr2440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2439, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2440
  %_id2441 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  %_index_ptr2442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2441, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2442
  %_id2443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  %_index_ptr2444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2443, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2444
  %_id2445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  %_index_ptr2446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2445, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2446
  %_id2447 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  %_index_ptr2448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2447, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2448
  %_id2449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  %_index_ptr2450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2449, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2450
  %_id2451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  %_index_ptr2452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2451, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2452
  %_id2453 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  %_index_ptr2454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2453, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2454
  %_Call_retval2456 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2455)
  %_id2455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  call void @print_string(i8* %_Call_retval2456)
  %_cstr_loc2458 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2459, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2458)
  %_id2461 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  call void @bubble_sort({ i64, [0 x i64] }* %_id2461, i64 8)
  %_Call_retval2464 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2463)
  %_id2463 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2436
  call void @print_string(i8* %_Call_retval2464)
  %_uop2466 = sub i64 0, 1
  ret i64 %_uop2466
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
