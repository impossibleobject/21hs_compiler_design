; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc71 = alloca i64
  store i64 %argc, i64* %_argc71
  %_argv72 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv72
  %_x73 = alloca i64
  store i64 %_74, i64* %_x73
  %_y77 = alloca i64
  store i64 %_78, i64* %_y77
  %_74 = lshr i64 100, 3
  %_78 = shl i64 100, 3
  %_84 = load i64, i64* %_x73
  %_86 = load i64, i64* %_y77
  %_82 = sub i64 %_84, %_86
  %_81 = icmp sle i64 %_82, 0
  br i1 %_81, label %_then88, label %_else89
_then88:
  %_92 = sub i64 0, %_94
  %_94 = load i64, i64* %_x73
  %_96 = load i64, i64* %_y77
  %_91 = sub i64 %_92, %_96
  ret i64 %_91
_else89:
  %_100 = load i64, i64* %_x73
  %_102 = load i64, i64* %_y77
  %_98 = sub i64 %_100, %_102
  ret i64 %_98
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
