; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_argc499 = alloca i64
  store i64 %argc, i64* %_argc499
  %_argv500 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv500
  %_raw_array501 = call i64* @oat_alloc_array(i64 2)
  %_array502 = bitcast i64* %_raw_array501 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array507 = call i64* @oat_alloc_array(i64 2)
  %_array508 = bitcast i64* %_raw_array507 to { i64, [0 x i64] }*
  %_CArr_elem_1510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array508, i32 0, i32 1, i32 1
  store i64 4, i64* %_CArr_elem_1510
  %_CArr_elem_0509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array508, i32 0, i32 1, i32 0
  store i64 3, i64* %_CArr_elem_0509
  %_CArr_elem_1512 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array502, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array508, { i64, [0 x i64] }** %_CArr_elem_1512
  %_raw_array503 = call i64* @oat_alloc_array(i64 2)
  %_array504 = bitcast i64* %_raw_array503 to { i64, [0 x i64] }*
  %_CArr_elem_1506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array504, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_1506
  %_CArr_elem_0505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array504, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_0505
  %_CArr_elem_0511 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array502, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array504, { i64, [0 x i64] }** %_CArr_elem_0511
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array502, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_id513 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %a
  %_index_ptr514 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id513, i32 0, i32 1, i32 0
  %_idx_tmp515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr514
  %_index_ptr516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_idx_tmp515, i32 0, i32 1, i32 1
  %_idx_tmp517 = load i64, i64* %_index_ptr516
  ret i64 %_idx_tmp517
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
