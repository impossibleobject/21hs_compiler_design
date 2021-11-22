; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x314 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x314
  %_y315 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y315
  %_b316 = alloca i1
  store i1 %b, i1* %_b316
  %_id317 = load i1*, i1** %_b316
  br i1 %_id317, label %_then318, label %_else319
_then318:
  %_id321 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_x314
  ret { i64, [0 x i64] }* %_id321
_else319:
  %_id322 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_y315
  ret { i64, [0 x i64] }* %_id322
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc299 = alloca i64
  store i64 %argc, i64* %_argc299
  %_argv300 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv300
  %_x301 = alloca { i64, [0 x i64] }*
  %_y304 = alloca { i64, [0 x i64] }*
  %_raw_array302 = call i64* @oat_alloc_array(i64 3)
  %_array303 = bitcast i64* %_raw_array302 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array303, { i64, [0 x i64] }** %_x301
  %_raw_array305 = call i64* @oat_alloc_array(i64 3)
  %_array306 = bitcast i64* %_raw_array305 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array306, { i64, [0 x i64] }** %_y304
  %_id307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x301
  %_id308 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y304
  %_Call_retval309 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id307, { i64, [0 x i64] }* %_id308, i1 1)
  %_index_ptr310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval309, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr310
  %_id311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x301
  %_index_ptr312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id311, i32 0, i32 1, i32 0
  %_idx_tmp313 = load i64, i64* %_index_ptr312
  ret i64 %_idx_tmp313
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
