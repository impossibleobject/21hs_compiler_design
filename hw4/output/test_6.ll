; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc128 = alloca i64
  store i64 %argc, i64* %_argc128
  %_argv129 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv129
  %_132 = xor i64 -1, 5
  %_131 = and i64 %_132, 6
  %_135 = or i64 2, 0
  %_130 = icmp sge i64 %_131, %_135
  br i1 %_130, label %_then138, label %_else139
_then138:
  ret i64 23
_else139:
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
