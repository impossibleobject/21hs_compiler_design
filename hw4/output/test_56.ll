; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_7366 = global i1 1
@_7367 = global i1 0
@_7368 = global i1 1
@_7369 = global i1 0
@_str_tmp7339 = global [2 x i8] c"T\00"
@_str_tmp7343 = global [2 x i8] c"F\00"
@_str_tmp7291 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x7345 = alloca i1
  store i1 %x, i1* %_x7345
  %_y7346 = alloca i1
  store i1 %y, i1* %_y7346
  %_id7352 = load i1, i1* %_x7345
  %_uop7354 = icmp eq i1 0, %_id7356
  %_id7356 = load i1, i1* %_y7346
  %_bop7350 = and i1 %_id7352, %_uop7354
  %_uop7360 = icmp eq i1 0, %_id7362
  %_id7362 = load i1, i1* %_x7345
  %_id7364 = load i1, i1* %_y7346
  %_bop7358 = and i1 %_uop7360, %_id7364
  %_bop7348 = or i1 %_bop7350, %_bop7358
  ret i1 %_bop7348
}

define i8* @string_of_bool(i1 %b) {
  %_b7331 = alloca i1
  store i1 %b, i1* %_b7331
  %_id7333 = load i1, i1* %_b7331
  br i1 %_id7333, label %_then7334, label %_else7335
_then7334:
  %_cstr7338 = getelementptr [2 x i8], [2 x i8]* @_str_tmp7339, i32 0, i32 0
  %_7340 = load i8, i8* %_cstr7338
  ret i8* %_7340
_else7335:
  %_cstr7342 = getelementptr [2 x i8], [2 x i8]* @_str_tmp7343, i32 0, i32 0
  %_7344 = load i8, i8* %_cstr7342
  ret i8* %_7344
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register7301 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register7301
  %_len7302 = alloca i64
  store i64 %len, i64* %_len7302
  %_i7303 = alloca i64
  store i64 0, i64* %_i7303
  br label %_start7311
_start7311:
  %_id7308 = load i64, i64* %_i7303
  %_id7310 = load i64, i64* %_len7302
  %_bop7306 = icmp slt i64 %_id7308, %_id7310
  br i1 %_bop7306, label %_body7312, label %_end7313
_body7312:
  %_Call_retval7322 = call i8* @string_of_bool(i1* %_index_ptr7321)
  %_id7318 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7301
  %_id7320 = load i64, i64* %_i7303
  %_index_ptr7321 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id7318, i32 0, i32 1, i64 %_id7320
  call void @print_string(i8* %_Call_retval7322)
  %_id7329 = load i64, i64* %_i7303
  %_bop7327 = add i64 %_id7329, 1
  store i64 %_bop7327, i64* %_i7303
  br label %_start7311
_end7313:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7162 = alloca i64
  store i64 %argc, i64* %_argc7162
  %_argv7163 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7163
  %_lfsr_register7164 = alloca { i64, [0 x i1] }*
  %_i7170 = alloca i64
  %_i7200 = alloca i64
  %_new_first7211 = alloca i1
  %_j7232 = alloca i64
  store { i64, [0 x i1] }* %_array7169, { i64, [0 x i1] }** %_lfsr_register7164
  %_raw_array7168 = call i64* @oat_alloc_array(i64 4)
  %_array7169 = bitcast i64* %_raw_array7168 to { i64, [0 x i1] }*
  store i64 0, i64* %_i7170
  br label %_start7178
_start7178:
  %_id7175 = load i64, i64* %_i7170
  %_bop7173 = icmp slt i64 %_id7175, 4
  br i1 %_bop7173, label %_body7179, label %_end7180
_body7179:
  %_id7183 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7164
  %_id7185 = load i64, i64* %_i7170
  %_index_ptr7186 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id7183, i32 0, i32 1, i64 %_id7185
  %_id7189 = load { i64, [4 x i1] }, { i64, [4 x i1] }* @lfsr_init_values
  %_id7191 = load i64, i64* %_i7170
  %_index_ptr7192 = getelementptr { i64, [4 x i1] }*, { i64, [4 x i1] }** %_id7189, i32 0, i32 1, i64 %_id7191
  store i1* %_index_ptr7192, i1** %_index_ptr7186
  %_id7198 = load i64, i64* %_i7170
  %_bop7196 = add i64 %_id7198, 1
  store i64 %_bop7196, i64* %_i7170
  br label %_start7178
_end7180:
  store i64 0, i64* %_i7200
  br label %_start7208
_start7208:
  %_id7205 = load i64, i64* %_i7200
  %_bop7203 = icmp slt i64 %_id7205, 5
  br i1 %_bop7203, label %_body7209, label %_end7210
_body7209:
  store i1 %_Call_retval7231, i1* %_new_first7211
  %_index_ptr7221 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id7215, i32 0, i32 1, i64 %_bop7217
  %_bop7217 = sub i64 4, 1
  %_id7215 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7164
  %_index_ptr7230 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id7224, i32 0, i32 1, i64 %_bop7226
  %_bop7226 = sub i64 4, 2
  %_id7224 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7164
  %_Call_retval7231 = call i1 @xor(i1* %_index_ptr7221, i1* %_index_ptr7230)
  store i64 %_bop7234, i64* %_j7232
  %_bop7234 = sub i64 4, 1
  br label %_start7243
_start7243:
  %_id7241 = load i64, i64* %_j7232
  %_bop7239 = icmp sgt i64 %_id7241, 0
  br i1 %_bop7239, label %_body7244, label %_end7245
_body7244:
  %_id7248 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7164
  %_id7250 = load i64, i64* %_j7232
  %_index_ptr7251 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id7248, i32 0, i32 1, i64 %_id7250
  %_id7254 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7164
  %_id7258 = load i64, i64* %_j7232
  %_bop7256 = sub i64 %_id7258, 1
  %_index_ptr7260 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id7254, i32 0, i32 1, i64 %_bop7256
  store i1* %_index_ptr7260, i1** %_index_ptr7251
  %_id7266 = load i64, i64* %_j7232
  %_bop7264 = sub i64 %_id7266, 1
  store i64 %_bop7264, i64* %_j7232
  br label %_start7243
_end7245:
  %_id7270 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7164
  %_index_ptr7272 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id7270, i32 0, i32 1, i32 0
  %_id7274 = load i1, i1* %_new_first7211
  store i1 %_id7274, i1* %_index_ptr7272
  %_id7280 = load i64, i64* %_i7200
  %_bop7278 = add i64 %_id7280, 1
  store i64 %_bop7278, i64* %_i7200
  br label %_start7208
_end7210:
  %_id7284 = load { i64, [4 x i1] }, { i64, [4 x i1] }* @lfsr_init_values
  call void @print_lfsr({ i64, [4 x i1] }** %_id7284, i64 4)
  %_cstr7290 = getelementptr [2 x i8], [2 x i8]* @_str_tmp7291, i32 0, i32 0
  call void @print_string(i8* %_cstr7290)
  %_id7295 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register7164
  call void @print_lfsr({ i64, [0 x i1] }* %_id7295, i64 4)
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
