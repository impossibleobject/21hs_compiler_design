; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc257 = alloca i64
  store i64 %argc, i64* %_argc257
  %_argv258 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv258
  %_i259 = alloca i64
  store i64 9, i64* %_i259
  %_j261 = alloca i64
  store i64 %_262, i64* %_j261
  %_264 = load i64, i64* %_i259
  %_266 = load i64, i64* %_i259
  %_262 = add i64 %_264, %_266
  %_273 = load i64, i64* %_i259
  %_276 = load i64, i64* %_i259
  %_278 = load i64, i64* %_i259
  %_274 = mul i64 %_276, %_278
  %_271 = add i64 %_273, %_274
  %_280 = load i64, i64* %_j261
  %_270 = sub i64 %_271, %_280
  %_269 = lshr i64 %_270, 2
  %_268 = shl i64 %_269, 2
  %_267 = ashr i64 %_268, 2
  ret i64 %_267
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
