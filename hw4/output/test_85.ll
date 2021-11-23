; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_r2287 = alloca i64
  %_i2286 = alloca i64
  store i64 %i, i64* %_i2286
  store i64 0, i64* %_r2287
  %_id2289 = load i64, i64* %_i2286
  %_bop2288 = icmp eq i64 %_id2289, 0
  br i1 %_bop2288, label %_then2290, label %_else2291
_then2290:
  store i64 1, i64* %_r2287
  br label %_end2292
_else2291:
  %_id2294 = load i64, i64* %_i2286
  %_id2296 = load i64, i64* %_i2286
  %_bop2295 = sub i64 %_id2296, 1
  %_Call_retval2297 = call i64 @f(i64 %_bop2295)
  %_bop2293 = mul i64 %_id2294, %_Call_retval2297
  store i64 %_bop2293, i64* %_r2287
  br label %_end2292
_end2292:
  %_id2298 = load i64, i64* %_r2287
  ret i64 %_id2298
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2283 = alloca i64
  store i64 %argc, i64* %_argc2283
  %_argv2284 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2284
  %_Call_retval2285 = call i64 @f(i64 5)
  ret i64 %_Call_retval2285
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
