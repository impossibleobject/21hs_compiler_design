; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc536 = alloca i64
  store i64 %argc, i64* %_argc536
  %_argv537 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv537
  %_x538 = alloca i64
  %_y542 = alloca i64
  %_540 = alloca i64
  store i64 17, i64* %_540
  %_decl541 = load i64, i64* %_540
  store i64 %_decl541, i64* %_x538
  %_544 = alloca i64
  store i64 18, i64* %_544
  %_decl545 = load i64, i64* %_544
  store i64 %_decl545, i64* %_y542
  %_id549 = load i64, i64* %_x538
  %_id551 = load i64, i64* %_y542
  %_bop_tmp552 = add i64 %_id549, %_id551
  %_bop547 = alloca i64
  store i64 %_bop_tmp552, i64* %_bop547
  %_ret553 = load i64, i64* %_bop547
  ret i64 %_ret553
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
