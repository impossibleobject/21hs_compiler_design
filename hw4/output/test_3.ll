; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc44 = alloca i64
  store i64 %argc, i64* %_argc44
  %_argv45 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv45
  %_x46 = alloca i64
  store i64 %_47, i64* %_x46
  %_y50 = alloca i64
  store i64 %_51, i64* %_y50
  %_47 = lshr i64 100, 3
  %_51 = shl i64 100, 3
  %_57 = load i64, i64* %_x46
  %_59 = load i64, i64* %_y50
  %_55 = sub i64 %_57, %_59
  %_54 = icmp sle i64 %_55, 0
  br i1 %_54, label %_then61, label %_else62
_then61:
  %_65 = sub i64 0, %_67
  %_67 = load i64, i64* %_x46
  %_69 = load i64, i64* %_y50
  %_64 = sub i64 %_65, %_69
  ret i64 %_64
_else62:
  %_72 = load i64, i64* %_x46
  %_74 = load i64, i64* %_y50
  %_70 = sub i64 %_72, %_74
  ret i64 %_70
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
