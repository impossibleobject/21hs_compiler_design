; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x3459 = alloca i64
  store i64 %x, i64* %_x3459
  %_y3460 = alloca i64
  store i64 %y, i64* %_y3460
  %_id3462 = load i64, i64* %_x3459
  %_id3463 = load i64, i64* %_y3460
  %_bop3461 = icmp eq i64 %_id3462, %_id3463
  br i1 %_bop3461, label %_then3464, label %_else3465
_then3464:
  %_id3467 = load i64, i64* %_x3459
  ret i64 %_id3467
_else3465:
  br label %_end3466
_end3466:
  %_id3470 = load i64, i64* %_x3459
  %_bop3469 = icmp eq i64 %_id3470, 0
  br i1 %_bop3469, label %_then3471, label %_else3472
_then3471:
  %_id3474 = load i64, i64* %_y3460
  ret i64 %_id3474
_else3472:
  br label %_end3473
_end3473:
  %_id3477 = load i64, i64* %_y3460
  %_bop3476 = icmp eq i64 %_id3477, 0
  br i1 %_bop3476, label %_then3478, label %_else3479
_then3478:
  %_id3481 = load i64, i64* %_x3459
  ret i64 %_id3481
_else3479:
  br label %_end3480
_end3480:
  %_uop3485 = xor i64 -1, %_id3486
  %_id3486 = load i64, i64* %_x3459
  %_bop3484 = and i64 %_uop3485, 1
  %_bop3483 = icmp eq i64 %_bop3484, 1
  br i1 %_bop3483, label %_then3487, label %_else3488
_then3487:
  %_id3492 = load i64, i64* %_y3460
  %_bop3491 = and i64 %_id3492, 1
  %_bop3490 = icmp eq i64 %_bop3491, 1
  br i1 %_bop3490, label %_then3493, label %_else3494
_then3493:
  %_bop3496 = lshr i64 %_id3497, 1
  %_id3497 = load i64, i64* %_x3459
  %_id3498 = load i64, i64* %_y3460
  %_Call_retval3499 = call i64 @binary_gcd(i64 %_bop3496, i64 %_id3498)
  ret i64 %_Call_retval3499
_else3494:
  %_bop3502 = lshr i64 %_id3503, 1
  %_id3503 = load i64, i64* %_x3459
  %_bop3504 = lshr i64 %_id3505, 1
  %_id3505 = load i64, i64* %_y3460
  %_Call_retval3506 = call i64 @binary_gcd(i64 %_bop3502, i64 %_bop3504)
  %_bop3501 = shl i64 %_Call_retval3506, 1
  ret i64 %_bop3501
_end3495:
  br label %_end3489
_else3488:
  br label %_end3489
_end3489:
  %_uop3510 = xor i64 -1, %_id3511
  %_id3511 = load i64, i64* %_y3460
  %_bop3509 = and i64 %_uop3510, 1
  %_bop3508 = icmp eq i64 %_bop3509, 1
  br i1 %_bop3508, label %_then3512, label %_else3513
_then3512:
  %_id3515 = load i64, i64* %_x3459
  %_bop3516 = lshr i64 %_id3517, 1
  %_id3517 = load i64, i64* %_y3460
  %_Call_retval3518 = call i64 @binary_gcd(i64 %_id3515, i64 %_bop3516)
  ret i64 %_Call_retval3518
_else3513:
  br label %_end3514
_end3514:
  %_id3521 = load i64, i64* %_x3459
  %_id3522 = load i64, i64* %_y3460
  %_bop3520 = icmp sgt i64 %_id3521, %_id3522
  br i1 %_bop3520, label %_then3523, label %_else3524
_then3523:
  %_bop3526 = lshr i64 %_bop3527, 1
  %_bop3527 = sub i64 %_id3528, %_id3529
  %_id3529 = load i64, i64* %_y3460
  %_id3528 = load i64, i64* %_x3459
  %_id3530 = load i64, i64* %_y3460
  %_Call_retval3531 = call i64 @binary_gcd(i64 %_bop3526, i64 %_id3530)
  ret i64 %_Call_retval3531
_else3524:
  br label %_end3525
_end3525:
  %_bop3533 = lshr i64 %_bop3534, 1
  %_bop3534 = sub i64 %_id3535, %_id3536
  %_id3536 = load i64, i64* %_x3459
  %_id3535 = load i64, i64* %_y3460
  %_id3537 = load i64, i64* %_x3459
  %_Call_retval3538 = call i64 @binary_gcd(i64 %_bop3533, i64 %_id3537)
  ret i64 %_Call_retval3538
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3451 = alloca i64
  store i64 %argc, i64* %_argc3451
  %_argv3452 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3452
  %_x3453 = alloca i64
  %_y3454 = alloca i64
  store i64 21, i64* %_x3453
  store i64 15, i64* %_y3454
  %_id3455 = load i64, i64* %_x3453
  %_id3456 = load i64, i64* %_y3454
  %_Call_retval3457 = call i64 @binary_gcd(i64 %_id3455, i64 %_id3456)
  ret i64 %_Call_retval3457
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
