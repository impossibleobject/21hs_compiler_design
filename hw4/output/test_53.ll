; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc813 = alloca i64
  store i64 %argc, i64* %_argc813
  %_argv814 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv814
  %_raw_array815 = call i64* @oat_alloc_array(i64 2)
  %_array816 = bitcast i64* %_raw_array815 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array821 = call i64* @oat_alloc_array(i64 2)
  %_array822 = bitcast i64* %_raw_array821 to { i64, [0 x i64] }*
  %_CArr_elem_1824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array822, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1824
  %_CArr_elem_0823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array822, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0823
  %_CArr_elem_1826 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array816, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array822, { i64, [0 x i64] }** %_CArr_elem_1826
  %_raw_array817 = call i64* @oat_alloc_array(i64 2)
  %_array818 = bitcast i64* %_raw_array817 to { i64, [0 x i64] }*
  %_CArr_elem_1820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array818, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1820
  %_CArr_elem_0819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array818, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0819
  %_CArr_elem_0825 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array816, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array818, { i64, [0 x i64] }** %_CArr_elem_0825
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array816, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_id827 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %arr
  %_index_ptr828 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id827, i32 0, i32 1, i32 0
  %_idx_tmp829 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr828
  %_index_ptr830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp829, i32 0, i32 1, i32 0
  %_idx_tmp831 = load i64, i64* %_index_ptr830
  ret i64 %_idx_tmp831
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
