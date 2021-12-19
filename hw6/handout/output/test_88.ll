; generated from: hw5programs/ifq1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc7229, { i64, [0 x i8*] }* %_argv7226) {
  %_x7232 = alloca { i64, [0 x i64] }*
  %_i7238 = alloca i64
  %_z7258 = alloca i64
  store { i64, [0 x i64] }* null, { i64, [0 x i64] }** %_x7232
  %_raw_array7236 = call i64* @oat_alloc_array(i64 3)
  %_array7237 = bitcast i64* %_raw_array7236 to { i64, [0 x i64] }*
  %_bnd_7235 = alloca i64
  store i64 3, i64* %_bnd_7235
  %_ptr_7234 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7237, { i64, [0 x i64] }** %_ptr_7234
  store i64 0, i64* %_i7238
  br label %_cond7245
_body7244:
  %__ptr_72347246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_7234
  %_i7247 = load i64, i64* %_i7238
  %_tmp7249 = bitcast { i64, [0 x i64] }* %__ptr_72347246 to i64*
  call void @oat_assert_array_length(i64* %_tmp7249, i64 %_i7247)
  %_index_ptr7250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_72347246, i32 0, i32 1, i64 %_i7247
  store i64 0, i64* %_index_ptr7250
  %_i7252 = load i64, i64* %_i7238
  %_bop7253 = add i64 %_i7252, 1
  store i64 %_bop7253, i64* %_i7238
  br label %_cond7245
_cond7245:
  %_i7240 = load i64, i64* %_i7238
  %__bnd_72357241 = load i64, i64* %_bnd_7235
  %_bop7242 = icmp slt i64 %_i7240, %__bnd_72357241
  br i1 %_bop7242, label %_body7244, label %_post7243
_merge7265:
  %_z7269 = load i64, i64* %_z7258
  ret i64 %_z7269
_notnull7266:
  store i64 4, i64* %_z7258
  br label %_merge7265
_null7267:
  store i64 5, i64* %_z7258
  br label %_merge7265
_post7243:
  store { i64, [0 x i64] }* %_array7237, { i64, [0 x i64] }** %_x7232
  store i64 0, i64* %_z7258
  %_x7260 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7232
  %_cast7264 = icmp eq { i64, [0 x i64] }* %_x7260, null
  br i1 %_cast7264, label %_null7267, label %_notnull7266
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
