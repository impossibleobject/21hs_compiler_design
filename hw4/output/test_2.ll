; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca i64
  %i = alloca i64
  %_argc6 = alloca i64
  store i64 %argc, i64* %_argc6
  %_argv7 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7
  store i64 0, i64* %x
  store i64 0, i64* %i
  br label %_start10
_start10:
  %_id9 = load i64, i64* %i
  %_bop8 = icmp slt i64 %_id9, 10
  br i1 %_bop8, label %_body11, label %_end12
_body11:
  %_id15 = load i64, i64* %x
  %_id16 = load i64, i64* %i
  %_bop14 = add i64 %_id15, %_id16
  %_id17 = load i64, i64* %i
  %_bop13 = mul i64 %_bop14, %_id17
  store i64 %_bop13, i64* %x
  %_id19 = load i64, i64* %i
  %_bop18 = add i64 %_id19, 1
  store i64 %_bop18, i64* %i
  br label %_start10
_end12:
  %_id20 = load i64, i64* %x
  ret i64 %_id20
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
