; generated from: hw5programs/length2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc7273, { i64, [0 x i8*] }* %_argv7270) {
  %_i7280 = alloca i64
  %_x7299 = alloca { i64, [0 x i64] }*
  %_raw_array7278 = call i64* @oat_alloc_array(i64 3)
  %_array7279 = bitcast i64* %_raw_array7278 to { i64, [0 x i64] }*
  %_bnd_7277 = alloca i64
  store i64 3, i64* %_bnd_7277
  %_ptr_7276 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7279, { i64, [0 x i64] }** %_ptr_7276
  store i64 0, i64* %_i7280
  br label %_cond7287
_body7286:
  %__ptr_72767288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7276
  %_i7289 = load i64, i64* %_i7280
  %_tmp7291 = bitcast { i64, [0 x i64] }* %__ptr_72767288 to i64*
  call void @oat_assert_array_length(i64* %_tmp7291, i64 %_i7289)
  %_index_ptr7292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_72767288, i32 0, i32 1, i64 %_i7289
  store i64 0, i64* %_index_ptr7292
  %_i7294 = load i64, i64* %_i7280
  %_bop7295 = add i64 %_i7294, 1
  store i64 %_bop7295, i64* %_i7280
  br label %_cond7287
_cond7287:
  %_i7282 = load i64, i64* %_i7280
  %__bnd_72777283 = load i64, i64* %_bnd_7277
  %_bop7284 = icmp slt i64 %_i7282, %__bnd_72777283
  br i1 %_bop7284, label %_body7286, label %_post7285
_post7285:
  store { i64, [0 x i64] }* %_array7279, { i64, [0 x i64] }** %_x7299
  %_x7301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7299
  %_index_ptr7303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7301, i32 0, i32 0
  %_len7304 = load i64, i64* %_index_ptr7303
  ret i64 %_len7304
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
