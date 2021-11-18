; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a1246 = alloca i64
  store i64 %a, i64* %_a1246
  %_b1247 = alloca i64
  store i64 %b, i64* %_b1247
  %_t1255 = alloca i64
  store i64 %_1257, i64* %_t1255
  br label %_start1252
_start1252:
  %_1250 = load i64, i64* %_b1247
  %_1248 = icmp ne i64 %_1250, 0
  br i1 %_1248, label %_body1253, label %_end1254
_body1253:
  %_1257 = load i64, i64* %_b1247
  %_1262 = load i64, i64* %_a1246
  %_1264 = load i64, i64* %_b1247
  %_retval1265 = call i64 @mod(i64 %_1262, i64 %_1264)
  store i64 %_retval1265, i64* %_b1247
  %_1269 = load i64, i64* %_t1255
  store i64 %_1269, i64* %_a1246
  br label %_start1252
_end1254:
  %_1271 = load i64, i64* %_a1246
  ret i64 %_1271
}

define i64 @mod(i64 %a, i64 %b) {
  %_a1221 = alloca i64
  store i64 %a, i64* %_a1221
  %_b1222 = alloca i64
  store i64 %b, i64* %_b1222
  %_t1223 = alloca i64
  store i64 %_1225, i64* %_t1223
  %_1225 = load i64, i64* %_a1221
  br label %_start1233
_start1233:
  %_1229 = load i64, i64* %_t1223
  %_1231 = load i64, i64* %_b1222
  %_1227 = sub i64 %_1229, %_1231
  %_1226 = icmp sge i64 %_1227, 0
  br i1 %_1226, label %_body1234, label %_end1235
_body1234:
  %_1240 = load i64, i64* %_t1223
  %_1242 = load i64, i64* %_b1222
  %_1238 = sub i64 %_1240, %_1242
  store i64 %_1238, i64* %_t1223
  br label %_start1233
_end1235:
  %_1244 = load i64, i64* %_t1223
  ret i64 %_1244
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1208 = alloca i64
  store i64 %argc, i64* %_argc1208
  %_argv1209 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1209
  %_a1210 = alloca i64
  store i64 64, i64* %_a1210
  %_b1212 = alloca i64
  store i64 48, i64* %_b1212
  %_1216 = load i64, i64* %_a1210
  %_1218 = load i64, i64* %_b1212
  %_retval1219 = call i64 @gcd(i64 %_1216, i64 %_1218)
  ret i64 %_retval1219
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
