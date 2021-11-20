; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc213 = alloca i64
  store i64 %argc, i64* %_argc213
  %_argv214 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv214
  store i64 6, i64* %_217
  %_220 = load i64, i64* %_217
  store i64 5, i64* %_219
  %_221 = load i64, i64* %_219
  %_215 = icmp ne i64 %_220, %_221
  br i1 %_215, label %_then222, label %_else223
_then222:
  %_228 = xor i64 -1, %_248
  store i64 5, i64* %_233
  %_238 = load i64, i64* %_233
  %_234 = sub i64 0, %_237
  store i64 6, i64* %_236
  %_237 = load i64, i64* %_236
  %_239 = load i64, i64* %_234
  %_231 = lshr i64 %_238, %_239
  %_242 = load i64, i64* %_231
  store i64 9, i64* %_241
  %_243 = load i64, i64* %_241
  %_230 = shl i64 %_242, %_243
  %_246 = load i64, i64* %_230
  store i64 10, i64* %_245
  %_247 = load i64, i64* %_245
  %_229 = ashr i64 %_246, %_247
  %_248 = load i64, i64* %_229
  %_251 = load i64, i64* %_228
  store i64 2, i64* %_250
  %_252 = load i64, i64* %_250
  %_227 = mul i64 %_251, %_252
  %_255 = load i64, i64* %_227
  store i64 100, i64* %_254
  %_256 = load i64, i64* %_254
  %_226 = sub i64 %_255, %_256
  %_259 = load i64, i64* %_226
  store i64 6, i64* %_258
  %_260 = load i64, i64* %_258
  %_225 = add i64 %_259, %_260
  %_261 = load i64, i64* %_225
  ret i64 %_261
_else223:
  store i64 2, i64* %_263
  %_264 = load i64, i64* %_263
  ret i64 %_264
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
