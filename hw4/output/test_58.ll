; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a4309 = alloca i64
  store i64 %a, i64* %_a4309
  %_b4310 = alloca i64
  store i64 %b, i64* %_b4310
  %_t4316 = alloca i64
  br label %_start4313
_start4313:
  %_id4312 = load i64, i64* %_b4310
  %_bop4311 = icmp ne i64 %_id4312, 0
  br i1 %_bop4311, label %_body4314, label %_end4315
_body4314:
  store i64 %_id4317, i64* %_t4316
  %_id4317 = load i64, i64* %_b4310
  %_id4319 = load i64, i64* %_a4309
  %_id4320 = load i64, i64* %_b4310
  %_Call_retval4321 = call i64 @mod(i64 %_id4319, i64 %_id4320)
  store i64 %_Call_retval4321, i64* %_b4310
  %_id4323 = load i64, i64* %_t4316
  store i64 %_id4323, i64* %_a4309
  br label %_start4313
_end4315:
  %_id4324 = load i64, i64* %_a4309
  ret i64 %_id4324
}

define i64 @mod(i64 %a, i64 %b) {
  %_a4292 = alloca i64
  store i64 %a, i64* %_a4292
  %_b4293 = alloca i64
  store i64 %b, i64* %_b4293
  %_t4294 = alloca i64
  store i64 %_id4295, i64* %_t4294
  %_id4295 = load i64, i64* %_a4292
  br label %_start4300
_start4300:
  %_id4298 = load i64, i64* %_t4294
  %_id4299 = load i64, i64* %_b4293
  %_bop4297 = sub i64 %_id4298, %_id4299
  %_bop4296 = icmp sge i64 %_bop4297, 0
  br i1 %_bop4296, label %_body4301, label %_end4302
_body4301:
  %_id4305 = load i64, i64* %_t4294
  %_id4306 = load i64, i64* %_b4293
  %_bop4304 = sub i64 %_id4305, %_id4306
  store i64 %_bop4304, i64* %_t4294
  br label %_start4300
_end4302:
  %_id4307 = load i64, i64* %_t4294
  ret i64 %_id4307
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4284 = alloca i64
  store i64 %argc, i64* %_argc4284
  %_argv4285 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4285
  %_a4286 = alloca i64
  %_b4287 = alloca i64
  store i64 64, i64* %_a4286
  store i64 48, i64* %_b4287
  %_id4288 = load i64, i64* %_a4286
  %_id4289 = load i64, i64* %_b4287
  %_Call_retval4290 = call i64 @gcd(i64 %_id4288, i64 %_id4289)
  ret i64 %_Call_retval4290
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
