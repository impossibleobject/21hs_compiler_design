; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc69 = alloca i64
  store i64 %argc, i64* %_argc69
  %_argv70 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv70
  %_72 = icmp eq i1 0, 1
  %_77 = sub i64 0, 4
  %_76 = add i64 %_77, 5
  %_75 = icmp sgt i64 %_76, 0
  %_82 = mul i64 6, 4
  %_81 = icmp slt i64 %_82, 25
  %_74 = and i1 %_75, %_81
  %_71 = or i1 %_72, %_74
  br i1 %_71, label %then, label %else
then:
  ret i64 9
else:
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
