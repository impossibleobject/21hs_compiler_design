; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i4080 = alloca i64
  store i64 %i, i64* %_i4080
  %_r4081 = alloca i64
  store i64 0, i64* %_r4081
  %_4085 = load i64, i64* %_i4080
  %_4083 = icmp eq i64 %_4085, 0
  br i1 %_4083, label %_then4087, label %_else4088
_then4087:
  store i64 1, i64* %_r4081
  br label %_end4089
_else4088:
  %_4097 = load i64, i64* %_i4080
  %_4099 = sub i64 %_4101, 1
  %_4101 = load i64, i64* %_i4080
  %_retval4103 = call i64 @f(i64 %_4099)
  %_4095 = mul i64 %_4097, %_retval4103
  store i64 %_4095, i64* %_r4081
  br label %_end4089
_end4089:
  %_4105 = load i64, i64* %_r4081
  ret i64 %_4105
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4074 = alloca i64
  store i64 %argc, i64* %_argc4074
  %_argv4075 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4075
  %_retval4078 = call i64 @f(i64 5)
  ret i64 %_retval4078
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
