; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca i64
  %y = alloca i64
  %_argc33 = alloca i64
  store i64 %argc, i64* %_argc33
  %_argv34 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv34
  %_bop35 = lshr i64 100, 3
  store i64 %_bop35, i64* %x
  %_bop36 = shl i64 100, 3
  store i64 %_bop36, i64* %y
  %_id39 = load i64, i64* %x
  %_id40 = load i64, i64* %y
  %_bop38 = sub i64 %_id39, %_id40
  %_bop37 = icmp sle i64 %_bop38, 0
  br i1 %_bop37, label %_then41, label %_else42
_then41:
  %_id46 = load i64, i64* %x
  %_uop45 = sub i64 0, %_id46
  %_id47 = load i64, i64* %y
  %_bop44 = sub i64 %_uop45, %_id47
  ret i64 %_bop44
_else42:
  %_id49 = load i64, i64* %x
  %_id50 = load i64, i64* %y
  %_bop48 = sub i64 %_id49, %_id50
  ret i64 %_bop48
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
