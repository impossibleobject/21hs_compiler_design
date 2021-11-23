; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc833 = alloca i64
  store i64 %argc, i64* %_argc833
  %_argv834 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv834
  %_raw_array835 = call i64* @oat_alloc_array(i64 2)
  %_array836 = bitcast i64* %_raw_array835 to { i64, [0 x i64] }*
  %_CArr_elem_1838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array836, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1838
  %_CArr_elem_0837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array836, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0837
  store { i64, [0 x i64] }* %_array836, { i64, [0 x i64] }** @arr
  %_id839 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr840 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id839, i32 0, i32 1, i32 1
  %_idx_tmp841 = load i64, i64* %_index_ptr840
  ret i64 %_idx_tmp841
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
