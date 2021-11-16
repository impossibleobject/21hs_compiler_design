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
  br label %start
start:
  %_17 = load i64, i64* %_i13
  %_15 = icmp slt i64 %_17, 10
  br i1 %_15, label %body, label %end
body:
  %_24 = load i64, i64* %_x11
  %_26 = load i64, i64* %_i13
  %_22 = add i64 %_24, %_26
  %_28 = load i64, i64* %_i13
  %_21 = mul i64 %_22, %_28
  store i64 %_21, i64* %_x11
  %_33 = load i64, i64* %_i13
  %_31 = add i64 %_33, 1
  store i64 %_31, i64* %_i13
  br label %start
end:
  %_36 = load i64, i64* %_x11
  ret i64 %_36
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
