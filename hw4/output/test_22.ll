; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i434 = alloca i64
  store i64 %i, i64* %_i434
  %_437 = load i64, i64* %_i434
  %_retval438 = call i64 @f2(i64 %_437)
  ret i64 %_retval438
}

define i64 @f2(i64 %i) {
  %_i428 = alloca i64
  store i64 %i, i64* %_i428
  %_431 = load i64, i64* %_i428
  %_retval432 = call i64 @f3(i64 %_431)
  ret i64 %_retval432
}

define i64 @f3(i64 %i) {
  %_i422 = alloca i64
  store i64 %i, i64* %_i422
  %_425 = load i64, i64* %_i422
  %_retval426 = call i64 @f4(i64 %_425)
  ret i64 %_retval426
}

define i64 @f4(i64 %i) {
  %_i416 = alloca i64
  store i64 %i, i64* %_i416
  %_419 = load i64, i64* %_i416
  %_retval420 = call i64 @f5(i64 %_419)
  ret i64 %_retval420
}

define i64 @f5(i64 %i) {
  %_i410 = alloca i64
  store i64 %i, i64* %_i410
  %_413 = load i64, i64* %_i410
  %_retval414 = call i64 @f6(i64 %_413)
  ret i64 %_retval414
}

define i64 @f6(i64 %i) {
  %_i404 = alloca i64
  store i64 %i, i64* %_i404
  %_407 = load i64, i64* %_i404
  %_retval408 = call i64 @f7(i64 %_407)
  ret i64 %_retval408
}

define i64 @f7(i64 %i) {
  %_i398 = alloca i64
  store i64 %i, i64* %_i398
  %_401 = load i64, i64* %_i398
  %_retval402 = call i64 @f8(i64 %_401)
  ret i64 %_retval402
}

define i64 @f8(i64 %i) {
  %_i392 = alloca i64
  store i64 %i, i64* %_i392
  %_395 = load i64, i64* %_i392
  %_retval396 = call i64 @f9(i64 %_395)
  ret i64 %_retval396
}

define i64 @f9(i64 %i) {
  %_i388 = alloca i64
  store i64 %i, i64* %_i388
  %_390 = load i64, i64* %_i388
  ret i64 %_390
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc381 = alloca i64
  store i64 %argc, i64* %_argc381
  %_argv382 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv382
  %_385 = load i64, i64* %_argc381
  %_retval386 = call i64 @f1(i64 %_385)
  ret i64 %_retval386
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
