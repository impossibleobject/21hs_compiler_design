; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc286 = alloca i64
  store i64 %argc, i64* %_argc286
  %_argv287 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv287
  %_i288 = alloca i64
  store i64 9, i64* %_i288
  %_j290 = alloca i64
  store i64 %_291, i64* %_j290
  %_293 = load i64, i64* %_i288
  %_295 = load i64, i64* %_i288
  %_291 = add i64 %_293, %_295
  %_302 = load i64, i64* %_i288
  %_305 = load i64, i64* %_i288
  %_307 = load i64, i64* %_i288
  %_303 = mul i64 %_305, %_307
  %_300 = add i64 %_302, %_303
  %_309 = load i64, i64* %_j290
  %_299 = sub i64 %_300, %_309
  %_298 = lshr i64 %_299, 2
  %_297 = shl i64 %_298, 2
  %_296 = ashr i64 %_297, 2
  ret i64 %_296
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
