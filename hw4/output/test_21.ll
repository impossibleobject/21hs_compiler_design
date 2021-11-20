; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_str4267 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4262 = alloca i64
  store i64 %argc, i64* %_argc4262
  %_argv4263 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4263
  %_str4264 = alloca i8*
  %_str_tmp4268 = getelementptr [13 x i8], [13 x i8]* @_str4267, i32 0
  %_cstr4266 = bitcast [13 x i8]* %_str_tmp4268 to i8**
  %_decl4269 = load i8*, i8** %_cstr4266
  store i8* %_decl4269, i8** %_str4264
  %_id4272 = load i8*, i8** %_str4264
  call void @print_string(i8* %_id4272)
  %_4275 = alloca i64
  store i64 0, i64* %_4275
  %_ret4276 = load i64, i64* %_4275
  ret i64 %_ret4276
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
