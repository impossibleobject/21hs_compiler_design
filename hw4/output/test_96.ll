; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n3470 = alloca i64
  store i64 %n, i64* %_n3470
  %_id3472 = load i64, i64* %_n3470
  %_bop3471 = icmp eq i64 %_id3472, 0
  br i1 %_bop3471, label %_then3473, label %_else3474
_then3473:
  ret i64 0
_else3474:
  br label %_end3475
_end3475:
  %_id3477 = load i64, i64* %_n3470
  %_bop3476 = icmp eq i64 %_id3477, 1
  br i1 %_bop3476, label %_then3478, label %_else3479
_then3478:
  ret i64 1
_else3479:
  br label %_end3480
_end3480:
  %_bop3482 = sub i64 %_id3483, 1
  %_id3483 = load i64, i64* %_n3470
  %_Call_retval3484 = call i64 @fibR(i64 %_bop3482)
  %_bop3485 = sub i64 %_id3486, 2
  %_id3486 = load i64, i64* %_n3470
  %_Call_retval3487 = call i64 @fibR(i64 %_bop3485)
  %_bop3481 = add i64 %_Call_retval3484, %_Call_retval3487
  ret i64 %_bop3481
}

define i64 @fibI(i64 %n) {
  %a = alloca i64
  %b = alloca i64
  %old = alloca i64
  %_n3441 = alloca i64
  store i64 %n, i64* %_n3441
  store i64 0, i64* %a
  store i64 1, i64* %b
  %_id3443 = load i64, i64* %_n3441
  %_bop3442 = icmp eq i64 %_id3443, 0
  br i1 %_bop3442, label %_then3444, label %_else3445
_then3444:
  %_id3447 = load i64, i64* %a
  ret i64 %_id3447
_else3445:
  br label %_end3446
_end3446:
  %_id3449 = load i64, i64* %_n3441
  %_bop3448 = icmp eq i64 %_id3449, 1
  br i1 %_bop3448, label %_then3450, label %_else3451
_then3450:
  %_id3453 = load i64, i64* %b
  ret i64 %_id3453
_else3451:
  br label %_end3452
_end3452:
  br label %_start3457
_start3457:
  %_id3456 = load i64, i64* %_n3441
  %_bop3455 = sub i64 %_id3456, 2
  %_bop3454 = icmp sgt i64 %_bop3455, 0
  br i1 %_bop3454, label %_body3458, label %_end3459
_body3458:
  %_id3460 = load i64, i64* %b
  store i64 %_id3460, i64* %old
  %_id3462 = load i64, i64* %b
  %_id3463 = load i64, i64* %a
  %_bop3461 = add i64 %_id3462, %_id3463
  store i64 %_bop3461, i64* %b
  %_id3464 = load i64, i64* %old
  store i64 %_id3464, i64* %a
  %_id3466 = load i64, i64* %_n3441
  %_bop3465 = sub i64 %_id3466, 1
  store i64 %_bop3465, i64* %_n3441
  br label %_start3457
_end3459:
  %_id3468 = load i64, i64* %a
  %_id3469 = load i64, i64* %b
  %_bop3467 = add i64 %_id3468, %_id3469
  ret i64 %_bop3467
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %val = alloca i64
  %_argc3430 = alloca i64
  store i64 %argc, i64* %_argc3430
  %_argv3431 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3431
  store i64 1, i64* %val
  %_Call_retval3434 = call i64 @fibR(i64 12)
  %_bop3433 = icmp eq i64 %_Call_retval3434, 144
  %_Call_retval3436 = call i64 @fibI(i64 12)
  %_bop3435 = icmp eq i64 %_Call_retval3436, 144
  %_bop3432 = and i1 %_bop3433, %_bop3435
  br i1 %_bop3432, label %_then3437, label %_else3438
_then3437:
  store i64 0, i64* %val
  br label %_end3439
_else3438:
  br label %_end3439
_end3439:
  %_id3440 = load i64, i64* %val
  ret i64 %_id3440
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
