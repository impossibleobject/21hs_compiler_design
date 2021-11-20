; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc177 = alloca i64
  store i64 %argc, i64* %_argc177
  %_argv178 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv178
  %_184 = alloca i1
  store i1 1, i1* %_184
  %_185 = load i1, i1* %_184
  %_uop_tmp186 = icmp eq i1 0, %_185
  %_uop182 = alloca i1
  store i1 %_uop_tmp186, i1* %_uop182
  %_228 = load i1, i1* %_uop182
  %_196 = alloca i64
  store i64 4, i64* %_196
  %_197 = load i64, i64* %_196
  %_uop_tmp198 = sub i64 0, %_197
  %_uop194 = alloca i64
  store i64 %_uop_tmp198, i64* %_uop194
  %_201 = load i64, i64* %_uop194
  %_200 = alloca i64
  store i64 5, i64* %_200
  %_202 = load i64, i64* %_200
  %_bop_tmp203 = add i64 %_201, %_202
  %_bop192 = alloca i64
  store i64 %_bop_tmp203, i64* %_bop192
  %_206 = load i64, i64* %_bop192
  %_205 = alloca i64
  store i64 0, i64* %_205
  %_207 = load i64, i64* %_205
  %_bop_tmp208 = icmp sgt i64 %_206, %_207
  %_bop190 = alloca i1
  store i1 %_bop_tmp208, i1* %_bop190
  %_225 = load i1, i1* %_bop190
  %_214 = alloca i64
  store i64 6, i64* %_214
  %_217 = load i64, i64* %_214
  %_216 = alloca i64
  store i64 4, i64* %_216
  %_218 = load i64, i64* %_216
  %_bop_tmp219 = mul i64 %_217, %_218
  %_bop212 = alloca i64
  store i64 %_bop_tmp219, i64* %_bop212
  %_222 = load i64, i64* %_bop212
  %_221 = alloca i64
  store i64 25, i64* %_221
  %_223 = load i64, i64* %_221
  %_bop_tmp224 = icmp slt i64 %_222, %_223
  %_bop210 = alloca i1
  store i1 %_bop_tmp224, i1* %_bop210
  %_226 = load i1, i1* %_bop210
  %_bop_tmp227 = and i1 %_225, %_226
  %_bop188 = alloca i1
  store i1 %_bop_tmp227, i1* %_bop188
  %_229 = load i1, i1* %_bop188
  %_bop_tmp230 = or i1 %_228, %_229
  %_bop180 = alloca i1
  store i1 %_bop_tmp230, i1* %_bop180
  %_ifthenelse231 = load i1, i1* %_bop180
  br i1 %_ifthenelse231, label %_then232, label %_else233
_then232:
  %_236 = alloca i64
  store i64 9, i64* %_236
  %_ret237 = load i64, i64* %_236
  ret i64 %_ret237
_else233:
  %_239 = alloca i64
  store i64 4, i64* %_239
  %_ret240 = load i64, i64* %_239
  ret i64 %_ret240
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
