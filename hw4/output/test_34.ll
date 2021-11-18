; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a1382 = alloca i64
  store i64 %a, i64* %_a1382
  %_b1383 = alloca i64
  store i64 %b, i64* %_b1383
  %_t1391 = alloca i64
  store i64 %_1393, i64* %_t1391
  br label %_start1388
_start1388:
  %_1386 = load i64, i64* %_b1383
  %_1384 = icmp ne i64 %_1386, 0
  br i1 %_1384, label %_body1389, label %_end1390
_body1389:
  %_1393 = load i64, i64* %_b1383
  %_1398 = load i64, i64* %_a1382
  %_1400 = load i64, i64* %_b1383
  %_retval1401 = call i64 @mod(i64 %_1398, i64 %_1400)
  store i64 %_retval1401, i64* %_b1383
  %_1405 = load i64, i64* %_t1391
  store i64 %_1405, i64* %_a1382
  br label %_start1388
_end1390:
  %_1407 = load i64, i64* %_a1382
  ret i64 %_1407
}

define i64 @mod(i64 %a, i64 %b) {
  %_a1357 = alloca i64
  store i64 %a, i64* %_a1357
  %_b1358 = alloca i64
  store i64 %b, i64* %_b1358
  %_t1359 = alloca i64
  store i64 %_1361, i64* %_t1359
  %_1361 = load i64, i64* %_a1357
  br label %_start1369
_start1369:
  %_1365 = load i64, i64* %_t1359
  %_1367 = load i64, i64* %_b1358
  %_1363 = sub i64 %_1365, %_1367
  %_1362 = icmp sge i64 %_1363, 0
  br i1 %_1362, label %_body1370, label %_end1371
_body1370:
  %_1376 = load i64, i64* %_t1359
  %_1378 = load i64, i64* %_b1358
  %_1374 = sub i64 %_1376, %_1378
  store i64 %_1374, i64* %_t1359
  br label %_start1369
_end1371:
  %_1380 = load i64, i64* %_t1359
  ret i64 %_1380
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1344 = alloca i64
  store i64 %argc, i64* %_argc1344
  %_argv1345 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1345
  %_a1346 = alloca i64
  store i64 64, i64* %_a1346
  %_b1348 = alloca i64
  store i64 48, i64* %_b1348
  %_1352 = load i64, i64* %_a1346
  %_1354 = load i64, i64* %_b1348
  %_retval1355 = call i64 @gcd(i64 %_1352, i64 %_1354)
  ret i64 %_retval1355
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
