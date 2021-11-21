; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc427 = alloca i64
  store i64 %argc, i64* %_argc427
  %_argv428 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv428
  %_i429 = alloca i64
  %_j430 = alloca i64
  store i64 9, i64* %_i429
  store i64 %_bop431, i64* %_j430
  %_id432 = load i64, i64* %_i429
  %_id433 = load i64, i64* %_i429
  %_bop431 = add i64 %_id432, %_id433
  %_id439 = load i64, i64* %_i429
  %_id441 = load i64, i64* %_i429
  %_id442 = load i64, i64* %_i429
  %_bop440 = mul i64 %_id441, %_id442
  %_bop438 = add i64 %_id439, %_bop440
  %_id443 = load i64, i64* %_j430
  %_bop437 = sub i64 %_bop438, %_id443
  %_bop436 = lshr i64 %_bop437, 2
  %_bop435 = shl i64 %_bop436, 2
  %_bop434 = ashr i64 %_bop435, 2
  ret i64 %_bop434
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
