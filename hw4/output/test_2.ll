; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc12 = alloca i64
  store i64 %argc, i64* %_argc12
  %_argv13 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv13
  %_x14 = alloca i64
  %_i16 = alloca i64
  store i64 0, i64* %_x14
  store i64 0, i64* %_i16
  br label %_start23
_start23:
  %_id21 = load i64, i64* %_i16
  %_bop19 = icmp slt i64 %_id21, 10
  br i1 %_bop19, label %_body24, label %_end25
_body24:
  %_id33 = load i64, i64* %_x14
  %_id35 = load i64, i64* %_i16
  %_bop31 = add i64 %_id33, %_id35
  %_id37 = load i64, i64* %_i16
  %_bop29 = mul i64 %_bop31, %_id37
  store i64 %_bop29, i64* %_x14
  %_id43 = load i64, i64* %_i16
  %_bop41 = add i64 %_id43, 1
  store i64 %_bop41, i64* %_i16
  br label %_start23
_end25:
  %_id46 = load i64, i64* %_x14
  ret i64 %_id46
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
