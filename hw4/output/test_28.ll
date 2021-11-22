; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %i = alloca i64
  %j = alloca i64
  %_argc341 = alloca i64
  store i64 %argc, i64* %_argc341
  %_argv342 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv342
  store i64 9, i64* %i
  %_id344 = load i64, i64* %i
  %_id345 = load i64, i64* %i
  %_bop343 = add i64 %_id344, %_id345
  store i64 %_bop343, i64* %j
  %_id351 = load i64, i64* %i
  %_id353 = load i64, i64* %i
  %_id354 = load i64, i64* %i
  %_bop352 = mul i64 %_id353, %_id354
  %_bop350 = add i64 %_id351, %_bop352
  %_id355 = load i64, i64* %j
  %_bop349 = sub i64 %_bop350, %_id355
  %_bop348 = lshr i64 %_bop349, 2
  %_bop347 = shl i64 %_bop348, 2
  %_bop346 = ashr i64 %_bop347, 2
  ret i64 %_bop346
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
