; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x1421 = alloca i64
  store i64 %x, i64* %_x1421
  %_acc1422 = alloca i64
  store i64 1, i64* %_acc1422
  br label %_start1429
_start1429:
  %_id1427 = load i64, i64* %_x1421
  %_bop1425 = icmp sgt i64 %_id1427, 0
  br i1 %_bop1425, label %_body1430, label %_end1431
_body1430:
  %_id1437 = load i64, i64* %_acc1422
  %_id1439 = load i64, i64* %_x1421
  %_bop1435 = mul i64 %_id1437, %_id1439
  store i64 %_bop1435, i64* %_acc1422
  %_id1445 = load i64, i64* %_x1421
  %_bop1443 = sub i64 %_id1445, 1
  store i64 %_bop1443, i64* %_x1421
  br label %_start1429
_end1431:
  %_id1448 = load i64, i64* %_acc1422
  ret i64 %_id1448
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1410 = alloca i64
  store i64 %argc, i64* %_argc1410
  %_argv1411 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1411
  %_Call_retval1417 = call i8* @string_of_int(i64 %_Call_retval1416)
  %_Call_retval1416 = call i64 @fact(i64 5)
  call void @print_string(i8* %_Call_retval1417)
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
