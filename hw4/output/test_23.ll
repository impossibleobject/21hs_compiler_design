; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1434 = alloca i64
  store i64 %x1, i64* %_x1434
  %_x2435 = alloca i64
  store i64 %x2, i64* %_x2435
  %_x3436 = alloca i64
  store i64 %x3, i64* %_x3436
  %_x4437 = alloca i64
  store i64 %x4, i64* %_x4437
  %_x5438 = alloca i64
  store i64 %x5, i64* %_x5438
  %_x6439 = alloca i64
  store i64 %x6, i64* %_x6439
  %_x7440 = alloca i64
  store i64 %x7, i64* %_x7440
  %_x8441 = alloca i64
  store i64 %x8, i64* %_x8441
  %_448 = add i64 %_x1434, %_x2435
  %_447 = add i64 %_448, %_x3436
  %_446 = add i64 %_447, %_x4437
  %_445 = add i64 %_446, %_x5438
  %_444 = add i64 %_445, %_x6439
  %_443 = add i64 %_444, %_x7440
  %_442 = add i64 %_443, %_x8441
  ret i64 %_442
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc418 = alloca i64
  store i64 %argc, i64* %_argc418
  %_argv419 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv419
  %_422 = load i64 (i64, i64, i64, i64, i64, i64, i64, i64), i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @f
  %_428 = sub i64 0, 5
  %_430 = sub i64 0, 4
  %_432 = sub i64 0, 3
  % = call i64 (i64, i64, i64, i64, i64, i64, i64, i64) %_422(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_428, i64 %_430, i64 %_432)
  ret i64 %_422
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
