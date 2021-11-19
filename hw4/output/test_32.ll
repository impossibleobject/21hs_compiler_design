; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x1371 = alloca i64
  store i64 %x, i64* %_x1371
  %_acc1372 = alloca i64
  store i64 1, i64* %_acc1372
  br label %_start1378
_start1378:
  %_1376 = load i64, i64* %_x1371
  %_1374 = icmp sgt i64 %_1376, 0
  br i1 %_1374, label %_body1379, label %_end1380
_body1379:
  %_1385 = load i64, i64* %_acc1372
  %_1387 = load i64, i64* %_x1371
  %_1383 = mul i64 %_1385, %_1387
  store i64 %_1383, i64* %_acc1372
  %_1392 = load i64, i64* %_x1371
  %_1390 = sub i64 %_1392, 1
  store i64 %_1390, i64* %_x1371
  br label %_start1378
_end1380:
  %_1395 = load i64, i64* %_acc1372
  ret i64 %_1395
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1360 = alloca i64
  store i64 %argc, i64* %_argc1360
  %_argv1361 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1361
  %_retval1367 = call i8* @string_of_int(i64 %_retval1366)
  %_retval1366 = call i64 @fact(i64 5)
  call void @print_string(i8* %_retval1367)
  ret i64 0
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
