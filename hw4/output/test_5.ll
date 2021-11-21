; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc67 = alloca i64
  store i64 %argc, i64* %_argc67
  %_argv68 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv68
  %_uop70 = icmp eq i1 0, 1
  %_uop74 = sub i64 0, 4
  %_bop73 = add i64 %_uop74, 5
  %_bop72 = icmp sgt i64 %_bop73, 0
  %_bop76 = mul i64 6, 4
  %_bop75 = icmp slt i64 %_bop76, 25
  %_bop71 = and i1 %_bop72, %_bop75
  %_bop69 = or i1 %_uop70, %_bop71
  br i1 %_bop69, label %_then77, label %_else78
_then77:
  ret i64 9
_else78:
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
