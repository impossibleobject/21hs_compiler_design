; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc445 = alloca i64
  store i64 %argc, i64* %_argc445
  %_argv446 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv446
  %_i447 = alloca i64
  store i64 0, i64* %_i447
  br i1 1, label %_then449, label %_else450
_then449:
  store i64 1, i64* %_i447
  br label %_end451
_else450:
  br label %_end451
_end451:
  %_id453 = load i64, i64* %_i447
  ret i64 %_id453
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
