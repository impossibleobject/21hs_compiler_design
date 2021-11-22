; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_r2284 = alloca i64
  %_i2283 = alloca i64
  store i64 %i, i64* %_i2283
  store i64 0, i64* %_r2284
  %_id2286 = load i64, i64* %_i2283
  %_bop2285 = icmp eq i64 %_id2286, 0
  br i1 %_bop2285, label %_then2287, label %_else2288
_then2287:
  store i64 1, i64* %_r2284
  br label %_end2289
_else2288:
  %_id2291 = load i64, i64* %_i2283
  %_bop2292 = sub i64 %_id2293, 1
  %_id2293 = load i64, i64* %_i2283
  %_Call_retval2294 = call i64 @f(i64 %_bop2292)
  %_bop2290 = mul i64 %_id2291, %_Call_retval2294
  store i64 %_bop2290, i64* %_r2284
  br label %_end2289
_end2289:
  %_id2295 = load i64, i64* %_r2284
  ret i64 %_id2295
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2280 = alloca i64
  store i64 %argc, i64* %_argc2280
  %_argv2281 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2281
  %_Call_retval2282 = call i64 @f(i64 5)
  ret i64 %_Call_retval2282
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
