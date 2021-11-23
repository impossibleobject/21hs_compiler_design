; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x95 = alloca { i64, [0 x i64] }*
  %_ans102 = alloca i64
  %_i103 = alloca i64
  %_argc93 = alloca i64
  store i64 %argc, i64* %_argc93
  %_argv94 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv94
  %_raw_array96 = call i64* @oat_alloc_array(i64 4)
  %_array97 = bitcast i64* %_raw_array96 to { i64, [0 x i64] }*
  %_CArr_elem_3101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array97, i32 0, i32 1, i32 3
  store i64 4, i64* %_CArr_elem_3101
  %_CArr_elem_2100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array97, i32 0, i32 1, i32 2
  store i64 3, i64* %_CArr_elem_2100
  %_CArr_elem_199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array97, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_199
  %_CArr_elem_098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array97, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_098
  store { i64, [0 x i64] }* %_array97, { i64, [0 x i64] }** %_x95
  store i64 0, i64* %_ans102
  store i64 0, i64* %_i103
  br label %_start106
_start106:
  %_id105 = load i64, i64* %_i103
  %_bop104 = icmp slt i64 %_id105, 4
  br i1 %_bop104, label %_body107, label %_end108
_body107:
  %_id110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x95
  %_id111 = load i64, i64* %_i103
  %_index_ptr112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id110, i32 0, i32 1, i64 %_id111
  %_idx_tmp118 = load i64, i64* %_index_ptr112
  %_id114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x95
  %_id115 = load i64, i64* %_i103
  %_index_ptr116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id114, i32 0, i32 1, i64 %_id115
  %_idx_tmp117 = load i64, i64* %_index_ptr116
  %_uop113 = xor i64 %_idx_tmp117, -1
  %_bop109 = mul i64 %_idx_tmp118, %_uop113
  store i64 %_bop109, i64* %_ans102
  %_id120 = load i64, i64* %_i103
  %_bop119 = add i64 %_id120, 1
  store i64 %_bop119, i64* %_i103
  br label %_start106
_end108:
  %_id121 = load i64, i64* %_ans102
  ret i64 %_id121
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
