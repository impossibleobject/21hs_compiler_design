; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_retval1175 = call i64 @f2()
  %_ret1176 = load i64, i64* %_retval1175
  ret i64 %_ret1176
}

define i64 @f2() {
  %_retval1172 = call i64 @f3()
  %_ret1173 = load i64, i64* %_retval1172
  ret i64 %_ret1173
}

define i64 @f3() {
  %_retval1169 = call i64 @f4()
  %_ret1170 = load i64, i64* %_retval1169
  ret i64 %_ret1170
}

define i64 @f4() {
  %_retval1166 = call i64 @f5()
  %_ret1167 = load i64, i64* %_retval1166
  ret i64 %_ret1167
}

define i64 @f5() {
  %_retval1163 = call i64 @f6()
  %_ret1164 = load i64, i64* %_retval1163
  ret i64 %_ret1164
}

define i64 @f6() {
  %_retval1160 = call i64 @f7()
  %_ret1161 = load i64, i64* %_retval1160
  ret i64 %_ret1161
}

define i64 @f7() {
  %_retval1157 = call i64 @f8()
  %_ret1158 = load i64, i64* %_retval1157
  ret i64 %_ret1158
}

define i64 @f8() {
  %_retval1154 = call i64 @f9()
  %_ret1155 = load i64, i64* %_retval1154
  ret i64 %_ret1155
}

define i64 @f9() {
  %_1151 = alloca i64
  store i64 31, i64* %_1151
  %_ret1152 = load i64, i64* %_1151
  ret i64 %_ret1152
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1145 = alloca i64
  store i64 %argc, i64* %_argc1145
  %_argv1146 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1146
  %_retval1148 = call i64 @f1()
  %_ret1149 = load i64, i64* %_retval1148
  ret i64 %_ret1149
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
