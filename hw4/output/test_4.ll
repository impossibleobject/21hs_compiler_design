; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc37 = alloca i64
  store i64 %argc, i64* %_argc37
  %_argv38 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv38
  %_x39 = alloca i64
  %_y41 = alloca i64
  %_bop40 = lshr i64 100, 3
  store i64 %_bop40, i64* %_x39
  %_bop42 = shl i64 100, 3
  store i64 %_bop42, i64* %_y41
  %_id45 = load i64, i64* %_x39
  %_id46 = load i64, i64* %_y41
  %_bop44 = sub i64 %_id45, %_id46
  %_bop43 = icmp sle i64 %_bop44, 0
  br i1 %_bop43, label %_then47, label %_else48
_then47:
  %_id52 = load i64, i64* %_x39
  %_uop51 = sub i64 0, %_id52
  %_id53 = load i64, i64* %_y41
  %_bop50 = sub i64 %_uop51, %_id53
  ret i64 %_bop50
_else48:
  %_id55 = load i64, i64* %_x39
  %_id56 = load i64, i64* %_y41
  %_bop54 = sub i64 %_id55, %_id56
  ret i64 %_bop54
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
