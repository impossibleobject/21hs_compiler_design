; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc57 = alloca i64
  store i64 %argc, i64* %_argc57
  %_argv58 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv58
  %_uop60 = icmp eq i1 0, 1
  %_uop64 = sub i64 0, 4
  %_bop63 = add i64 %_uop64, 5
  %_bop62 = icmp sgt i64 %_bop63, 0
  %_bop66 = mul i64 6, 4
  %_bop65 = icmp slt i64 %_bop66, 25
  %_bop61 = and i1 %_bop62, %_bop65
  %_bop59 = or i1 %_uop60, %_bop61
  br i1 %_bop59, label %_then67, label %_else68
_then67:
  ret i64 9
_else68:
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
