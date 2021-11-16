; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1 = alloca i64
  store i64 %argc, i64* %_argc1
  %_argv2 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2
  %_x3 = alloca i64
  store i64 0, i64* %_x3
  %_i5 = alloca i64
  store i64 0, i64* %_i5
  br label %start
start:
  %_9 = load i64, i64* %_i5
  %_7 = icmp slt i64 %_9, 10
  br i1 %_7, label %body, label %end
body:
  %_16 = load i64, i64* %_x3
  %_18 = load i64, i64* %_i5
  %_14 = add i64 %_16, %_18
  %_20 = load i64, i64* %_i5
  %_13 = mul i64 %_14, %_20
  store i64 %_13, i64* %_x3
  %_25 = load i64, i64* %_i5
  %_23 = add i64 %_25, 1
  store i64 %_23, i64* %_i5
  br label %start
end:
  %_28 = load i64, i64* %_x3
  ret i64 %_28
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
