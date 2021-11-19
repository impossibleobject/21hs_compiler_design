; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i4065 = alloca i64
  store i64 %i, i64* %_i4065
  %_r4066 = alloca i64
  store i64 0, i64* %_r4066
  %_4070 = load i64, i64* %_i4065
  %_4068 = icmp eq i64 %_4070, 0
  br i1 %_4068, label %_then4072, label %_else4073
_then4072:
  store i64 1, i64* %_r4066
  br label %_end4074
_else4073:
  %_4082 = load i64, i64* %_i4065
  %_4084 = sub i64 %_4086, 1
  %_4086 = load i64, i64* %_i4065
  %_retval4088 = call i64 @f(i64 %_4084)
  %_4080 = mul i64 %_4082, %_retval4088
  store i64 %_4080, i64* %_r4066
  br label %_end4074
_end4074:
  %_4090 = load i64, i64* %_r4066
  ret i64 %_4090
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4059 = alloca i64
  store i64 %argc, i64* %_argc4059
  %_argv4060 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4060
  %_retval4063 = call i64 @f(i64 5)
  ret i64 %_retval4063
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
