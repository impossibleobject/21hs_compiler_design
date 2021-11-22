; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc379 = alloca i64
  store i64 %argc, i64* %_argc379
  %_argv380 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv380
  %_i381 = alloca i64
  %_j382 = alloca i64
  store i64 9, i64* %_i381
  %_id384 = load i64, i64* %_i381
  %_id385 = load i64, i64* %_i381
  %_bop383 = add i64 %_id384, %_id385
  store i64 %_bop383, i64* %_j382
  %_id391 = load i64, i64* %_i381
  %_id393 = load i64, i64* %_i381
  %_id394 = load i64, i64* %_i381
  %_bop392 = mul i64 %_id393, %_id394
  %_bop390 = add i64 %_id391, %_bop392
  %_id395 = load i64, i64* %_j382
  %_bop389 = sub i64 %_bop390, %_id395
  %_bop388 = lshr i64 %_bop389, 2
  %_bop387 = shl i64 %_bop388, 2
  %_bop386 = ashr i64 %_bop387, 2
  ret i64 %_bop386
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
