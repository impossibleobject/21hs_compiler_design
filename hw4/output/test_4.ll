; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc45 = alloca i64
  store i64 %argc, i64* %_argc45
  %_argv46 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv46
  %_x47 = alloca i64
  %_y49 = alloca i64
  store i64 %_bop48, i64* %_x47
  %_bop48 = lshr i64 100, 3
  store i64 %_bop50, i64* %_y49
  %_bop50 = shl i64 100, 3
  %_id53 = load i64, i64* %_x47
  %_id54 = load i64, i64* %_y49
  %_bop52 = sub i64 %_id53, %_id54
  %_bop51 = icmp sle i64 %_bop52, 0
  br i1 %_bop51, label %_then55, label %_else56
_then55:
  %_uop59 = sub i64 0, %_id60
  %_id60 = load i64, i64* %_x47
  %_id61 = load i64, i64* %_y49
  %_bop58 = sub i64 %_uop59, %_id61
  ret i64 %_bop58
_else56:
  %_id64 = load i64, i64* %_x47
  %_id65 = load i64, i64* %_y49
  %_bop63 = sub i64 %_id64, %_id65
  ret i64 %_bop63
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
