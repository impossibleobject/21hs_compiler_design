; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca { i64, [0 x i64] }*
  %ans = alloca i64
  %i = alloca i64
  %_argc87 = alloca i64
  store i64 %argc, i64* %_argc87
  %_argv88 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv88
  %_raw_array89 = call i64* @oat_alloc_array(i64 4)
  %_array90 = bitcast i64* %_raw_array89 to { i64, [0 x i64] }*
  %_CArr_elem_394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array90, i32 0, i32 1, i32 3
  store i64 4, i64* %_CArr_elem_394
  %_CArr_elem_293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array90, i32 0, i32 1, i32 2
  store i64 3, i64* %_CArr_elem_293
  %_CArr_elem_192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array90, i32 0, i32 1, i32 1
  store i64 2, i64* %_CArr_elem_192
  %_CArr_elem_091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array90, i32 0, i32 1, i32 0
  store i64 1, i64* %_CArr_elem_091
  store { i64, [0 x i64] }* %_array90, { i64, [0 x i64] }** %x
  store i64 0, i64* %ans
  store i64 0, i64* %i
  br label %_start97
_start97:
  %_id96 = load i64, i64* %i
  %_bop95 = icmp slt i64 %_id96, 4
  br i1 %_bop95, label %_body98, label %_end99
_body98:
  %_id101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_id102 = load i64, i64* %i
  %_index_ptr103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id101, i32 0, i32 1, i64 %_id102
  %_idx_tmp109 = load i64, i64* %_index_ptr103
  %_id105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_id106 = load i64, i64* %i
  %_index_ptr107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id105, i32 0, i32 1, i64 %_id106
  %_idx_tmp108 = load i64, i64* %_index_ptr107
  %_uop104 = xor i64 %_idx_tmp108, -1
  %_bop100 = mul i64 %_idx_tmp109, %_uop104
  store i64 %_bop100, i64* %ans
  %_id111 = load i64, i64* %i
  %_bop110 = add i64 %_id111, 1
  store i64 %_bop110, i64* %i
  br label %_start97
_end99:
  %_id112 = load i64, i64* %ans
  ret i64 %_id112
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
