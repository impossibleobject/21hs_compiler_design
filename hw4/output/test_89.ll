; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2698 = global [2 x i8] c" \00"
@_cstr_glb2704 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %_argc2678 = alloca i64
  store i64 %argc, i64* %_argc2678
  %_argv2679 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2679
  %_raw_array2680 = call i64* @oat_alloc_array(i64 10)
  %_array2681 = bitcast i64* %_raw_array2680 to { i64, [0 x i64] }*
  %_CArr_elem_92691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 9
  store i64 117, i64* %_CArr_elem_92691
  %_CArr_elem_82690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 8
  store i64 118, i64* %_CArr_elem_82690
  %_CArr_elem_72689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 7
  store i64 119, i64* %_CArr_elem_72689
  %_CArr_elem_62688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 6
  store i64 120, i64* %_CArr_elem_62688
  %_CArr_elem_52687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 5
  store i64 121, i64* %_CArr_elem_52687
  %_CArr_elem_42686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 4
  store i64 122, i64* %_CArr_elem_42686
  %_CArr_elem_32685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 3
  store i64 123, i64* %_CArr_elem_32685
  %_CArr_elem_22684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 2
  store i64 124, i64* %_CArr_elem_22684
  %_CArr_elem_12683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 1
  store i64 125, i64* %_CArr_elem_12683
  %_CArr_elem_02682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2681, i32 0, i32 1, i32 0
  store i64 126, i64* %_CArr_elem_02682
  store { i64, [0 x i64] }* %_array2681, { i64, [0 x i64] }** %a
  store i64 0, i64* %i
  %_Call_retval2693 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2692)
  %_id2692 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @print_string(i8* %_Call_retval2693)
  %_id2695 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2695, i64 0, i64 9)
  %_cstr_loc2697 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2698, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2697)
  %_Call_retval2701 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2700)
  %_id2700 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  call void @print_string(i8* %_Call_retval2701)
  %_cstr_loc2703 = getelementptr [2 x i8], [2 x i8]* @_cstr_glb2704, i32 0, i32 0
  call void @print_string(i8* %_cstr_loc2703)
  %_id2706 = load i64, i64* %i
  ret i64 %_id2706
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %mid = alloca i64
  %_a2651 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2651
  %_low2652 = alloca i64
  store i64 %low, i64* %_low2652
  %_high2653 = alloca i64
  store i64 %high, i64* %_high2653
  store i64 0, i64* %mid
  %_id2655 = load i64, i64* %_low2652
  %_id2656 = load i64, i64* %_high2653
  %_bop2654 = icmp slt i64 %_id2655, %_id2656
  br i1 %_bop2654, label %_then2657, label %_else2658
_then2657:
  %_id2662 = load i64, i64* %_low2652
  %_id2663 = load i64, i64* %_high2653
  %_bop2661 = add i64 %_id2662, %_id2663
  %_bop2660 = lshr i64 %_bop2661, 1
  store i64 %_bop2660, i64* %mid
  %_id2664 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2651
  %_id2665 = load i64, i64* %_low2652
  %_id2666 = load i64, i64* %mid
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2664, i64 %_id2665, i64 %_id2666)
  %_id2668 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2651
  %_bop2669 = add i64 %_id2670, 1
  %_id2670 = load i64, i64* %mid
  %_id2671 = load i64, i64* %_high2653
  call void @oat_mergesort({ i64, [0 x i64] }* %_id2668, i64 %_bop2669, i64 %_id2671)
  %_id2673 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2651
  %_id2674 = load i64, i64* %_low2652
  %_id2675 = load i64, i64* %_high2653
  %_id2676 = load i64, i64* %mid
  call void @merge({ i64, [0 x i64] }* %_id2673, i64 %_id2674, i64 %_id2675, i64 %_id2676)
  br label %_end2659
_else2658:
  br label %_end2659
_end2659:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %i = alloca i64
  %j = alloca i64
  %k = alloca i64
  %c = alloca { i64, [0 x i64] }*
  %_a2547 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a2547
  %_low2548 = alloca i64
  store i64 %low, i64* %_low2548
  %_high2549 = alloca i64
  store i64 %high, i64* %_high2549
  %_mid2550 = alloca i64
  store i64 %mid, i64* %_mid2550
  store i64 0, i64* %i
  store i64 0, i64* %j
  store i64 0, i64* %k
  %_raw_array2551 = call i64* @oat_alloc_array(i64 50)
  %_array2552 = bitcast i64* %_raw_array2551 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2552, { i64, [0 x i64] }** %c
  %_id2553 = load i64, i64* %_low2548
  store i64 %_id2553, i64* %i
  %_id2555 = load i64, i64* %_mid2550
  %_bop2554 = add i64 %_id2555, 1
  store i64 %_bop2554, i64* %j
  %_id2556 = load i64, i64* %_low2548
  store i64 %_id2556, i64* %k
  br label %_start2564
_start2564:
  %_id2559 = load i64, i64* %i
  %_id2560 = load i64, i64* %_mid2550
  %_bop2558 = icmp sle i64 %_id2559, %_id2560
  %_id2562 = load i64, i64* %j
  %_id2563 = load i64, i64* %_high2549
  %_bop2561 = icmp sle i64 %_id2562, %_id2563
  %_bop2557 = and i1 %_bop2558, %_bop2561
  br i1 %_bop2557, label %_body2565, label %_end2566
_body2565:
  %_id2568 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2547
  %_id2569 = load i64, i64* %i
  %_index_ptr2570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2568, i32 0, i32 1, i64 %_id2569
  %_idx_tmp2574 = load i64, i64* %_index_ptr2570
  %_id2571 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2547
  %_id2572 = load i64, i64* %j
  %_index_ptr2573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2571, i32 0, i32 1, i64 %_id2572
  %_idx_tmp2575 = load i64, i64* %_index_ptr2573
  %_bop2567 = icmp slt i64 %_idx_tmp2574, %_idx_tmp2575
  br i1 %_bop2567, label %_then2576, label %_else2577
_then2576:
  %_id2579 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2547
  %_id2580 = load i64, i64* %i
  %_index_ptr2581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2579, i32 0, i32 1, i64 %_id2580
  %_idx_tmp2582 = load i64, i64* %_index_ptr2581
  %_id2583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2584 = load i64, i64* %k
  %_index_ptr2585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2583, i32 0, i32 1, i64 %_id2584
  store i64 %_idx_tmp2582, i64* %_index_ptr2585
  %_id2587 = load i64, i64* %k
  %_bop2586 = add i64 %_id2587, 1
  store i64 %_bop2586, i64* %k
  %_id2589 = load i64, i64* %i
  %_bop2588 = add i64 %_id2589, 1
  store i64 %_bop2588, i64* %i
  br label %_end2578
_else2577:
  %_id2590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2547
  %_id2591 = load i64, i64* %j
  %_index_ptr2592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2590, i32 0, i32 1, i64 %_id2591
  %_idx_tmp2593 = load i64, i64* %_index_ptr2592
  %_id2594 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2595 = load i64, i64* %k
  %_index_ptr2596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2594, i32 0, i32 1, i64 %_id2595
  store i64 %_idx_tmp2593, i64* %_index_ptr2596
  %_id2598 = load i64, i64* %k
  %_bop2597 = add i64 %_id2598, 1
  store i64 %_bop2597, i64* %k
  %_id2600 = load i64, i64* %j
  %_bop2599 = add i64 %_id2600, 1
  store i64 %_bop2599, i64* %j
  br label %_end2578
_end2578:
  br label %_start2564
_end2566:
  br label %_start2604
_start2604:
  %_id2602 = load i64, i64* %i
  %_id2603 = load i64, i64* %_mid2550
  %_bop2601 = icmp sle i64 %_id2602, %_id2603
  br i1 %_bop2601, label %_body2605, label %_end2606
_body2605:
  %_id2607 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2547
  %_id2608 = load i64, i64* %i
  %_index_ptr2609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2607, i32 0, i32 1, i64 %_id2608
  %_idx_tmp2610 = load i64, i64* %_index_ptr2609
  %_id2611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2612 = load i64, i64* %k
  %_index_ptr2613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2611, i32 0, i32 1, i64 %_id2612
  store i64 %_idx_tmp2610, i64* %_index_ptr2613
  %_id2615 = load i64, i64* %k
  %_bop2614 = add i64 %_id2615, 1
  store i64 %_bop2614, i64* %k
  %_id2617 = load i64, i64* %i
  %_bop2616 = add i64 %_id2617, 1
  store i64 %_bop2616, i64* %i
  br label %_start2604
_end2606:
  br label %_start2621
_start2621:
  %_id2619 = load i64, i64* %j
  %_id2620 = load i64, i64* %_high2549
  %_bop2618 = icmp sle i64 %_id2619, %_id2620
  br i1 %_bop2618, label %_body2622, label %_end2623
_body2622:
  %_id2624 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2547
  %_id2625 = load i64, i64* %j
  %_index_ptr2626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2624, i32 0, i32 1, i64 %_id2625
  %_idx_tmp2627 = load i64, i64* %_index_ptr2626
  %_id2628 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2629 = load i64, i64* %k
  %_index_ptr2630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2628, i32 0, i32 1, i64 %_id2629
  store i64 %_idx_tmp2627, i64* %_index_ptr2630
  %_id2632 = load i64, i64* %k
  %_bop2631 = add i64 %_id2632, 1
  store i64 %_bop2631, i64* %k
  %_id2634 = load i64, i64* %j
  %_bop2633 = add i64 %_id2634, 1
  store i64 %_bop2633, i64* %j
  br label %_start2621
_end2623:
  %_id2635 = load i64, i64* %_low2548
  store i64 %_id2635, i64* %i
  br label %_start2639
_start2639:
  %_id2637 = load i64, i64* %i
  %_id2638 = load i64, i64* %k
  %_bop2636 = icmp slt i64 %_id2637, %_id2638
  br i1 %_bop2636, label %_body2640, label %_end2641
_body2640:
  %_id2642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %c
  %_id2643 = load i64, i64* %i
  %_index_ptr2644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2642, i32 0, i32 1, i64 %_id2643
  %_idx_tmp2645 = load i64, i64* %_index_ptr2644
  %_id2646 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2547
  %_id2647 = load i64, i64* %i
  %_index_ptr2648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2646, i32 0, i32 1, i64 %_id2647
  store i64 %_idx_tmp2645, i64* %_index_ptr2648
  %_id2650 = load i64, i64* %i
  %_bop2649 = add i64 %_id2650, 1
  store i64 %_bop2649, i64* %i
  br label %_start2639
_end2641:
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
