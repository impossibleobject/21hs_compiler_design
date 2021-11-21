; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x613 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x613
  %_y614 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y614
  %_b615 = alloca i1
  store i1 %b, i1* %_b615
  %_id617 = load i1, i1* %_b615
  br i1 %_id617, label %_then618, label %_else619
_then618:
  %_id622 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x613
  ret { i64, [0 x i64] }* %_id622
_else619:
  %_id625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y614
  ret { i64, [0 x i64] }* %_id625
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc584 = alloca i64
  store i64 %argc, i64* %_argc584
  %_argv585 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv585
  %_x586 = alloca { i64, [0 x i64] }*
  %_y591 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array590, { i64, [0 x i64] }** %_x586
  %_raw_array589 = call i64* @oat_alloc_array(i64 3)
  %_array590 = bitcast i64* %_raw_array589 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array595, { i64, [0 x i64] }** %_y591
  %_raw_array594 = call i64* @oat_alloc_array(i64 3)
  %_array595 = bitcast i64* %_raw_array594 to { i64, [0 x i64] }*
  %_id599 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x586
  %_id601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y591
  %_Call_retval603 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id599, { i64, [0 x i64] }* %_id601, i1 1)
  %_index_ptr605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval603, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr605
  %_id609 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x586
  %_index_ptr611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id609, i32 0, i32 1, i32 0
  %_612 = load i64, i64* %_index_ptr611
  ret i64 %_612
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
