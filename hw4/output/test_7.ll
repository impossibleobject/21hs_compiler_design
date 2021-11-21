; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc172 = alloca i64
  store i64 %argc, i64* %_argc172
  %_argv173 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv173
  %_bop175 = icmp ne i64 6, 5
  br i1 %_bop175, label %_then178, label %_else179
_then178:
  %_uop188 = xor i64 -1, %_bop190
  %_uop197 = sub i64 0, 6
  %_bop194 = lshr i64 5, %_uop197
  %_bop192 = shl i64 %_bop194, 9
  %_bop190 = ashr i64 %_bop192, 10
  %_bop186 = mul i64 %_uop188, 2
  %_bop184 = sub i64 %_bop186, 100
  %_bop182 = add i64 %_bop184, 6
  ret i64 %_bop182
_else179:
  ret i64 2
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
