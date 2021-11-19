; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_str2630 = global [4 x i8] c"123\00"
@_str2627 = global [4 x i8] c"789\00"
@_str2619 = global [4 x i8] c"def\00"
@_str2616 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2606 = alloca i64
  store i64 %argc, i64* %_argc2606
  %_argv2607 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2607
  %_strs2608 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array2611, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2608
  %_raw_array2610 = call i64* @oat_alloc_array(i64 2)
  %_array2611 = bitcast i64* %_raw_array2610 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array2624 = call i64* @oat_alloc_array(i64 2)
  %_array2625 = bitcast i64* %_raw_array2624 to { i64, [0 x i8*] }*
  %_2631 = getelementptr [4 x i8], [4 x i8]* @_str2630, i32 0, i32 0
  %_2633 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2625, i32 0, i32 1, i32 1
  store i8* %_2631, i8** %_2633
  %_2628 = getelementptr [4 x i8], [4 x i8]* @_str2627, i32 0, i32 0
  %_2632 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2625, i32 0, i32 1, i32 0
  store i8* %_2628, i8** %_2632
  %_2635 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2611, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array2625, { i64, [0 x i8*] }** %_2635
  %_raw_array2613 = call i64* @oat_alloc_array(i64 2)
  %_array2614 = bitcast i64* %_raw_array2613 to { i64, [0 x i8*] }*
  %_2620 = getelementptr [4 x i8], [4 x i8]* @_str2619, i32 0, i32 0
  %_2622 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2614, i32 0, i32 1, i32 1
  store i8* %_2620, i8** %_2622
  %_2617 = getelementptr [4 x i8], [4 x i8]* @_str2616, i32 0, i32 0
  %_2621 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2614, i32 0, i32 1, i32 0
  store i8* %_2617, i8** %_2621
  %_2634 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2611, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array2614, { i64, [0 x i8*] }** %_2634
  %_2645 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2643, i32 0, i32 1, i32 1
  %_2646 = load i8, i8* %_2645
  %_2642 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_2640, i32 0, i32 1, i32 1
  %_2643 = load { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2642
  %_2640 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2608
  call void @print_string(i8* %_2646)
  ret i64 0
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
