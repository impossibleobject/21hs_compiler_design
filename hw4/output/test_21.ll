; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_671 = global i64 1
@_672 = global i64 2
@_673 = global i64 3
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_668 = global i64 4
@_669 = global i64 5
@_670 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x674 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x674
  %_y675 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y675
  %_b676 = alloca i1
  store i1 %b, i1* %_b676
  %_id678 = load i1, i1* %_b676
  br i1 %_id678, label %_then679, label %_else680
_then679:
  %_id683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x674
  ret { i64, [0 x i64] }* %_id683
_else680:
  %_id686 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y675
  ret { i64, [0 x i64] }* %_id686
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc627 = alloca i64
  store i64 %argc, i64* %_argc627
  %_argv628 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv628
  %_z640 = alloca i64
  %_id632 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id634 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_Call_retval636 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id632, { i64, [3 x i64] }** %_id634, i1 1)
  %_index_ptr638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval636, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr638
  store i64 %_bop642, i64* %_z640
  %_id646 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id648 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_Call_retval650 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id646, { i64, [3 x i64] }** %_id648, i1 1)
  %_index_ptr652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval650, i32 0, i32 1, i32 0
  %_663 = load i64, i64* %_index_ptr652
  %_id656 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_id658 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_Call_retval660 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id656, { i64, [3 x i64] }** %_id658, i1 0)
  %_index_ptr662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval660, i32 0, i32 1, i32 0
  %_664 = load i64, i64* %_index_ptr662
  %_bop642 = add i64 %_663, %_664
  %_id666 = load i64, i64* %_z640
  ret i64 %_id666
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
