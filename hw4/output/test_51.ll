; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2527 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers2536 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers2536
  %_array_size2537 = alloca i64
  store i64 %array_size, i64* %_array_size2537
  %_temp2538 = alloca i64
  %_i2539 = alloca i64
  %_j2547 = alloca i64
  store i64 0, i64* %_temp2538
  store i64 %_bop2540, i64* %_i2539
  %_id2541 = load i64, i64* %_array_size2537
  %_bop2540 = sub i64 %_id2541, 1
  br label %_start2544
_start2544:
  %_id2543 = load i64, i64* %_i2539
  %_bop2542 = icmp sgt i64 %_id2543, 0
  br i1 %_bop2542, label %_body2545, label %_end2546
_body2545:
  store i64 1, i64* %_j2547
  br label %_start2551
_start2551:
  %_id2549 = load i64, i64* %_j2547
  %_id2550 = load i64, i64* %_i2539
  %_bop2548 = icmp sle i64 %_id2549, %_id2550
  br i1 %_bop2548, label %_body2552, label %_end2553
_body2552:
  %_id2555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2536
  %_id2557 = load i64, i64* %_j2547
  %_bop2556 = sub i64 %_id2557, 1
  %_index_ptr2558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2555, i32 0, i32 1, i64 %_bop2556
  %_2562 = load i64, i64* %_index_ptr2558
  %_id2559 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2536
  %_id2560 = load i64, i64* %_i2539
  %_index_ptr2561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2559, i32 0, i32 1, i64 %_id2560
  %_2563 = load i64, i64* %_index_ptr2561
  %_bop2554 = icmp sgt i64 %_2562, %_2563
  br i1 %_bop2554, label %_then2564, label %_else2565
_then2564:
  %_id2568 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2536
  %_id2570 = load i64, i64* %_j2547
  %_bop2569 = sub i64 %_id2570, 1
  %_index_ptr2571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2568, i32 0, i32 1, i64 %_bop2569
  store i64 %_index_ptr2571, i64* @temp
  %_id2572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2536
  %_id2574 = load i64, i64* %_j2547
  %_bop2573 = sub i64 %_id2574, 1
  %_index_ptr2575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2572, i32 0, i32 1, i64 %_bop2573
  %_id2576 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2536
  %_id2577 = load i64, i64* %_i2539
  %_index_ptr2578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2576, i32 0, i32 1, i64 %_id2577
  store i64* %_index_ptr2578, i64** %_index_ptr2575
  %_id2579 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2536
  %_id2580 = load i64, i64* %_i2539
  %_index_ptr2581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2579, i32 0, i32 1, i64 %_id2580
  %_id2582 = load i64, i64* %_index_ptr2571
  store i64 %_id2582, i64* %_index_ptr2581
  br label %_end2566
_else2565:
  br label %_end2566
_end2566:
  %_id2585 = load i64, i64* %_j2547
  %_bop2584 = add i64 %_id2585, 1
  store i64 %_bop2584, i64* %_j2547
  br label %_start2551
_end2553:
  %_id2588 = load i64, i64* %_i2539
  %_bop2587 = sub i64 %_id2588, 1
  store i64 %_bop2587, i64* %_i2539
  br label %_start2544
_end2546:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2502 = alloca i64
  store i64 %argc, i64* %_argc2502
  %_argv2503 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2503
  %_a2504 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2506, { i64, [0 x i64] }** %_a2504
  %_raw_array2505 = call i64* @oat_alloc_array(i64 8)
  %_array2506 = bitcast i64* %_raw_array2505 to { i64, [0 x i64] }*
  %_id2507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  %_index_ptr2508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2507, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2508
  %_id2509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  %_index_ptr2510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2509, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2510
  %_id2511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  %_index_ptr2512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2511, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2512
  %_id2513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  %_index_ptr2514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2513, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2514
  %_id2515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  %_index_ptr2516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2515, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2516
  %_id2517 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  %_index_ptr2518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2517, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2518
  %_id2519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  %_index_ptr2520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2519, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2520
  %_id2521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  %_index_ptr2522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2521, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2522
  %_Call_retval2524 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2523)
  %_id2523 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  call void @print_string(i8* %_Call_retval2524)
  %_cstr_loc2526 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2527, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2526)
  %_id2529 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  call void @bubble_sort({ i64, [0 x i64] }* %_id2529, i64 8)
  %_Call_retval2532 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2531)
  %_id2531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2504
  call void @print_string(i8* %_Call_retval2532)
  %_uop2534 = sub i64 0, 1
  ret i64 %_uop2534
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
