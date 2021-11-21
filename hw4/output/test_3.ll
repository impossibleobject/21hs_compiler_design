; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc48 = alloca i64
  store i64 %argc, i64* %_argc48
  %_argv49 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv49
  %_x50 = alloca i64
  %_i52 = alloca i64
  store i64 0, i64* %_x50
  store i64 0, i64* %_i52
  br label %_start59
_start59:
  %_id57 = load i64, i64* %_i52
  %_bop55 = icmp slt i64 %_id57, 3
  br i1 %_bop55, label %_body60, label %_end61
_body60:
  %_id67 = load i64, i64* %_x50
  %_bop65 = add i64 %_id67, 2
  store i64 %_bop65, i64* %_x50
  %_id74 = load i64, i64* %_i52
  %_bop72 = add i64 %_id74, 1
  store i64 %_bop72, i64* %_i52
  br label %_start59
_end61:
  %_id77 = load i64, i64* %_x50
  ret i64 %_id77
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
