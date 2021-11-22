; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2680 = global [2 x i8] c" \00"
@_cstr_glb2686 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i2660 = alloca i64
  %_a2661 = alloca { i64, [0 x i64] }*
  %_argc2658 = alloca i64
  store i64 %argc, i64* %_argc2658
  %_argv2659 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2659
  store i64 0, i64* %_i2660
  %_raw_array2662 = call i64* @oat_alloc_array(i64 10)
  %_array2663 = bitcast i64* %_raw_array2662 to { i64, [0 x i64] }*
  %_CArr_elem_92673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 9
  store i64 117, i64* %_CArr_elem_92673
  %_CArr_elem_82672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 8
  store i64 118, i64* %_CArr_elem_82672
  %_CArr_elem_72671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 7
  store i64 119, i64* %_CArr_elem_72671
  %_CArr_elem_62670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 6
  store i64 120, i64* %_CArr_elem_62670
  %_CArr_elem_52669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 5
  store i64 121, i64* %_CArr_elem_52669
  %_CArr_elem_42668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 4
  store i64 122, i64* %_CArr_elem_42668
  %_CArr_elem_32667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 3
  store i64 123, i64* %_CArr_elem_32667
  %_CArr_elem_22666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 2
  store i64 124, i64* %_CArr_elem_22666
  %_CArr_elem_12665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 1
  store i64 125, i64* %_CArr_elem_12665
  %_CArr_elem_02664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 0
  store i64 126, i64* %_CArr_elem_02664
  store { i64, [0 x i64] }* %_array2663, { i64, [0 x i64] }** %_a2661
  %_id2674 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2661
  %_Call_retval2675 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2674)
  call void @print_string(i8* %_Call_retval2675)
  %_id2677 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2661
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2677, i64 0, i64 9)
  %_cstr_loc2679 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2680, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2679)
  %_id2682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2661
  %_Call_retval2683 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2682)
  call void @print_string(i8* %_Call_retval2683)
  %_cstr_loc2685 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2686, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2685)
  %_id2688 = load i64, i64* %_i2660
  ret i64 %_id2688
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_mid2633 = alloca i64
  %_a2630 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2630
  %_low2631 = alloca i64
  store i64 %low, i64* %_low2631
  %_high2632 = alloca i64
  store i64 %high, i64* %_high2632
  store i64 0, i64* %_mid2633
  %_id2635 = load i64, i64* %_low2631
  %_id2636 = load i64, i64* %_high2632
  %_bop2634 = icmp slt i64 %_id2635, %_id2636
  br i1 %_bop2634, label %_then2637, label %_else2638
_then2637:
  %_id2642 = load i64, i64* %_low2631
  %_id2643 = load i64, i64* %_high2632
  %_bop2641 = add i64 %_id2642, %_id2643
  %_bop2640 = lshr i64 %_bop2641, 1
  store i64 %_bop2640, i64* %_mid2633
  %_id2646 = load i64, i64* %_mid2633
  %_id2645 = load i64, i64* %_low2631
  %_id2644 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2630
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2644, i64 %_id2645, i64 %_id2646)
  %_id2651 = load i64, i64* %_high2632
  %_id2650 = load i64, i64* %_mid2633
  %_bop2649 = add i64 %_id2650, 1
  %_id2648 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2630
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2648, i64 %_bop2649, i64 %_id2651)
  %_id2656 = load i64, i64* %_mid2633
  %_id2655 = load i64, i64* %_high2632
  %_id2654 = load i64, i64* %_low2631
  %_id2653 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2630
  call void @merge({ i64, [0 x i64] }* %_id2653, i64 %_id2654, i64 %_id2655, i64 %_id2656)
  br label %_end2639
_else2638:
  br label %_end2639
_end2639:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_i2526 = alloca i64
  %_j2527 = alloca i64
  %_k2528 = alloca i64
  %_c2529 = alloca { i64, [0 x i64] }*
  %_a2522 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2522
  %_low2523 = alloca i64
  store i64 %low, i64* %_low2523
  %_high2524 = alloca i64
  store i64 %high, i64* %_high2524
  %_mid2525 = alloca i64
  store i64 %mid, i64* %_mid2525
  store i64 0, i64* %_i2526
  store i64 0, i64* %_j2527
  store i64 0, i64* %_k2528
  %_raw_array2530 = call i64* @oat_alloc_array(i64 50)
  %_array2531 = bitcast i64* %_raw_array2530 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2531, { i64, [0 x i64] }** %_c2529
  %_id2532 = load i64, i64* %_low2523
  store i64 %_id2532, i64* %_i2526
  %_id2534 = load i64, i64* %_mid2525
  %_bop2533 = add i64 %_id2534, 1
  store i64 %_bop2533, i64* %_j2527
  %_id2535 = load i64, i64* %_low2523
  store i64 %_id2535, i64* %_k2528
  br label %_start2543
_start2543:
  %_id2538 = load i64, i64* %_i2526
  %_id2539 = load i64, i64* %_mid2525
  %_bop2537 = icmp sle i64 %_id2538, %_id2539
  %_id2541 = load i64, i64* %_j2527
  %_id2542 = load i64, i64* %_high2524
  %_bop2540 = icmp sle i64 %_id2541, %_id2542
  %_bop2536 = and i1 %_bop2537, %_bop2540
  br i1 %_bop2536, label %_body2544, label %_end2545
_body2544:
  %_id2547 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2522
  %_id2548 = load i64, i64* %_i2526
  %_index_ptr2549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2547, i32 0, i32 1, i64 %_id2548
  %_idx_tmp2553 = load i64, i64* %_index_ptr2549
  %_id2550 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2522
  %_id2551 = load i64, i64* %_j2527
  %_index_ptr2552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2550, i32 0, i32 1, i64 %_id2551
  %_idx_tmp2554 = load i64, i64* %_index_ptr2552
  %_bop2546 = icmp slt i64 %_idx_tmp2553, %_idx_tmp2554
  br i1 %_bop2546, label %_then2555, label %_else2556
_then2555:
  %_id2558 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2522
  %_id2559 = load i64, i64* %_i2526
  %_index_ptr2560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2558, i32 0, i32 1, i64 %_id2559
  %_idx_tmp2561 = load i64, i64* %_index_ptr2560
  %_id2562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2529
  %_id2563 = load i64, i64* %_k2528
  %_index_ptr2564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2562, i32 0, i32 1, i64 %_id2563
  store i64 %_idx_tmp2561, i64* %_index_ptr2564
  %_id2566 = load i64, i64* %_k2528
  %_bop2565 = add i64 %_id2566, 1
  store i64 %_bop2565, i64* %_k2528
  %_id2568 = load i64, i64* %_i2526
  %_bop2567 = add i64 %_id2568, 1
  store i64 %_bop2567, i64* %_i2526
  br label %_end2557
_else2556:
  %_id2569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2522
  %_id2570 = load i64, i64* %_j2527
  %_index_ptr2571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2569, i32 0, i32 1, i64 %_id2570
  %_idx_tmp2572 = load i64, i64* %_index_ptr2571
  %_id2573 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2529
  %_id2574 = load i64, i64* %_k2528
  %_index_ptr2575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2573, i32 0, i32 1, i64 %_id2574
  store i64 %_idx_tmp2572, i64* %_index_ptr2575
  %_id2577 = load i64, i64* %_k2528
  %_bop2576 = add i64 %_id2577, 1
  store i64 %_bop2576, i64* %_k2528
  %_id2579 = load i64, i64* %_j2527
  %_bop2578 = add i64 %_id2579, 1
  store i64 %_bop2578, i64* %_j2527
  br label %_end2557
_end2557:
  br label %_start2543
_end2545:
  br label %_start2583
_start2583:
  %_id2581 = load i64, i64* %_i2526
  %_id2582 = load i64, i64* %_mid2525
  %_bop2580 = icmp sle i64 %_id2581, %_id2582
  br i1 %_bop2580, label %_body2584, label %_end2585
_body2584:
  %_id2586 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2522
  %_id2587 = load i64, i64* %_i2526
  %_index_ptr2588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2586, i32 0, i32 1, i64 %_id2587
  %_idx_tmp2589 = load i64, i64* %_index_ptr2588
  %_id2590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2529
  %_id2591 = load i64, i64* %_k2528
  %_index_ptr2592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2590, i32 0, i32 1, i64 %_id2591
  store i64 %_idx_tmp2589, i64* %_index_ptr2592
  %_id2594 = load i64, i64* %_k2528
  %_bop2593 = add i64 %_id2594, 1
  store i64 %_bop2593, i64* %_k2528
  %_id2596 = load i64, i64* %_i2526
  %_bop2595 = add i64 %_id2596, 1
  store i64 %_bop2595, i64* %_i2526
  br label %_start2583
_end2585:
  br label %_start2600
_start2600:
  %_id2598 = load i64, i64* %_j2527
  %_id2599 = load i64, i64* %_high2524
  %_bop2597 = icmp sle i64 %_id2598, %_id2599
  br i1 %_bop2597, label %_body2601, label %_end2602
_body2601:
  %_id2603 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2522
  %_id2604 = load i64, i64* %_j2527
  %_index_ptr2605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2603, i32 0, i32 1, i64 %_id2604
  %_idx_tmp2606 = load i64, i64* %_index_ptr2605
  %_id2607 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2529
  %_id2608 = load i64, i64* %_k2528
  %_index_ptr2609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2607, i32 0, i32 1, i64 %_id2608
  store i64 %_idx_tmp2606, i64* %_index_ptr2609
  %_id2611 = load i64, i64* %_k2528
  %_bop2610 = add i64 %_id2611, 1
  store i64 %_bop2610, i64* %_k2528
  %_id2613 = load i64, i64* %_j2527
  %_bop2612 = add i64 %_id2613, 1
  store i64 %_bop2612, i64* %_j2527
  br label %_start2600
_end2602:
  %_id2614 = load i64, i64* %_low2523
  store i64 %_id2614, i64* %_i2526
  br label %_start2618
_start2618:
  %_id2616 = load i64, i64* %_i2526
  %_id2617 = load i64, i64* %_k2528
  %_bop2615 = icmp slt i64 %_id2616, %_id2617
  br i1 %_bop2615, label %_body2619, label %_end2620
_body2619:
  %_id2621 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2529
  %_id2622 = load i64, i64* %_i2526
  %_index_ptr2623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2621, i32 0, i32 1, i64 %_id2622
  %_idx_tmp2624 = load i64, i64* %_index_ptr2623
  %_id2625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2522
  %_id2626 = load i64, i64* %_i2526
  %_index_ptr2627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2625, i32 0, i32 1, i64 %_id2626
  store i64 %_idx_tmp2624, i64* %_index_ptr2627
  %_id2629 = load i64, i64* %_i2526
  %_bop2628 = add i64 %_id2629, 1
  store i64 %_bop2628, i64* %_i2526
  br label %_start2618
_end2620:
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
