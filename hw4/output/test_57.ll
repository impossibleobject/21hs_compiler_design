; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_7495 = global i64 1
@_7496 = global i64 2
@_7497 = global i64 3
@_7498 = global i64 4
@arr2 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@_7491 = global i64 1
@_7492 = global i64 2
@_7493 = global i64 3
@_7494 = global i64 5

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar17444 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar17444
  %_ar27445 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar27445
  %_len7446 = alloca i64
  store i64 %len, i64* %_len7446
  %_val7447 = alloca i64
  %_i7449 = alloca i64
  store i64 0, i64* %_val7447
  store i64 0, i64* %_i7449
  br label %_start7456
_start7456:
  %_7453 = load i64, i64* %_i7449
  %_7455 = load i64, i64* %_len7446
  %_7451 = icmp slt i64 %_7453, %_7455
  br i1 %_7451, label %_body7457, label %_end7458
_body7457:
  %_7462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar17444
  %_7464 = load i64, i64* %_i7449
  %_index_ptr7465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7462, i32 0, i32 1, i64 %_7464
  %_7474 = load i64, i64* %_index_ptr7465
  %_7469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar27445
  %_7471 = load i64, i64* %_i7449
  %_index_ptr7472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_7469, i32 0, i32 1, i64 %_7471
  %_7475 = load i64, i64* %_index_ptr7472
  %_7459 = icmp ne i64 %_7474, %_7475
  br i1 %_7459, label %_then7476, label %_else7477
_then7476:
  store i64 1, i64* %_val7447
  br label %_end7478
_else7477:
  br label %_end7478
_end7478:
  %_7486 = load i64, i64* %_i7449
  %_7484 = add i64 %_7486, 1
  store i64 %_7484, i64* %_i7449
  br label %_start7456
_end7458:
  %_7489 = load i64, i64* %_val7447
  ret i64 %_7489
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7422 = alloca i64
  store i64 %argc, i64* %_argc7422
  %_argv7423 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7423
  %_val7424 = alloca i64
  store i64 1, i64* %_val7424
  %_7429 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr1
  %_7431 = load { i64, [4 x i64] }, { i64, [4 x i64] }* @arr2
  %_retval7433 = call i64 @arrcheck({ i64, [4 x i64] }** %_7429, { i64, [4 x i64] }** %_7431, i64 4)
  %_7426 = icmp eq i64 %_retval7433, 1
  br i1 %_7426, label %_then7435, label %_else7436
_then7435:
  store i64 0, i64* %_val7424
  br label %_end7437
_else7436:
  br label %_end7437
_end7437:
  %_7442 = load i64, i64* %_val7424
  ret i64 %_7442
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
