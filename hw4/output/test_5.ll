; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc100 = alloca i64
  store i64 %argc, i64* %_argc100
  %_argv101 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv101
  %_102 = icmp ne i64 6, 5
  %_113 = sub i64 0, 6
  %_111 = lshr i64 5, %_113
  %_110 = shl i64 %_111, 9
  %_109 = ashr i64 %_110, 10
  %_108 = xor i64 -1, %_109
  %_107 = mul i64 %_108, 2
  %_106 = sub i64 %_107, 100
  %_105 = add i64 %_106, 6
  br i1 %_102, label %then, label %else
then:
  ret i64 %_105
else:
  ret i64 2
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
