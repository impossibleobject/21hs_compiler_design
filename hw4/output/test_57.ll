; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_7609 = global i64 1
@_7610 = global i64 2
@_7611 = global i64 3
@_7612 = global i64 4
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@_7605 = global i64 1
@_7606 = global i64 2
@_7607 = global i64 3
@_7608 = global i64 5

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar17557 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar17557
  %_ar27558 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar27558
  %_len7559 = alloca i64
  store i64 %len, i64* %_len7559
  %_val7560 = alloca i64
  %_i7562 = alloca i64
  store i64 0, i64* %_val7560
  store i64 0, i64* %_i7562
  br label %_start7570
_start7570:
  %_id7567 = load i64, i64* %_i7562
  %_id7569 = load i64, i64* %_len7559
  %_bop7565 = icmp slt i64 %_id7567, %_id7569
  br i1 %_bop7565, label %_body7571, label %_end7572
_body7571:
  %_id7577 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar17557
  %_id7579 = load i64, i64* %_i7562
  %_index_ptr7580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id7577, i32 0, i32 1, i64 %_id7579
  %_7587 = load i64, i64* %_index_ptr7580
  %_id7583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar27558
  %_id7585 = load i64, i64* %_i7562
  %_index_ptr7586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id7583, i32 0, i32 1, i64 %_id7585
  %_7588 = load i64, i64* %_index_ptr7586
  %_bop7574 = icmp ne i64 %_7587, %_7588
  br i1 %_bop7574, label %_then7589, label %_else7590
_then7589:
  store i64 1, i64* %_val7560
  br label %_end7591
_else7590:
  br label %_end7591
_end7591:
  %_id7600 = load i64, i64* %_i7562
  %_bop7598 = add i64 %_id7600, 1
  store i64 %_bop7598, i64* %_i7562
  br label %_start7570
_end7572:
  %_id7603 = load i64, i64* %_val7560
  ret i64 %_id7603
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7534 = alloca i64
  store i64 %argc, i64* %_argc7534
  %_argv7535 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7535
  %_val7536 = alloca i64
  store i64 1, i64* %_val7536
  %_id7542 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr1
  %_id7544 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr2
  %_Call_retval7546 = call i64 @arrcheck({ i64, [4 x i64] }** %_id7542, { i64, [4 x i64] }** %_id7544, i64 4)
  %_bop7539 = icmp eq i64 %_Call_retval7546, 1
  br i1 %_bop7539, label %_then7548, label %_else7549
_then7548:
  store i64 0, i64* %_val7536
  br label %_end7550
_else7549:
  br label %_end7550
_end7550:
  %_id7555 = load i64, i64* %_val7536
  ret i64 %_id7555
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
