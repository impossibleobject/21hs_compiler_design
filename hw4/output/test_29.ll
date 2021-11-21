; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i763 = alloca i64
  store i64 12, i64* %_i763
  %_766 = load i64, i64* %_i763
  ret i64 %_766
}

define i64 @g() {
  %_i758 = alloca i64
  store i64 10, i64* %_i758
  %_761 = load i64, i64* %_i758
  ret i64 %_761
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc747 = alloca i64
  store i64 %argc, i64* %_argc747
  %_argv748 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv748
  %_retval752 = call i64 @f()
  %_retval754 = call i64 @g()
  %_750 = add i64 %_retval752, %_retval754
  %_749 = add i64 %_750, 11
  ret i64 %_749
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
