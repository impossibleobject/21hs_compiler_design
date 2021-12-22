; generated from: hw5programs/initarr2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc7346, { i64, [0 x i8*] }* %_argv7343) {
  %_i7353 = alloca i64
  %_x7372 = alloca { i64, [0 x i64] }*
  %_raw_array7351 = call i64* @oat_alloc_array(i64 3)
  %_array7352 = bitcast i64* %_raw_array7351 to { i64, [0 x i64] }*
  %_bnd_7350 = alloca i64
  store i64 3, i64* %_bnd_7350
  %_ptr_7349 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7352, { i64, [0 x i64] }** %_ptr_7349
  store i64 0, i64* %_i7353
  br label %_cond7360
_body7359:
  %__ptr_73497361 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7349
  %_i7362 = load i64, i64* %_i7353
  %_tmp7364 = bitcast { i64, [0 x i64] }* %__ptr_73497361 to i64*
  call void @oat_assert_array_length(i64* %_tmp7364, i64 %_i7362)
  %_index_ptr7365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_73497361, i32 0, i32 1, i64 %_i7362
  store i64 2, i64* %_index_ptr7365
  %_i7367 = load i64, i64* %_i7353
  %_bop7368 = add i64 %_i7367, 1
  store i64 %_bop7368, i64* %_i7353
  br label %_cond7360
_cond7360:
  %_i7355 = load i64, i64* %_i7353
  %__bnd_73507356 = load i64, i64* %_bnd_7350
  %_bop7357 = icmp slt i64 %_i7355, %__bnd_73507356
  br i1 %_bop7357, label %_body7359, label %_post7358
_post7358:
  store { i64, [0 x i64] }* %_array7352, { i64, [0 x i64] }** %_x7372
  %_x7374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7372
  %_tmp7376 = bitcast { i64, [0 x i64] }* %_x7374 to i64*
  call void @oat_assert_array_length(i64* %_tmp7376, i64 0)
  %_index_ptr7377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7374, i32 0, i32 1, i32 0
  %_index7378 = load i64, i64* %_index_ptr7377
  ret i64 %_index7378
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
