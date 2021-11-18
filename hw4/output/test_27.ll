; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x558 = alloca i64
  store i64 %x, i64* %_x558
  %_acc559 = alloca i64
  store i64 1, i64* %_acc559
  br label %_start565
_start565:
  %_563 = load i64, i64* %_x558
  %_561 = icmp sgt i64 %_563, 0
  br i1 %_561, label %_body566, label %_end567
_body566:
  %_572 = load i64, i64* %_acc559
  %_574 = load i64, i64* %_x558
  %_570 = mul i64 %_572, %_574
  store i64 %_570, i64* %_acc559
  %_579 = load i64, i64* %_x558
  %_577 = sub i64 %_579, 1
  store i64 %_577, i64* %_x558
  br label %_start565
_end567:
  %_582 = load i64, i64* %_acc559
  ret i64 %_582
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc547 = alloca i64
  store i64 %argc, i64* %_argc547
  %_argv548 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv548
  %_retval554 = call i8* @string_of_int(i64 %_retval553)
  %_retval553 = call i64 @fact(i64 5)
  call void @print_string(i8* %_retval554)
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
