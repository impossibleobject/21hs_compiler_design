; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc11 = alloca i64
  store i64 %argc, i64* %_argc11
  %_argv12 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv12
  %_x13 = alloca i64
  store i64 0, i64* %_x13
  %_i15 = alloca i64
  store i64 0, i64* %_i15
  br label %_start21
_start21:
  %_19 = load i64, i64* %_i15
  %_17 = icmp slt i64 %_19, 10
  br i1 %_17, label %_body22, label %_end23
_body22:
  %_29 = load i64, i64* %_x13
  %_31 = load i64, i64* %_i15
  %_27 = add i64 %_29, %_31
  %_33 = load i64, i64* %_i15
  %_26 = mul i64 %_27, %_33
  store i64 %_26, i64* %_x13
  %_38 = load i64, i64* %_i15
  %_36 = add i64 %_38, 1
  store i64 %_36, i64* %_i15
  br label %_start21
_end23:
  %_41 = load i64, i64* %_x13
  ret i64 %_41
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
