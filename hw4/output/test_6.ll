; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc82 = alloca i64
  store i64 %argc, i64* %_argc82
  %_argv83 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv83
  %_uop86 = xor i64 -1, 5
  %_bop85 = and i64 %_uop86, 6
  %_bop87 = or i64 2, 0
  %_bop84 = icmp sge i64 %_bop85, %_bop87
  br i1 %_bop84, label %_then88, label %_else89
_then88:
  ret i64 23
_else89:
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
