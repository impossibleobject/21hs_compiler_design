; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc51 = alloca i64
  store i64 %argc, i64* %_argc51
  %_argv52 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv52
  %_uop54 = icmp eq i1 0, 1
  %_uop58 = sub i64 0, 4
  %_bop57 = add i64 %_uop58, 5
  %_bop56 = icmp sgt i64 %_bop57, 0
  %_bop60 = mul i64 6, 4
  %_bop59 = icmp slt i64 %_bop60, 25
  %_bop55 = and i1 %_bop56, %_bop59
  %_bop53 = or i1 %_uop54, %_bop55
  br i1 %_bop53, label %_then61, label %_else62
_then61:
  ret i64 9
_else62:
  ret i64 4
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
