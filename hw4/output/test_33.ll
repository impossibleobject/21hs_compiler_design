; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x11200 = alloca i64
  store i64 %x1, i64* %_x11200
  %_x21201 = alloca i64
  store i64 %x2, i64* %_x21201
  %_x31202 = alloca i64
  store i64 %x3, i64* %_x31202
  %_x41203 = alloca i64
  store i64 %x4, i64* %_x41203
  %_x51204 = alloca i64
  store i64 %x5, i64* %_x51204
  %_x61205 = alloca i64
  store i64 %x6, i64* %_x61205
  %_x71206 = alloca i64
  store i64 %x7, i64* %_x71206
  %_x81207 = alloca i64
  store i64 %x8, i64* %_x81207
  %_id1223 = load i64, i64* %_x11200
  %_id1225 = load i64, i64* %_x21201
  %_bop1221 = add i64 %_id1223, %_id1225
  %_id1227 = load i64, i64* %_x31202
  %_bop1219 = add i64 %_bop1221, %_id1227
  %_id1229 = load i64, i64* %_x41203
  %_bop1217 = add i64 %_bop1219, %_id1229
  %_id1231 = load i64, i64* %_x51204
  %_bop1215 = add i64 %_bop1217, %_id1231
  %_id1233 = load i64, i64* %_x61205
  %_bop1213 = add i64 %_bop1215, %_id1233
  %_id1235 = load i64, i64* %_x71206
  %_bop1211 = add i64 %_bop1213, %_id1235
  %_id1237 = load i64, i64* %_x81207
  %_bop1209 = add i64 %_bop1211, %_id1237
  ret i64 %_bop1209
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1181 = alloca i64
  store i64 %argc, i64* %_argc1181
  %_argv1182 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1182
  %_uop1190 = sub i64 0, 5
  %_uop1193 = sub i64 0, 4
  %_uop1196 = sub i64 0, 3
  %_Call_retval1198 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop1190, i64 %_uop1193, i64 %_uop1196)
  ret i64 %_Call_retval1198
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
