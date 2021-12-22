; generated from: hw5programs/initarr1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc7308, { i64, [0 x i8*] }* %_argv7305) {
  %_i7315 = alloca i64
  %_x7336 = alloca { i64, [0 x i64] }*
  %_raw_array7313 = call i64* @oat_alloc_array(i64 3)
  %_array7314 = bitcast i64* %_raw_array7313 to { i64, [0 x i64] }*
  %_bnd_7312 = alloca i64
  store i64 3, i64* %_bnd_7312
  %_ptr_7311 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7314, { i64, [0 x i64] }** %_ptr_7311
  store i64 0, i64* %_i7315
  br label %_cond7322
_body7321:
  %__ptr_73117323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7311
  %_i7324 = load i64, i64* %_i7315
  %_tmp7326 = bitcast { i64, [0 x i64] }* %__ptr_73117323 to i64*
  call void @oat_assert_array_length(i64* %_tmp7326, i64 %_i7324)
  %_index_ptr7327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_73117323, i32 0, i32 1, i64 %_i7324
  %_i7328 = load i64, i64* %_i7315
  %_bop7329 = add i64 %_i7328, 1
  store i64 %_bop7329, i64* %_index_ptr7327
  %_i7331 = load i64, i64* %_i7315
  %_bop7332 = add i64 %_i7331, 1
  store i64 %_bop7332, i64* %_i7315
  br label %_cond7322
_cond7322:
  %_i7317 = load i64, i64* %_i7315
  %__bnd_73127318 = load i64, i64* %_bnd_7312
  %_bop7319 = icmp slt i64 %_i7317, %__bnd_73127318
  br i1 %_bop7319, label %_body7321, label %_post7320
_post7320:
  store { i64, [0 x i64] }* %_array7314, { i64, [0 x i64] }** %_x7336
  %_x7338 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7336
  %_tmp7340 = bitcast { i64, [0 x i64] }* %_x7338 to i64*
  call void @oat_assert_array_length(i64* %_tmp7340, i64 0)
  %_index_ptr7341 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7338, i32 0, i32 1, i32 0
  %_index7342 = load i64, i64* %_index_ptr7341
  ret i64 %_index7342
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
