; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_bop1761 = add i64 1, 1
  store i64 %_bop1761, i64* @a
  ret i64 %_bop1761
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1740 = alloca i64
  store i64 %argc, i64* %_argc1740
  %_argv1741 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1741
  %_b1742 = alloca { i64, [0 x i64] }*
  %_Call_retval1743 = call i64 @f()
  %_raw_array1744 = call i64* @oat_alloc_array(i64 %_Call_retval1743)
  %_array1745 = bitcast i64* %_raw_array1744 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1745, { i64, [0 x i64] }** %_b1742
  %_id1746 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1742
  %_index_ptr1747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1746, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr1747
  %_id1748 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1742
  %_index_ptr1749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1748, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr1749
  %_id1753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1742
  %_index_ptr1754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1753, i32 0, i32 1, i32 0
  %_1755 = load i64, i64* %_index_ptr1754
  %_bop1751 = add i64 1, %_1755
  %_id1756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1742
  %_index_ptr1757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1756, i32 0, i32 1, i32 1
  %_1758 = load i64, i64* %_index_ptr1757
  %_bop1750 = add i64 %_bop1751, %_1758
  ret i64 %_bop1750
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
