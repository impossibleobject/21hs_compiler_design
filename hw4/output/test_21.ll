; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_634 = global i64 1
@_635 = global i64 2
@_636 = global i64 3
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_631 = global i64 4
@_632 = global i64 5
@_633 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x637 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x637
  %_y638 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y638
  %_b639 = alloca i1
  store i1 %b, i1* %_b639
  %_641 = load i1, i1* %_b639
  br i1 %_641, label %_then642, label %_else643
_then642:
  %_646 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x637
  ret { i64, [0 x i64] }* %_646
_else643:
  %_649 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y638
  ret { i64, [0 x i64] }* %_649
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc588 = alloca i64
  store i64 %argc, i64* %_argc588
  %_argv589 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv589
  %_z602 = alloca i64
  %_593 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_595 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_retval597 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_593, { i64, [3 x i64] }** %_595, i1 1)
  %_index_ptr599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_retval597, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr599
  store i64 %_603, i64* %_z602
  %_607 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_609 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_retval611 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_607, { i64, [3 x i64] }** %_609, i1 1)
  %_index_ptr613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_retval611, i32 0, i32 1, i32 0
  %_626 = load i64, i64* %_index_ptr613
  %_618 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_620 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_retval622 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_618, { i64, [3 x i64] }** %_620, i1 0)
  %_index_ptr624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_retval622, i32 0, i32 1, i32 0
  %_627 = load i64, i64* %_index_ptr624
  %_603 = add i64 %_626, %_627
  %_629 = load i64, i64* %_z602
  ret i64 %_629
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
