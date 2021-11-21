; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc8 = alloca i64
  store i64 %argc, i64* %_argc8
  %_argv9 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv9
  %_x10 = alloca i64
  %_i11 = alloca i64
  store i64 0, i64* %_x10
  store i64 0, i64* %_i11
  br label %_start14
_start14:
  %_id13 = load i64, i64* %_i11
  %_bop12 = icmp slt i64 %_id13, 10
  br i1 %_bop12, label %_body15, label %_end16
_body15:
  %_id20 = load i64, i64* %_x10
  %_id21 = load i64, i64* %_i11
  %_bop19 = add i64 %_id20, %_id21
  %_id22 = load i64, i64* %_i11
  %_bop18 = mul i64 %_bop19, %_id22
  store i64 %_bop18, i64* %_x10
  %_id25 = load i64, i64* %_i11
  %_bop24 = add i64 %_id25, 1
  store i64 %_bop24, i64* %_i11
  br label %_start14
_end16:
  %_id26 = load i64, i64* %_x10
  ret i64 %_id26
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
