; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %_n4728) {
  %_n4729 = alloca i64
  store i64 %_n4728, i64* %_n4729
  %_n4731 = load i64, i64* %_n4729
  %_bop4732 = icmp eq i64 %_n4731, 0
  br i1 %_bop4732, label %_then4735, label %_else4734
_else4734:
  br label %_merge4733
_else4739:
  br label %_merge4738
_merge4733:
  %_n4736 = load i64, i64* %_n4729
  %_bop4737 = icmp eq i64 %_n4736, 1
  br i1 %_bop4737, label %_then4740, label %_else4739
_merge4738:
  %_n4741 = load i64, i64* %_n4729
  %_bop4742 = sub i64 %_n4741, 1
  %_result4743 = call i64 @fibR(i64 %_bop4742)
  %_n4744 = load i64, i64* %_n4729
  %_bop4745 = sub i64 %_n4744, 2
  %_result4746 = call i64 @fibR(i64 %_bop4745)
  %_bop4747 = add i64 %_result4743, %_result4746
  ret i64 %_bop4747
_then4735:
  ret i64 0
_then4740:
  ret i64 1
}

define i64 @fibI(i64 %_n4688) {
  %_n4689 = alloca i64
  %_a4691 = alloca i64
  %_b4693 = alloca i64
  %_old4714 = alloca i64
  store i64 %_n4688, i64* %_n4689
  store i64 0, i64* %_a4691
  store i64 1, i64* %_b4693
  %_n4695 = load i64, i64* %_n4689
  %_bop4696 = icmp eq i64 %_n4695, 0
  br i1 %_bop4696, label %_then4700, label %_else4699
_body4711:
  %_b4713 = load i64, i64* %_b4693
  store i64 %_b4713, i64* %_old4714
  %_b4716 = load i64, i64* %_b4693
  %_a4717 = load i64, i64* %_a4691
  %_bop4718 = add i64 %_b4716, %_a4717
  store i64 %_bop4718, i64* %_b4693
  %_old4720 = load i64, i64* %_old4714
  store i64 %_old4720, i64* %_a4691
  %_n4722 = load i64, i64* %_n4689
  %_bop4723 = sub i64 %_n4722, 1
  store i64 %_bop4723, i64* %_n4689
  br label %_cond4712
_cond4712:
  %_n4707 = load i64, i64* %_n4689
  %_bop4708 = sub i64 %_n4707, 2
  %_bop4709 = icmp sgt i64 %_bop4708, 0
  br i1 %_bop4709, label %_body4711, label %_post4710
_else4699:
  br label %_merge4698
_else4705:
  br label %_merge4704
_merge4698:
  %_n4701 = load i64, i64* %_n4689
  %_bop4702 = icmp eq i64 %_n4701, 1
  br i1 %_bop4702, label %_then4706, label %_else4705
_merge4704:
  br label %_cond4712
_post4710:
  %_a4725 = load i64, i64* %_a4691
  %_b4726 = load i64, i64* %_b4693
  %_bop4727 = add i64 %_a4725, %_b4726
  ret i64 %_bop4727
_then4700:
  %_a4697 = load i64, i64* %_a4691
  ret i64 %_a4697
_then4706:
  %_b4703 = load i64, i64* %_b4693
  ret i64 %_b4703
}

define i64 @program(i64 %_argc4673, { i64, [0 x i8*] }* %_argv4670) {
  %_val4676 = alloca i64
  store i64 1, i64* %_val4676
  %_result4678 = call i64 @fibR(i64 12)
  %_bop4679 = icmp eq i64 %_result4678, 144
  %_result4680 = call i64 @fibI(i64 12)
  %_bop4681 = icmp eq i64 %_result4680, 144
  %_bop4682 = and i1 %_bop4679, %_bop4681
  br i1 %_bop4682, label %_then4686, label %_else4685
_else4685:
  br label %_merge4684
_merge4684:
  %_val4687 = load i64, i64* %_val4676
  ret i64 %_val4687
_then4686:
  store i64 0, i64* %_val4676
  br label %_merge4684
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
