; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_567 = global i64 1
@_568 = global i64 2
@_569 = global i64 3
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_564 = global i64 4
@_565 = global i64 5
@_566 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x570 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x570
  %_y571 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y571
  %_b572 = alloca i1
  store i1 %b, i1* %_b572
  %_id574 = load i1, i1* %_b572
  br i1 %_id574, label %_then575, label %_else576
_then575:
  %_id579 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x570
  ret { i64, [0 x i64] }* %_id579
_else576:
  %_id582 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y571
  ret { i64, [0 x i64] }* %_id582
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc545 = alloca i64
  store i64 %argc, i64* %_argc545
  %_argv546 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv546
  %_id550 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id552 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_Call_retval554 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id550, { i64, [3 x i64] }** %_id552, i1 1)
  %_index_ptr556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval554, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr556
  %_id560 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_index_ptr562 = getelementptr { i64, [3 x i64] }*, { i64, [3 x i64] }** %_id560, i32 0, i32 1, i32 0
  %_563 = load i64, i64* %_index_ptr562
  ret i64 %_563
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
