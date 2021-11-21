; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str_tmp6115 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x6199 = alloca i64
  store i64 %x, i64* %_x6199
  %_y6200 = alloca i64
  store i64 %y, i64* %_y6200
  %_uop6204 = xor i64 -1, %_bop6206
  %_id6208 = load i64, i64* %_x6199
  %_id6210 = load i64, i64* %_y6200
  %_bop6206 = and i64 %_id6208, %_id6210
  %_id6214 = load i64, i64* %_x6199
  %_id6216 = load i64, i64* %_y6200
  %_bop6212 = or i64 %_id6214, %_id6216
  %_bop6202 = and i64 %_uop6204, %_bop6212
  ret i64 %_bop6202
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s6125 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s6125
  %_x6126 = alloca i64*
  %_y6132 = alloca i64*
  store i64* %_index_ptr6131, i64** %_x6126
  %_id6129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s6125
  %_index_ptr6131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id6129, i32 0, i32 1, i32 0
  store i64* %_index_ptr6137, i64** %_y6132
  %_id6135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s6125
  %_index_ptr6137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id6135, i32 0, i32 1, i32 1
  %_id6140 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s6125
  %_index_ptr6142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id6140, i32 0, i32 1, i32 0
  %_id6144 = load i64*, i64** %_y6132
  store i64* %_id6144, i64** %_index_ptr6142
  %_id6149 = load i64*, i64** %_x6126
  %_bop6151 = shl i64 %_6155, 23
  %_6155 = load i64, i64* %_id6153
  %_id6153 = load i64*, i64** %_x6126
  %_Call_retval6156 = call i64 @xor(i64* %_id6149, i64 %_bop6151)
  store i64* %_Call_retval6156, i64** %_x6126
  %_bop6163 = lshr i64 %_Call_retval6156, 17
  %_Call_retval6167 = call i64 @xor(i64 %_Call_retval6156, i64 %_bop6163)
  store i64 %_Call_retval6167, i64* @x
  %_Call_retval6182 = call i64 @xor(i64* %_id6175, i64 %_bop6177)
  %_id6179 = load i64*, i64** %_y6132
  %_6181 = load i64, i64* %_id6179
  %_bop6177 = lshr i64 %_6181, 26
  %_id6175 = load i64*, i64** %_y6132
  %_Call_retval6183 = call i64 @xor(i64 %_Call_retval6167, i64 %_Call_retval6182)
  store i64 %_Call_retval6183, i64* @x
  %_id6186 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s6125
  %_index_ptr6188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id6186, i32 0, i32 1, i32 1
  store i64 %_Call_retval6183, i64* %_index_ptr6188
  %_id6196 = load i64*, i64** %_y6132
  %_6197 = load i64, i64* %_id6196
  %_bop6192 = add i64 %_Call_retval6183, %_6197
  ret i64 %_bop6192
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6068 = alloca i64
  store i64 %argc, i64* %_argc6068
  %_argv6069 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6069
  %_seed6070 = alloca { i64, [0 x i64] }*
  %_i6075 = alloca i64
  store { i64, [0 x i64] }* %_array6074, { i64, [0 x i64] }** %_seed6070
  %_raw_array6073 = call i64* @oat_alloc_array(i64 2)
  %_array6074 = bitcast i64* %_raw_array6073 to { i64, [0 x i64] }*
  store i64 0, i64* %_i6075
  br label %_start6082
_start6082:
  %_id6080 = load i64, i64* %_i6075
  %_bop6078 = icmp slt i64 %_id6080, 2
  br i1 %_bop6078, label %_body6083, label %_end6084
_body6083:
  %_id6087 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed6070
  %_id6089 = load i64, i64* %_i6075
  %_index_ptr6090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id6087, i32 0, i32 1, i64 %_id6089
  %_id6097 = load i64, i64* %_i6075
  %_bop6095 = add i64 %_id6097, 1
  %_bop6092 = mul i64 100, %_bop6095
  store i64 %_bop6092, i64* %_index_ptr6090
  %_id6104 = load i64, i64* %_i6075
  %_bop6102 = add i64 %_id6104, 1
  store i64 %_bop6102, i64* %_i6075
  br label %_start6082
_end6084:
  %_Call_retval6110 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id6109)
  %_id6109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed6070
  call void @print_int(i64 %_Call_retval6110)
  %_cstr6114 = getelementptr [2 x i8], [2 x i8]* @_str_tmp6115, i32 0, i32 0
  call void @print_string(i8* %_cstr6114)
  %_Call_retval6121 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_id6120)
  %_id6120 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed6070
  call void @print_int(i64 %_Call_retval6121)
  ret i64 0
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
