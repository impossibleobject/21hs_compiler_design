; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x8 = alloca i64
  %_i9 = alloca i64
  %_argc6 = alloca i64
  store i64 %argc, i64* %_argc6
  %_argv7 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7
  store i64 0, i64* %_x8
  store i64 0, i64* %_i9
  br label %_start12
_start12:
  %_id11 = load i64, i64* %_i9
  %_bop10 = icmp slt i64 %_id11, 10
  br i1 %_bop10, label %_body13, label %_end14
_body13:
  %_id17 = load i64, i64* %_x8
  %_id18 = load i64, i64* %_i9
  %_bop16 = add i64 %_id17, %_id18
  %_id19 = load i64, i64* %_i9
  %_bop15 = mul i64 %_bop16, %_id19
  store i64 %_bop15, i64* %_x8
  %_id21 = load i64, i64* %_i9
  %_bop20 = add i64 %_id21, 1
  store i64 %_bop20, i64* %_i9
  br label %_start12
_end14:
  %_id22 = load i64, i64* %_x8
  ret i64 %_id22
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
