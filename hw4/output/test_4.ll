; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc241 = alloca i64
  store i64 %argc, i64* %_argc241
  %_argv242 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv242
  %_250 = alloca i64
  store i64 5, i64* %_250
  %_251 = load i64, i64* %_250
  %_uop_tmp252 = xor i64 -1, %_251
  %_uop248 = alloca i64
  store i64 %_uop_tmp252, i64* %_uop248
  %_255 = load i64, i64* %_uop248
  %_254 = alloca i64
  store i64 6, i64* %_254
  %_256 = load i64, i64* %_254
  %_bop_tmp257 = and i64 %_255, %_256
  %_bop246 = alloca i64
  store i64 %_bop_tmp257, i64* %_bop246
  %_267 = load i64, i64* %_bop246
  %_261 = alloca i64
  store i64 2, i64* %_261
  %_264 = load i64, i64* %_261
  %_263 = alloca i64
  store i64 0, i64* %_263
  %_265 = load i64, i64* %_263
  %_bop_tmp266 = or i64 %_264, %_265
  %_bop259 = alloca i64
  store i64 %_bop_tmp266, i64* %_bop259
  %_268 = load i64, i64* %_bop259
  %_bop_tmp269 = icmp sge i64 %_267, %_268
  %_bop244 = alloca i1
  store i1 %_bop_tmp269, i1* %_bop244
  %_ifthenelse270 = load i1, i1* %_bop244
  br i1 %_ifthenelse270, label %_then271, label %_else272
_then271:
  %_275 = alloca i64
  store i64 23, i64* %_275
  %_ret276 = load i64, i64* %_275
  ret i64 %_ret276
_else272:
  %_278 = alloca i64
  store i64 46, i64* %_278
  %_ret279 = load i64, i64* %_278
  ret i64 %_ret279
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
