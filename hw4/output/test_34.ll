; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a1358 = alloca i64
  store i64 %a, i64* %_a1358
  %_b1359 = alloca i64
  store i64 %b, i64* %_b1359
  %_t1367 = alloca i64
  store i64 %_1369, i64* %_t1367
  br label %_start1364
_start1364:
  %_1362 = load i64, i64* %_b1359
  %_1360 = icmp ne i64 %_1362, 0
  br i1 %_1360, label %_body1365, label %_end1366
_body1365:
  %_1369 = load i64, i64* %_b1359
  %_1374 = load i64, i64* %_a1358
  %_1376 = load i64, i64* %_b1359
  %_retval1377 = call i64 @mod(i64 %_1374, i64 %_1376)
  store i64 %_retval1377, i64* %_b1359
  %_1381 = load i64, i64* %_t1367
  store i64 %_1381, i64* %_a1358
  br label %_start1364
_end1366:
  %_1383 = load i64, i64* %_a1358
  ret i64 %_1383
}

define i64 @mod(i64 %a, i64 %b) {
  %_a1333 = alloca i64
  store i64 %a, i64* %_a1333
  %_b1334 = alloca i64
  store i64 %b, i64* %_b1334
  %_t1335 = alloca i64
  store i64 %_1337, i64* %_t1335
  %_1337 = load i64, i64* %_a1333
  br label %_start1345
_start1345:
  %_1341 = load i64, i64* %_t1335
  %_1343 = load i64, i64* %_b1334
  %_1339 = sub i64 %_1341, %_1343
  %_1338 = icmp sge i64 %_1339, 0
  br i1 %_1338, label %_body1346, label %_end1347
_body1346:
  %_1352 = load i64, i64* %_t1335
  %_1354 = load i64, i64* %_b1334
  %_1350 = sub i64 %_1352, %_1354
  store i64 %_1350, i64* %_t1335
  br label %_start1345
_end1347:
  %_1356 = load i64, i64* %_t1335
  ret i64 %_1356
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1320 = alloca i64
  store i64 %argc, i64* %_argc1320
  %_argv1321 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1321
  %_a1322 = alloca i64
  store i64 64, i64* %_a1322
  %_b1324 = alloca i64
  store i64 48, i64* %_b1324
  %_1328 = load i64, i64* %_a1322
  %_1330 = load i64, i64* %_b1324
  %_retval1331 = call i64 @gcd(i64 %_1328, i64 %_1330)
  ret i64 %_retval1331
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
