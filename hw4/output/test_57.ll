; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_4280 = global i64 1
@_4281 = global i64 2
@_4282 = global i64 3
@_4283 = global i64 4
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@_4276 = global i64 1
@_4277 = global i64 2
@_4278 = global i64 3
@_4279 = global i64 5

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar14247 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar14247
  %_ar24248 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar24248
  %_len4249 = alloca i64
  store i64 %len, i64* %_len4249
  %_val4250 = alloca i64
  %_i4251 = alloca i64
  store i64 0, i64* %_val4250
  store i64 0, i64* %_i4251
  br label %_start4255
_start4255:
  %_id4253 = load i64, i64* %_i4251
  %_id4254 = load i64, i64* %_len4249
  %_bop4252 = icmp slt i64 %_id4253, %_id4254
  br i1 %_bop4252, label %_body4256, label %_end4257
_body4256:
  %_id4259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14247
  %_id4260 = load i64, i64* %_i4251
  %_index_ptr4261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4259, i32 0, i32 1, i64 %_id4260
  %_4265 = load i64, i64* %_index_ptr4261
  %_id4262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24248
  %_id4263 = load i64, i64* %_i4251
  %_index_ptr4264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id4262, i32 0, i32 1, i64 %_id4263
  %_4266 = load i64, i64* %_index_ptr4264
  %_bop4258 = icmp ne i64 %_4265, %_4266
  br i1 %_bop4258, label %_then4267, label %_else4268
_then4267:
  store i64 1, i64* %_val4250
  br label %_end4269
_else4268:
  br label %_end4269
_end4269:
  %_id4273 = load i64, i64* %_i4251
  %_bop4272 = add i64 %_id4273, 1
  store i64 %_bop4272, i64* %_i4251
  br label %_start4255
_end4257:
  %_id4274 = load i64, i64* %_val4250
  ret i64 %_id4274
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4234 = alloca i64
  store i64 %argc, i64* %_argc4234
  %_argv4235 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4235
  %_val4236 = alloca i64
  store i64 1, i64* %_val4236
  %_id4238 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr1
  %_id4239 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr2
  %_Call_retval4240 = call i64 @arrcheck({ i64, [4 x i64] }** %_id4238, { i64, [4 x i64] }** %_id4239, i64 4)
  %_bop4237 = icmp eq i64 %_Call_retval4240, 1
  br i1 %_bop4237, label %_then4241, label %_else4242
_then4241:
  store i64 0, i64* %_val4236
  br label %_end4243
_else4242:
  br label %_end4243
_end4243:
  %_id4245 = load i64, i64* %_val4236
  ret i64 %_id4245
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
