; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc43 = alloca i64
  store i64 %argc, i64* %_argc43
  %_argv44 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv44
  %_x45 = alloca i64
  %_i47 = alloca i64
  store i64 0, i64* %_x45
  store i64 0, i64* %_i47
  br label %_start53
_start53:
  %_51 = load i64, i64* %_i47
  %_49 = icmp slt i64 %_51, 3
  br i1 %_49, label %_body54, label %_end55
_body54:
  %_60 = load i64, i64* %_x45
  %_58 = add i64 %_60, 2
  store i64 %_58, i64* %_x45
  %_66 = load i64, i64* %_i47
  %_64 = add i64 %_66, 1
  store i64 %_64, i64* %_i47
  br label %_start53
_end55:
  %_69 = load i64, i64* %_x45
  ret i64 %_69
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
