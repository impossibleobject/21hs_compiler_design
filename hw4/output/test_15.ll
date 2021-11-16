; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc232 = alloca i64
  store i64 %argc, i64* %_argc232
  %_argv233 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv233
  %_i234 = alloca i64
  store i64 0, i64* %_i234
  br i1 1, label %_then238, label %_else239
_then238:
  store i64 1, i64* %_i234
  br label %_end240
_else239:
  br label %_end240
_end240:
  %_245 = load i64, i64* %_i234
  ret i64 %_245
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
