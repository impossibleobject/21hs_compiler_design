; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc23 = alloca i64
  store i64 %argc, i64* %_argc23
  %_argv24 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv24
  %_x25 = alloca i64
  %_i26 = alloca i64
  store i64 0, i64* %_x25
  store i64 0, i64* %_i26
  br label %_start29
_start29:
  %_id28 = load i64, i64* %_i26
  %_bop27 = icmp slt i64 %_id28, 3
  br i1 %_bop27, label %_body30, label %_end31
_body30:
  %_id33 = load i64, i64* %_x25
  %_bop32 = add i64 %_id33, 2
  store i64 %_bop32, i64* %_x25
  %_id35 = load i64, i64* %_i26
  %_bop34 = add i64 %_id35, 1
  store i64 %_bop34, i64* %_i26
  br label %_start29
_end31:
  %_id36 = load i64, i64* %_x25
  ret i64 %_id36
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
