; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %_a6232, i64 %_b6229) {
  %_a6233 = alloca i64
  %_b6230 = alloca i64
  %_t6241 = alloca i64
  store i64 %_a6232, i64* %_a6233
  store i64 %_b6229, i64* %_b6230
  br label %_cond6239
_body6238:
  %_b6240 = load i64, i64* %_b6230
  store i64 %_b6240, i64* %_t6241
  %_b6243 = load i64, i64* %_b6230
  %_a6244 = load i64, i64* %_a6233
  %_result6245 = call i64 @mod(i64 %_a6244, i64 %_b6243)
  store i64 %_result6245, i64* %_b6230
  %_t6247 = load i64, i64* %_t6241
  store i64 %_t6247, i64* %_a6233
  br label %_cond6239
_cond6239:
  %_b6235 = load i64, i64* %_b6230
  %_bop6236 = icmp ne i64 %_b6235, 0
  br i1 %_bop6236, label %_body6238, label %_post6237
_post6237:
  %_a6249 = load i64, i64* %_a6233
  ret i64 %_a6249
}

define i64 @mod(i64 %_a6211, i64 %_b6208) {
  %_a6212 = alloca i64
  %_b6209 = alloca i64
  %_t6215 = alloca i64
  store i64 %_a6211, i64* %_a6212
  store i64 %_b6208, i64* %_b6209
  %_a6214 = load i64, i64* %_a6212
  store i64 %_a6214, i64* %_t6215
  br label %_cond6223
_body6222:
  %_t6224 = load i64, i64* %_t6215
  %_b6225 = load i64, i64* %_b6209
  %_bop6226 = sub i64 %_t6224, %_b6225
  store i64 %_bop6226, i64* %_t6215
  br label %_cond6223
_cond6223:
  %_t6217 = load i64, i64* %_t6215
  %_b6218 = load i64, i64* %_b6209
  %_bop6219 = sub i64 %_t6217, %_b6218
  %_bop6220 = icmp sge i64 %_bop6219, 0
  br i1 %_bop6220, label %_body6222, label %_post6221
_post6221:
  %_t6228 = load i64, i64* %_t6215
  ret i64 %_t6228
}

define i64 @program(i64 %_argc6198, { i64, [0 x i8*] }* %_argv6195) {
  %_a6201 = alloca i64
  %_b6203 = alloca i64
  store i64 64, i64* %_a6201
  store i64 48, i64* %_b6203
  %_b6205 = load i64, i64* %_b6203
  %_a6206 = load i64, i64* %_a6201
  %_result6207 = call i64 @gcd(i64 %_a6206, i64 %_b6205)
  ret i64 %_result6207
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
