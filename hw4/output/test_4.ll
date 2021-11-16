; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc67 = alloca i64
  store i64 %argc, i64* %_argc67
  %_argv68 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv68
  %_x69 = alloca i64
  store i64 %_70, i64* %_x69
  %_y73 = alloca i64
  store i64 %_74, i64* %_y73
  %_70 = lshr i64 100, 3
  %_74 = shl i64 100, 3
  %_80 = load i64, i64* %_x69
  %_82 = load i64, i64* %_y73
  %_78 = sub i64 %_80, %_82
  %_77 = icmp sle i64 %_78, 0
  br i1 %_77, label %_then84, label %_else85
_then84:
  %_88 = sub i64 0, %_90
  %_90 = load i64, i64* %_x69
  %_92 = load i64, i64* %_y73
  %_87 = sub i64 %_88, %_92
  ret i64 %_87
_else85:
  %_95 = load i64, i64* %_x69
  %_97 = load i64, i64* %_y73
  %_93 = sub i64 %_95, %_97
  ret i64 %_93
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
