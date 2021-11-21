; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i4078 = alloca i64
  store i64 %i, i64* %_i4078
  %_r4079 = alloca i64
  store i64 0, i64* %_r4079
  %_id4084 = load i64, i64* %_i4078
  %_bop4082 = icmp eq i64 %_id4084, 0
  br i1 %_bop4082, label %_then4086, label %_else4087
_then4086:
  store i64 1, i64* %_r4079
  br label %_end4088
_else4087:
  %_id4097 = load i64, i64* %_i4078
  %_bop4100 = sub i64 %_id4102, 1
  %_id4102 = load i64, i64* %_i4078
  %_Call_retval4104 = call i64 @f(i64 %_bop4100)
  %_bop4095 = mul i64 %_id4097, %_Call_retval4104
  store i64 %_bop4095, i64* %_r4079
  br label %_end4088
_end4088:
  %_id4106 = load i64, i64* %_r4079
  ret i64 %_id4106
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4072 = alloca i64
  store i64 %argc, i64* %_argc4072
  %_argv4073 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4073
  %_Call_retval4076 = call i64 @f(i64 5)
  ret i64 %_Call_retval4076
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
