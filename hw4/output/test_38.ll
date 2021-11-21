; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x1369 = alloca i64
  store i64 %x, i64* %_x1369
  %_acc1370 = alloca i64
  store i64 1, i64* %_acc1370
  br label %_start1376
_start1376:
  %_1374 = load i64, i64* %_x1369
  %_1372 = icmp sgt i64 %_1374, 0
  br i1 %_1372, label %_body1377, label %_end1378
_body1377:
  %_1383 = load i64, i64* %_acc1370
  %_1385 = load i64, i64* %_x1369
  %_1381 = mul i64 %_1383, %_1385
  store i64 %_1381, i64* %_acc1370
  %_1390 = load i64, i64* %_x1369
  %_1388 = sub i64 %_1390, 1
  store i64 %_1388, i64* %_x1369
  br label %_start1376
_end1378:
  %_1393 = load i64, i64* %_acc1370
  ret i64 %_1393
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1358 = alloca i64
  store i64 %argc, i64* %_argc1358
  %_argv1359 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1359
  %_retval1365 = call i8* @string_of_int(i64 %_retval1364)
  %_retval1364 = call i64 @fact(i64 5)
  call void @print_string(i8* %_retval1365)
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
