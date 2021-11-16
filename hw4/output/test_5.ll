; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc88 = alloca i64
  store i64 %argc, i64* %_argc88
  %_argv89 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv89
  %_90 = icmp sge i64 %_91, %_95
  %_95 = or i64 2, 0
  %_91 = and i64 %_92, 6
  %_92 = xor i64 -1, 5
  br i1 %_90, label %then, label %else
then:
  ret i64 23
else:
  ret i64 46
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
