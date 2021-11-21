; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i808 = alloca i64
  store i64 12, i64* %_i808
  %_id811 = load i64, i64* %_i808
  ret i64 %_id811
}

define i64 @g() {
  %_i803 = alloca i64
  store i64 10, i64* %_i803
  %_id806 = load i64, i64* %_i803
  ret i64 %_id806
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc790 = alloca i64
  store i64 %argc, i64* %_argc790
  %_argv791 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv791
  %_Call_retval797 = call i64 @f()
  %_Call_retval799 = call i64 @g()
  %_bop795 = add i64 %_Call_retval797, %_Call_retval799
  %_bop793 = add i64 %_bop795, 11
  ret i64 %_bop793
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
