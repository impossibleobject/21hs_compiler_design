; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc41 = alloca i64
  store i64 %argc, i64* %_argc41
  %_argv42 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv42
  %_x43 = alloca i64
  store i64 %_44, i64* %_x43
  %_y47 = alloca i64
  store i64 %_48, i64* %_y47
  %_44 = lshr i64 100, 3
  %_48 = shl i64 100, 3
  %_51 = icmp sle i64 %_52, 0
  %_52 = sub i64 %_54, %_56
  %_56 = load i64, i64* %_y47
  %_54 = load i64, i64* %_x43
  br i1 %_51, label %then, label %else
then:
  ret i64 %_58
else:
  ret i64 %_64
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
