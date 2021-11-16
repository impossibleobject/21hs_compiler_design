; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i396 = alloca i64
  store i64 %i, i64* %_i396
  %_399 = load i64 (i64), i64 (i64)* @f2
  % = call i64 (i64) %_399(i64 %_i396)
  ret i64 %_399
}

define i64 @f2(i64 %i) {
  %_i390 = alloca i64
  store i64 %i, i64* %_i390
  %_393 = load i64 (i64), i64 (i64)* @f3
  % = call i64 (i64) %_393(i64 %_i390)
  ret i64 %_393
}

define i64 @f3(i64 %i) {
  %_i384 = alloca i64
  store i64 %i, i64* %_i384
  %_387 = load i64 (i64), i64 (i64)* @f4
  % = call i64 (i64) %_387(i64 %_i384)
  ret i64 %_387
}

define i64 @f4(i64 %i) {
  %_i378 = alloca i64
  store i64 %i, i64* %_i378
  %_381 = load i64 (i64), i64 (i64)* @f5
  % = call i64 (i64) %_381(i64 %_i378)
  ret i64 %_381
}

define i64 @f5(i64 %i) {
  %_i372 = alloca i64
  store i64 %i, i64* %_i372
  %_375 = load i64 (i64), i64 (i64)* @f6
  % = call i64 (i64) %_375(i64 %_i372)
  ret i64 %_375
}

define i64 @f6(i64 %i) {
  %_i366 = alloca i64
  store i64 %i, i64* %_i366
  %_369 = load i64 (i64), i64 (i64)* @f7
  % = call i64 (i64) %_369(i64 %_i366)
  ret i64 %_369
}

define i64 @f7(i64 %i) {
  %_i360 = alloca i64
  store i64 %i, i64* %_i360
  %_363 = load i64 (i64), i64 (i64)* @f8
  % = call i64 (i64) %_363(i64 %_i360)
  ret i64 %_363
}

define i64 @f8(i64 %i) {
  %_i354 = alloca i64
  store i64 %i, i64* %_i354
  %_357 = load i64 (i64), i64 (i64)* @f9
  % = call i64 (i64) %_357(i64 %_i354)
  ret i64 %_357
}

define i64 @f9(i64 %i) {
  %_i351 = alloca i64
  store i64 %i, i64* %_i351
  ret i64 %_i351
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc344 = alloca i64
  store i64 %argc, i64* %_argc344
  %_argv345 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv345
  %_348 = load i64 (i64), i64 (i64)* @f1
  % = call i64 (i64) %_348(i64 %_argc344)
  ret i64 %_348
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
