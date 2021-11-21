; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc28 = alloca i64
  store i64 %argc, i64* %_argc28
  %_argv29 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv29
  %_x30 = alloca i64
  %_i31 = alloca i64
  store i64 0, i64* %_x30
  store i64 0, i64* %_i31
  br label %_start34
_start34:
  %_id33 = load i64, i64* %_i31
  %_bop32 = icmp slt i64 %_id33, 3
  br i1 %_bop32, label %_body35, label %_end36
_body35:
  %_id39 = load i64, i64* %_x30
  %_bop38 = add i64 %_id39, 2
  store i64 %_bop38, i64* %_x30
  %_id42 = load i64, i64* %_i31
  %_bop41 = add i64 %_id42, 1
  store i64 %_bop41, i64* %_i31
  br label %_start34
_end36:
  %_id43 = load i64, i64* %_x30
  ret i64 %_id43
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
