; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_16 = alloca i64
  store i64 %argc, i64* %_16
  %_argc15 = load i64, i64* %_16
  %_18 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_18
  %_argv17 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_18
  %_x19 = alloca i64
  store i64 0, i64* %_x19
  %_i21 = alloca i64
  store i64 0, i64* %_i21
  br label %_start27
_start27:
  %_25 = load i64, i64* %_i21
  %_23 = icmp slt i64 %_25, 10
  br i1 %_23, label %_body28, label %_end29
_body28:
  %_35 = load i64, i64* %_x19
  %_37 = load i64, i64* %_i21
  %_33 = add i64 %_35, %_37
  %_39 = load i64, i64* %_i21
  %_32 = mul i64 %_33, %_39
  store i64 %_32, i64* %_x19
  %_44 = load i64, i64* %_i21
  %_42 = add i64 %_44, 1
  store i64 %_42, i64* %_i21
  br label %_start27
_end29:
  %_47 = load i64, i64* %_x19
  ret i64 %_47
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
