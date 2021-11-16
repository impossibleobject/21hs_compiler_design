; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc75 = alloca i64
  store i64 %argc, i64* %_argc75
  %_argv76 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv76
  %_78 = icmp eq i1 0, 1
  %_83 = sub i64 0, 4
  %_82 = add i64 %_83, 5
  %_81 = icmp sgt i64 %_82, 0
  %_88 = mul i64 6, 4
  %_87 = icmp slt i64 %_88, 25
  %_80 = and i1 %_81, %_87
  %_77 = or i1 %_78, %_80
  br i1 %_77, label %_then92, label %_else93
_then92:
  ret i64 9
_else93:
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
