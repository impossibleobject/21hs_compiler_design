; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_498 = alloca i64
  store i64 %i, i64* %_498
  %_i497 = load i64, i64* %_498
  %_retval502 = call i64 (i64)* @f2(i64 %_i497)
  %_503 = load i64 (i64), i64 (i64)* %_retval502
  ret i64 %_503
}

define i64 @f2(i64 %i) {
  %_491 = alloca i64
  store i64 %i, i64* %_491
  %_i490 = load i64, i64* %_491
  %_retval495 = call i64 (i64)* @f3(i64 %_i490)
  %_496 = load i64 (i64), i64 (i64)* %_retval495
  ret i64 %_496
}

define i64 @f3(i64 %i) {
  %_484 = alloca i64
  store i64 %i, i64* %_484
  %_i483 = load i64, i64* %_484
  %_retval488 = call i64 (i64)* @f4(i64 %_i483)
  %_489 = load i64 (i64), i64 (i64)* %_retval488
  ret i64 %_489
}

define i64 @f4(i64 %i) {
  %_477 = alloca i64
  store i64 %i, i64* %_477
  %_i476 = load i64, i64* %_477
  %_retval481 = call i64 (i64)* @f5(i64 %_i476)
  %_482 = load i64 (i64), i64 (i64)* %_retval481
  ret i64 %_482
}

define i64 @f5(i64 %i) {
  %_470 = alloca i64
  store i64 %i, i64* %_470
  %_i469 = load i64, i64* %_470
  %_retval474 = call i64 (i64)* @f6(i64 %_i469)
  %_475 = load i64 (i64), i64 (i64)* %_retval474
  ret i64 %_475
}

define i64 @f6(i64 %i) {
  %_463 = alloca i64
  store i64 %i, i64* %_463
  %_i462 = load i64, i64* %_463
  %_retval467 = call i64 (i64)* @f7(i64 %_i462)
  %_468 = load i64 (i64), i64 (i64)* %_retval467
  ret i64 %_468
}

define i64 @f7(i64 %i) {
  %_456 = alloca i64
  store i64 %i, i64* %_456
  %_i455 = load i64, i64* %_456
  %_retval460 = call i64 (i64)* @f8(i64 %_i455)
  %_461 = load i64 (i64), i64 (i64)* %_retval460
  ret i64 %_461
}

define i64 @f8(i64 %i) {
  %_449 = alloca i64
  store i64 %i, i64* %_449
  %_i448 = load i64, i64* %_449
  %_retval453 = call i64 (i64)* @f9(i64 %_i448)
  %_454 = load i64 (i64), i64 (i64)* %_retval453
  ret i64 %_454
}

define i64 @f9(i64 %i) {
  %_444 = alloca i64
  store i64 %i, i64* %_444
  %_i443 = load i64, i64* %_444
  ret i64 %_i443
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_435 = alloca i64
  store i64 %argc, i64* %_435
  %_argc434 = load i64, i64* %_435
  %_437 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_437
  %_argv436 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_437
  %_retval441 = call i64 (i64)* @f1(i64 %_argc434)
  %_442 = load i64 (i64), i64 (i64)* %_retval441
  ret i64 %_442
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
