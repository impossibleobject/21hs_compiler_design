; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc280 = alloca i64
  store i64 %argc, i64* %_argc280
  %_argv281 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv281
  %_285 = alloca i64
  store i64 6, i64* %_285
  %_288 = load i64, i64* %_285
  %_287 = alloca i64
  store i64 5, i64* %_287
  %_289 = load i64, i64* %_287
  %_bop_tmp290 = icmp ne i64 %_288, %_289
  %_bop283 = alloca i1
  store i1 %_bop_tmp290, i1* %_bop283
  %_ifthenelse291 = load i1, i1* %_bop283
  br i1 %_ifthenelse291, label %_then292, label %_else293
_then292:
  %_310 = alloca i64
  store i64 5, i64* %_310
  %_317 = load i64, i64* %_310
  %_314 = alloca i64
  store i64 6, i64* %_314
  %_315 = load i64, i64* %_314
  %_uop_tmp316 = sub i64 0, %_315
  %_uop312 = alloca i64
  store i64 %_uop_tmp316, i64* %_uop312
  %_318 = load i64, i64* %_uop312
  %_bop_tmp319 = lshr i64 %_317, %_318
  %_bop308 = alloca i64
  store i64 %_bop_tmp319, i64* %_bop308
  %_322 = load i64, i64* %_bop308
  %_321 = alloca i64
  store i64 9, i64* %_321
  %_323 = load i64, i64* %_321
  %_bop_tmp324 = shl i64 %_322, %_323
  %_bop306 = alloca i64
  store i64 %_bop_tmp324, i64* %_bop306
  %_327 = load i64, i64* %_bop306
  %_326 = alloca i64
  store i64 10, i64* %_326
  %_328 = load i64, i64* %_326
  %_bop_tmp329 = ashr i64 %_327, %_328
  %_bop304 = alloca i64
  store i64 %_bop_tmp329, i64* %_bop304
  %_330 = load i64, i64* %_bop304
  %_uop_tmp331 = xor i64 -1, %_330
  %_uop302 = alloca i64
  store i64 %_uop_tmp331, i64* %_uop302
  %_334 = load i64, i64* %_uop302
  %_333 = alloca i64
  store i64 2, i64* %_333
  %_335 = load i64, i64* %_333
  %_bop_tmp336 = mul i64 %_334, %_335
  %_bop300 = alloca i64
  store i64 %_bop_tmp336, i64* %_bop300
  %_339 = load i64, i64* %_bop300
  %_338 = alloca i64
  store i64 100, i64* %_338
  %_340 = load i64, i64* %_338
  %_bop_tmp341 = sub i64 %_339, %_340
  %_bop298 = alloca i64
  store i64 %_bop_tmp341, i64* %_bop298
  %_344 = load i64, i64* %_bop298
  %_343 = alloca i64
  store i64 6, i64* %_343
  %_345 = load i64, i64* %_343
  %_bop_tmp346 = add i64 %_344, %_345
  %_bop296 = alloca i64
  store i64 %_bop_tmp346, i64* %_bop296
  %_ret347 = load i64, i64* %_bop296
  ret i64 %_ret347
_else293:
  %_349 = alloca i64
  store i64 2, i64* %_349
  %_ret350 = load i64, i64* %_349
  ret i64 %_ret350
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
