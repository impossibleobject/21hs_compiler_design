; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a533 = alloca { i64, [0 x i64] }*
  %_argc531 = alloca i64
  store i64 %argc, i64* %_argc531
  %_argv532 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv532
  %_raw_array534 = call i64* @oat_alloc_array(i64 2)
  %_array535 = bitcast i64* %_raw_array534 to { i64, [0 x i64] }*
  %_CArr_elem_1537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array535, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_1537
  %_CArr_elem_0536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array535, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_0536
  store { i64, [0 x i64] }* %_array535, { i64, [0 x i64] }** %_a533
  %_id538 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a533
  %_index_ptr539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id538, i32 0, i32 1, i32 1
  %_idx_tmp540 = load i64, i64* %_index_ptr539
  ret i64 %_idx_tmp540
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
