; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i468 = alloca i64
  store i64 %i, i64* %_i468
  %_471 = load i64, i64* %_i468
  %_retval472 = call i64 @f2(i64 %_471)
  ret i64 %_retval472
}

define i64 @f2(i64 %i) {
  %_i462 = alloca i64
  store i64 %i, i64* %_i462
  %_465 = load i64, i64* %_i462
  %_retval466 = call i64 @f3(i64 %_465)
  ret i64 %_retval466
}

define i64 @f3(i64 %i) {
  %_i456 = alloca i64
  store i64 %i, i64* %_i456
  %_459 = load i64, i64* %_i456
  %_retval460 = call i64 @f4(i64 %_459)
  ret i64 %_retval460
}

define i64 @f4(i64 %i) {
  %_i450 = alloca i64
  store i64 %i, i64* %_i450
  %_453 = load i64, i64* %_i450
  %_retval454 = call i64 @f5(i64 %_453)
  ret i64 %_retval454
}

define i64 @f5(i64 %i) {
  %_i444 = alloca i64
  store i64 %i, i64* %_i444
  %_447 = load i64, i64* %_i444
  %_retval448 = call i64 @f6(i64 %_447)
  ret i64 %_retval448
}

define i64 @f6(i64 %i) {
  %_i438 = alloca i64
  store i64 %i, i64* %_i438
  %_441 = load i64, i64* %_i438
  %_retval442 = call i64 @f7(i64 %_441)
  ret i64 %_retval442
}

define i64 @f7(i64 %i) {
  %_i432 = alloca i64
  store i64 %i, i64* %_i432
  %_435 = load i64, i64* %_i432
  %_retval436 = call i64 @f8(i64 %_435)
  ret i64 %_retval436
}

define i64 @f8(i64 %i) {
  %_i426 = alloca i64
  store i64 %i, i64* %_i426
  %_429 = load i64, i64* %_i426
  %_retval430 = call i64 @f9(i64 %_429)
  ret i64 %_retval430
}

define i64 @f9(i64 %i) {
  %_i422 = alloca i64
  store i64 %i, i64* %_i422
  %_424 = load i64, i64* %_i422
  ret i64 %_424
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc415 = alloca i64
  store i64 %argc, i64* %_argc415
  %_argv416 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv416
  %_419 = load i64, i64* %_argc415
  %_retval420 = call i64 @f1(i64 %_419)
  ret i64 %_retval420
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
