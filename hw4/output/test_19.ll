; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_526 = global i64 1
@_527 = global i64 2
@_528 = global i64 3
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_523 = global i64 4
@_524 = global i64 5
@_525 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x529 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x529
  %_y530 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y530
  %_b531 = alloca i1
  store i1 %b, i1* %_b531
  %_533 = load i1, i1* %_b531
  br i1 %_533, label %_then534, label %_else535
_then534:
  %_538 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x529
  ret { i64, [0 x i64] }* %_538
_else535:
  %_541 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y530
  ret { i64, [0 x i64] }* %_541
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc502 = alloca i64
  store i64 %argc, i64* %_argc502
  %_argv503 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv503
  %_507 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_509 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_retval511 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_507, { i64, [3 x i64] }** %_509, i1 1)
  %_index_ptr513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_retval511, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr513
  %_518 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_index_ptr520 = getelementptr { i64, [3 x i64] }*, { i64, [3 x i64] }** %_518, i32 0, i32 1, i32 0
  %_522 = load i64, i64* %_index_ptr520
  ret i64 %_522
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
