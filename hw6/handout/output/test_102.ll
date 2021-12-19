; generated from: hw5programs/ifq2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc8608, { i64, [0 x i8*] }* %_argv8605) {
  %_x8611 = alloca { i64, [0 x i64] }*
  %_z8613 = alloca i64
  store { i64, [0 x i64] }* null, { i64, [0 x i64] }** %_x8611
  store i64 0, i64* %_z8613
  %_x8615 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x8611
  %_cast8619 = icmp eq { i64, [0 x i64] }* %_x8615, null
  br i1 %_cast8619, label %_null8622, label %_notnull8621
_merge8620:
  %_z8624 = load i64, i64* %_z8613
  ret i64 %_z8624
_notnull8621:
  store i64 4, i64* %_z8613
  br label %_merge8620
_null8622:
  store i64 5, i64* %_z8613
  br label %_merge8620
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
