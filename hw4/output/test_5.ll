; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc104 = alloca i64
  store i64 %argc, i64* %_argc104
  %_argv105 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv105
  %_107 = icmp eq i1 0, 1
  %_112 = sub i64 0, 4
  %_111 = add i64 %_112, 5
  %_110 = icmp sgt i64 %_111, 0
  %_117 = mul i64 6, 4
  %_116 = icmp slt i64 %_117, 25
  %_109 = and i1 %_110, %_116
  %_106 = or i1 %_107, %_109
  br i1 %_106, label %_then121, label %_else122
_then121:
  ret i64 9
_else122:
  ret i64 4
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
