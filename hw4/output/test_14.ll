; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc187 = alloca i64
  store i64 %argc, i64* %_argc187
  %_argv188 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv188
  %_i189 = alloca i64
  store i64 9, i64* %_i189
  %_j191 = alloca i64
  store i64 %_192, i64* %_j191
  %_194 = load i64, i64* %_i189
  %_196 = load i64, i64* %_i189
  %_192 = add i64 %_194, %_196
  %_203 = load i64, i64* %_i189
  %_206 = load i64, i64* %_i189
  %_208 = load i64, i64* %_i189
  %_204 = mul i64 %_206, %_208
  %_201 = add i64 %_203, %_204
  %_210 = load i64, i64* %_j191
  %_200 = sub i64 %_201, %_210
  %_199 = lshr i64 %_200, 2
  %_198 = shl i64 %_199, 2
  %_197 = ashr i64 %_198, 2
  ret i64 %_197
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
