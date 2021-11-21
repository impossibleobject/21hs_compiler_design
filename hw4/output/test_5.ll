; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc119 = alloca i64
  store i64 %argc, i64* %_argc119
  %_argv120 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv120
  %_uop124 = icmp eq i1 0, 1
  %_uop133 = sub i64 0, 4
  %_bop131 = add i64 %_uop133, 5
  %_bop129 = icmp sgt i64 %_bop131, 0
  %_bop140 = mul i64 6, 4
  %_bop138 = icmp slt i64 %_bop140, 25
  %_bop127 = and i1 %_bop129, %_bop138
  %_bop122 = or i1 %_uop124, %_bop127
  br i1 %_bop122, label %_then144, label %_else145
_then144:
  ret i64 9
_else145:
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
