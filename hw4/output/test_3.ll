; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc40 = alloca i64
  store i64 %argc, i64* %_argc40
  %_argv41 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv41
  %_x42 = alloca i64
  store i64 0, i64* %_x42
  %_i44 = alloca i64
  store i64 0, i64* %_i44
  br label %_start50
_start50:
  %_48 = load i64, i64* %_i44
  %_46 = icmp slt i64 %_48, 3
  br i1 %_46, label %_body51, label %_end52
_body51:
  %_57 = load i64, i64* %_x42
  %_55 = add i64 %_57, 2
  store i64 %_55, i64* %_x42
  %_63 = load i64, i64* %_i44
  %_61 = add i64 %_63, 1
  store i64 %_61, i64* %_i44
  br label %_start50
_end52:
  %_66 = load i64, i64* %_x42
  ret i64 %_66
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
