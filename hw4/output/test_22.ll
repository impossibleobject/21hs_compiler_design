; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc384 = alloca i64
  store i64 %argc, i64* %_argc384
  %_argv385 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv385
  %_i386 = alloca i64
  %_j387 = alloca i64
  store i64 9, i64* %_i386
  %_id389 = load i64, i64* %_i386
  %_id390 = load i64, i64* %_i386
  %_bop388 = add i64 %_id389, %_id390
  store i64 %_bop388, i64* %_j387
  %_id396 = load i64, i64* %_i386
  %_id398 = load i64, i64* %_i386
  %_id399 = load i64, i64* %_i386
  %_bop397 = mul i64 %_id398, %_id399
  %_bop395 = add i64 %_id396, %_bop397
  %_id400 = load i64, i64* %_j387
  %_bop394 = sub i64 %_bop395, %_id400
  %_bop393 = lshr i64 %_bop394, 2
  %_bop392 = shl i64 %_bop393, 2
  %_bop391 = ashr i64 %_bop392, 2
  ret i64 %_bop391
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
