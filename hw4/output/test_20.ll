; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_343 = load i64 (), i64 ()* @f2
  % = call i64 () %_343()
  ret i64 %_343
}

define i64 @f2() {
  %_340 = load i64 (), i64 ()* @f3
  % = call i64 () %_340()
  ret i64 %_340
}

define i64 @f3() {
  %_337 = load i64 (), i64 ()* @f4
  % = call i64 () %_337()
  ret i64 %_337
}

define i64 @f4() {
  %_334 = load i64 (), i64 ()* @f5
  % = call i64 () %_334()
  ret i64 %_334
}

define i64 @f5() {
  %_331 = load i64 (), i64 ()* @f6
  % = call i64 () %_331()
  ret i64 %_331
}

define i64 @f6() {
  %_328 = load i64 (), i64 ()* @f7
  % = call i64 () %_328()
  ret i64 %_328
}

define i64 @f7() {
  %_325 = load i64 (), i64 ()* @f8
  % = call i64 () %_325()
  ret i64 %_325
}

define i64 @f8() {
  %_322 = load i64 (), i64 ()* @f9
  % = call i64 () %_322()
  ret i64 %_322
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc314 = alloca i64
  store i64 %argc, i64* %_argc314
  %_argv315 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv315
  %_318 = load i64 (), i64 ()* @f1
  % = call i64 () %_318()
  ret i64 %_318
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
