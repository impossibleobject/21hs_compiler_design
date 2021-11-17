; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_50 = alloca i64
  store i64 %argc, i64* %_50
  %_argc49 = load i64, i64* %_50
  %_52 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_52
  %_argv51 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_52
  %_x53 = alloca i64
  store i64 0, i64* %_x53
  %_i55 = alloca i64
  store i64 0, i64* %_i55
  br label %_start61
_start61:
  %_59 = load i64, i64* %_i55
  %_57 = icmp slt i64 %_59, 3
  br i1 %_57, label %_body62, label %_end63
_body62:
  %_68 = load i64, i64* %_x53
  %_66 = add i64 %_68, 2
  store i64 %_66, i64* %_x53
  %_74 = load i64, i64* %_i55
  %_72 = add i64 %_74, 1
  store i64 %_72, i64* %_i55
  br label %_start61
_end63:
  %_77 = load i64, i64* %_x53
  ret i64 %_77
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
