; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x i64] }*
  %_argc490 = alloca i64
  store i64 %argc, i64* %_argc490
  %_argv491 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv491
  %_raw_array492 = call i64* @oat_alloc_array(i64 2)
  %_array493 = bitcast i64* %_raw_array492 to { i64, [0 x i64] }*
  %_CArr_elem_1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array493, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_1495
  %_CArr_elem_0494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array493, i32 0, i32 1, i32 0
  store i64 0, i64* %_CArr_elem_0494
  store { i64, [0 x i64] }* %_array493, { i64, [0 x i64] }** %a
  %_id496 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %a
  %_index_ptr497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id496, i32 0, i32 1, i32 1
  %_idx_tmp498 = load i64, i64* %_index_ptr497
  ret i64 %_idx_tmp498
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
