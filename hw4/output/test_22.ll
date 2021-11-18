; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i438 = alloca i64
  store i64 %i, i64* %_i438
  %_441 = load i64, i64* %_i438
  %_retval442 = call i64 @f2(i64 %_441)
  ret i64 %_retval442
}

define i64 @f2(i64 %i) {
  %_i432 = alloca i64
  store i64 %i, i64* %_i432
  %_435 = load i64, i64* %_i432
  %_retval436 = call i64 @f3(i64 %_435)
  ret i64 %_retval436
}

define i64 @f3(i64 %i) {
  %_i426 = alloca i64
  store i64 %i, i64* %_i426
  %_429 = load i64, i64* %_i426
  %_retval430 = call i64 @f4(i64 %_429)
  ret i64 %_retval430
}

define i64 @f4(i64 %i) {
  %_i420 = alloca i64
  store i64 %i, i64* %_i420
  %_423 = load i64, i64* %_i420
  %_retval424 = call i64 @f5(i64 %_423)
  ret i64 %_retval424
}

define i64 @f5(i64 %i) {
  %_i414 = alloca i64
  store i64 %i, i64* %_i414
  %_417 = load i64, i64* %_i414
  %_retval418 = call i64 @f6(i64 %_417)
  ret i64 %_retval418
}

define i64 @f6(i64 %i) {
  %_i408 = alloca i64
  store i64 %i, i64* %_i408
  %_411 = load i64, i64* %_i408
  %_retval412 = call i64 @f7(i64 %_411)
  ret i64 %_retval412
}

define i64 @f7(i64 %i) {
  %_i402 = alloca i64
  store i64 %i, i64* %_i402
  %_405 = load i64, i64* %_i402
  %_retval406 = call i64 @f8(i64 %_405)
  ret i64 %_retval406
}

define i64 @f8(i64 %i) {
  %_i396 = alloca i64
  store i64 %i, i64* %_i396
  %_399 = load i64, i64* %_i396
  %_retval400 = call i64 @f9(i64 %_399)
  ret i64 %_retval400
}

define i64 @f9(i64 %i) {
  %_i392 = alloca i64
  store i64 %i, i64* %_i392
  %_394 = load i64, i64* %_i392
  ret i64 %_394
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc385 = alloca i64
  store i64 %argc, i64* %_argc385
  %_argv386 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv386
  %_389 = load i64, i64* %_argc385
  %_retval390 = call i64 @f1(i64 %_389)
  ret i64 %_retval390
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
