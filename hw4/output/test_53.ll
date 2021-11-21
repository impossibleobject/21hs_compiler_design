; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_3693 = global i64 1
@_3694 = global i64 2
@_3695 = global i64 3
@_3696 = global i64 4
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@_3689 = global i64 1
@_3690 = global i64 2
@_3691 = global i64 3
@_3692 = global i64 5

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar13660 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar13660
  %_ar23661 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar23661
  %_len3662 = alloca i64
  store i64 %len, i64* %_len3662
  %_val3663 = alloca i64
  %_i3664 = alloca i64
  store i64 0, i64* %_val3663
  store i64 0, i64* %_i3664
  br label %_start3668
_start3668:
  %_id3666 = load i64, i64* %_i3664
  %_id3667 = load i64, i64* %_len3662
  %_bop3665 = icmp slt i64 %_id3666, %_id3667
  br i1 %_bop3665, label %_body3669, label %_end3670
_body3669:
  %_id3672 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar13660
  %_id3673 = load i64, i64* %_i3664
  %_index_ptr3674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3672, i32 0, i32 1, i64 %_id3673
  %_3678 = load i64, i64* %_index_ptr3674
  %_id3675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar23661
  %_id3676 = load i64, i64* %_i3664
  %_index_ptr3677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id3675, i32 0, i32 1, i64 %_id3676
  %_3679 = load i64, i64* %_index_ptr3677
  %_bop3671 = icmp ne i64 %_3678, %_3679
  br i1 %_bop3671, label %_then3680, label %_else3681
_then3680:
  store i64 1, i64* %_val3663
  br label %_end3682
_else3681:
  br label %_end3682
_end3682:
  %_id3686 = load i64, i64* %_i3664
  %_bop3685 = add i64 %_id3686, 1
  store i64 %_bop3685, i64* %_i3664
  br label %_start3668
_end3670:
  %_id3687 = load i64, i64* %_val3663
  ret i64 %_id3687
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3647 = alloca i64
  store i64 %argc, i64* %_argc3647
  %_argv3648 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3648
  %_val3649 = alloca i64
  store i64 1, i64* %_val3649
  %_id3651 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr1
  %_id3652 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr2
  %_Call_retval3653 = call i64 @arrcheck({ i64, [4 x i64] }** %_id3651, { i64, [4 x i64] }** %_id3652, i64 4)
  %_bop3650 = icmp eq i64 %_Call_retval3653, 1
  br i1 %_bop3650, label %_then3654, label %_else3655
_then3654:
  store i64 0, i64* %_val3649
  br label %_end3656
_else3655:
  br label %_end3656
_end3656:
  %_id3658 = load i64, i64* %_val3649
  ret i64 %_id3658
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
