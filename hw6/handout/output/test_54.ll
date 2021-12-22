; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_i2786) {
  %_i2787 = alloca i64
  %_r2789 = alloca i64
  store i64 %_i2786, i64* %_i2787
  store i64 0, i64* %_r2789
  %_i2791 = load i64, i64* %_i2787
  %_bop2792 = icmp eq i64 %_i2791, 0
  br i1 %_bop2792, label %_then2802, label %_else2801
_else2801:
  %_i2794 = load i64, i64* %_i2787
  %_i2795 = load i64, i64* %_i2787
  %_bop2796 = sub i64 %_i2795, 1
  %_result2797 = call i64 @f(i64 %_bop2796)
  %_bop2798 = mul i64 %_i2794, %_result2797
  store i64 %_bop2798, i64* %_r2789
  br label %_merge2800
_merge2800:
  %_r2803 = load i64, i64* %_r2789
  ret i64 %_r2803
_then2802:
  store i64 1, i64* %_r2789
  br label %_merge2800
}

define i64 @program(i64 %_argc2782, { i64, [0 x i8*] }* %_argv2779) {
  %_result2785 = call i64 @f(i64 5)
  ret i64 %_result2785
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
