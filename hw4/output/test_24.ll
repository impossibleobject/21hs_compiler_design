; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i475 = alloca i64
  store i64 %i, i64* %_i475
  %_478 = load i64, i64* %_i475
  %_retval479 = call i64 @f2(i64 %_478)
  ret i64 %_retval479
}

define i64 @f2(i64 %i) {
  %_i469 = alloca i64
  store i64 %i, i64* %_i469
  %_472 = load i64, i64* %_i469
  %_retval473 = call i64 @f3(i64 %_472)
  ret i64 %_retval473
}

define i64 @f3(i64 %i) {
  %_i463 = alloca i64
  store i64 %i, i64* %_i463
  %_466 = load i64, i64* %_i463
  %_retval467 = call i64 @f4(i64 %_466)
  ret i64 %_retval467
}

define i64 @f4(i64 %i) {
  %_i457 = alloca i64
  store i64 %i, i64* %_i457
  %_460 = load i64, i64* %_i457
  %_retval461 = call i64 @f5(i64 %_460)
  ret i64 %_retval461
}

define i64 @f5(i64 %i) {
  %_i451 = alloca i64
  store i64 %i, i64* %_i451
  %_454 = load i64, i64* %_i451
  %_retval455 = call i64 @f6(i64 %_454)
  ret i64 %_retval455
}

define i64 @f6(i64 %i) {
  %_i445 = alloca i64
  store i64 %i, i64* %_i445
  %_448 = load i64, i64* %_i445
  %_retval449 = call i64 @f7(i64 %_448)
  ret i64 %_retval449
}

define i64 @f7(i64 %i) {
  %_i439 = alloca i64
  store i64 %i, i64* %_i439
  %_442 = load i64, i64* %_i439
  %_retval443 = call i64 @f8(i64 %_442)
  ret i64 %_retval443
}

define i64 @f8(i64 %i) {
  %_i433 = alloca i64
  store i64 %i, i64* %_i433
  %_436 = load i64, i64* %_i433
  %_retval437 = call i64 @f9(i64 %_436)
  ret i64 %_retval437
}

define i64 @f9(i64 %i) {
  %_i429 = alloca i64
  store i64 %i, i64* %_i429
  %_431 = load i64, i64* %_i429
  ret i64 %_431
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc422 = alloca i64
  store i64 %argc, i64* %_argc422
  %_argv423 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv423
  %_426 = load i64, i64* %_argc422
  %_retval427 = call i64 @f1(i64 %_426)
  ret i64 %_retval427
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
