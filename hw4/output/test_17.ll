; generated from: oatprograms/run49.oat
target triple = "x86_64-unknown-linux"
@_str1289 = global [4 x i8]* c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1285 = alloca i64
  store i64 %argc, i64* %_argc1285
  %_argv1286 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1286
  %_1290 = getelementptr [4 x i8], [4 x i8]* @_str1289, i32 0, i32 0
  call void @print_string(i8** %_1290)
  store i64 0, i64* %_1293
  %_1294 = load i64, i64* %_1293
  ret i64 %_1294
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
