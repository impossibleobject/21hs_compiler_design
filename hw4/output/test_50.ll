; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i2341 = alloca i64
  store i64 %i, i64* %_i2341
  %_r2342 = alloca i64
  store i64 0, i64* %_r2342
  %_id2344 = load i64, i64* %_i2341
  %_bop2343 = icmp eq i64 %_id2344, 0
  br i1 %_bop2343, label %_then2345, label %_else2346
_then2345:
  store i64 1, i64* %_r2342
  br label %_end2347
_else2346:
  %_id2351 = load i64, i64* %_i2341
  %_bop2352 = sub i64 %_id2353, 1
  %_id2353 = load i64, i64* %_i2341
  %_Call_retval2354 = call i64 @f(i64 %_bop2352)
  %_bop2350 = mul i64 %_id2351, %_Call_retval2354
  store i64 %_bop2350, i64* %_r2342
  br label %_end2347
_end2347:
  %_id2355 = load i64, i64* %_r2342
  ret i64 %_id2355
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2337 = alloca i64
  store i64 %argc, i64* %_argc2337
  %_argv2338 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2338
  %_Call_retval2339 = call i64 @f(i64 5)
  ret i64 %_Call_retval2339
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
