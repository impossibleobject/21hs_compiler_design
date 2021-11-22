; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca i64
  %i = alloca i64
  %_argc21 = alloca i64
  store i64 %argc, i64* %_argc21
  %_argv22 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv22
  store i64 0, i64* %x
  store i64 0, i64* %i
  br label %_start25
_start25:
  %_id24 = load i64, i64* %i
  %_bop23 = icmp slt i64 %_id24, 3
  br i1 %_bop23, label %_body26, label %_end27
_body26:
  %_id29 = load i64, i64* %x
  %_bop28 = add i64 %_id29, 2
  store i64 %_bop28, i64* %x
  %_id31 = load i64, i64* %i
  %_bop30 = add i64 %_id31, 1
  store i64 %_bop30, i64* %i
  br label %_start25
_end27:
  %_id32 = load i64, i64* %x
  ret i64 %_id32
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
