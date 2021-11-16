; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc9 = alloca i64
  store i64 %argc, i64* %_argc9
  %_argv10 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv10
  %_x11 = alloca i64
  store i64 0, i64* %_x11
  %_i13 = alloca i64
  store i64 0, i64* %_i13
  br label %_start19
_start19:
  %_17 = load i64, i64* %_i13
  %_15 = icmp slt i64 %_17, 10
  br i1 %_15, label %_body20, label %_end21
_body20:
  %_27 = load i64, i64* %_x11
  %_29 = load i64, i64* %_i13
  %_25 = add i64 %_27, %_29
  %_31 = load i64, i64* %_i13
  %_24 = mul i64 %_25, %_31
  store i64 %_24, i64* %_x11
  %_36 = load i64, i64* %_i13
  %_34 = add i64 %_36, 1
  store i64 %_34, i64* %_i13
  br label %_start19
_end21:
  %_39 = load i64, i64* %_x11
  ret i64 %_39
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
