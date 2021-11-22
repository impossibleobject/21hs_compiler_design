; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i2296 = alloca i64
  store i64 %i, i64* %_i2296
  %_r2297 = alloca i64
  store i64 0, i64* %_r2297
  %_id2299 = load i64*, i64** %_i2296
  %_bop2298 = icmp eq i64 %_id2299, 0
  br i1 %_bop2298, label %_then2300, label %_else2301
_then2300:
  store i64 1, i64* %_r2297
  br label %_end2302
_else2301:
  %_id2304 = load i64*, i64** %_i2296
  %_bop2305 = sub i64 %_id2306, 1
  %_id2306 = load i64*, i64** %_i2296
  %_Call_retval2307 = call i64 @f(i64 %_bop2305)
  %_bop2303 = mul i64 %_id2304, %_Call_retval2307
  store i64 %_bop2303, i64* %_r2297
  br label %_end2302
_end2302:
  %_id2308 = load i64, i64* %_r2297
  ret i64 %_id2308
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2293 = alloca i64
  store i64 %argc, i64* %_argc2293
  %_argv2294 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2294
  %_Call_retval2295 = call i64 @f(i64 5)
  ret i64 %_Call_retval2295
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
