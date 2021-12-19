; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc8212, { i64, [0 x i8*] }* %_argv8209) {
  %_x8216 = alloca i64
  %_y8219 = alloca i64
  store i64 12, i64* %_x8216
  store i64 800, i64* %_y8219
  %_x8221 = load i64, i64* %_x8216
  %_y8222 = load i64, i64* %_y8219
  %_bop8223 = sub i64 %_x8221, %_y8222
  %_bop8224 = icmp sle i64 %_bop8223, 0
  br i1 %_bop8224, label %_then8234, label %_else8233
_else8233:
  %_x8229 = load i64, i64* %_x8216
  %_y8230 = load i64, i64* %_y8219
  %_bop8231 = sub i64 %_x8229, %_y8230
  ret i64 %_bop8231
_merge8232:
  ret i64 0
_then8234:
  %_x8225 = load i64, i64* %_x8216
  %_unop8226 = sub i64 0, %_x8225
  %_y8227 = load i64, i64* %_y8219
  %_bop8228 = sub i64 %_unop8226, %_y8227
  ret i64 %_bop8228
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
