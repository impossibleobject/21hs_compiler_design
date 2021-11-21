; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i2054 = alloca i64
  store i64 %i, i64* %_i2054
  %_r2055 = alloca i64
  store i64 0, i64* %_r2055
  %_id2057 = load i64, i64* %_i2054
  %_bop2056 = icmp eq i64 %_id2057, 0
  br i1 %_bop2056, label %_then2058, label %_else2059
_then2058:
  store i64 1, i64* %_r2055
  br label %_end2060
_else2059:
  %_id2064 = load i64, i64* %_i2054
  %_bop2065 = sub i64 %_id2066, 1
  %_id2066 = load i64, i64* %_i2054
  %_Call_retval2067 = call i64 @f(i64 %_bop2065)
  %_bop2063 = mul i64 %_id2064, %_Call_retval2067
  store i64 %_bop2063, i64* %_r2055
  br label %_end2060
_end2060:
  %_id2068 = load i64, i64* %_r2055
  ret i64 %_id2068
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2050 = alloca i64
  store i64 %argc, i64* %_argc2050
  %_argv2051 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2051
  %_Call_retval2052 = call i64 @f(i64 5)
  ret i64 %_Call_retval2052
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
