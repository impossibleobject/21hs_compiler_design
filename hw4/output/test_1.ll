; generated from: oatprograms/easyrun2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6 = alloca i64
  store i64 %argc, i64* %_argc6
  %_argv7 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7
  %_11 = alloca i64
  store i64 17, i64* %_11
  %_14 = load i64, i64* %_11
  %_13 = alloca i64
  store i64 18, i64* %_13
  %_15 = load i64, i64* %_13
  %_bop_tmp16 = add i64 %_14, %_15
  %_bop9 = alloca i64
  store i64 %_bop_tmp16, i64* %_bop9
  %_ret17 = load i64, i64* %_bop9
  ret i64 %_ret17
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
