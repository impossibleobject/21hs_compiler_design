; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x574 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x574
  %_y575 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y575
  %_b576 = alloca i1
  store i1 %b, i1* %_b576
  %_578 = load i1, i1* %_b576
  br i1 %_578, label %_then579, label %_else580
_then579:
  %_583 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x574
  ret { i64, [0 x i64] }* %_583
_else580:
  %_586 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y575
  ret { i64, [0 x i64] }* %_586
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc543 = alloca i64
  store i64 %argc, i64* %_argc543
  %_argv544 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv544
  %_x545 = alloca { i64, [0 x i64] }*
  %_y550 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array549, { i64, [0 x i64] }** %_x545
  %_raw_array548 = call i64* @oat_alloc_array(i64 3)
  %_array549 = bitcast i64* %_raw_array548 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array554, { i64, [0 x i64] }** %_y550
  %_raw_array553 = call i64* @oat_alloc_array(i64 3)
  %_array554 = bitcast i64* %_raw_array553 to { i64, [0 x i64] }*
  %_558 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x545
  %_560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y550
  %_retval562 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_558, { i64, [0 x i64] }* %_560, i1 1)
  %_index_ptr564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_retval562, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr564
  %_569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x545
  %_index_ptr571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_569, i32 0, i32 1, i32 0
  %_573 = load i64, i64* %_index_ptr571
  ret i64 %_573
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
