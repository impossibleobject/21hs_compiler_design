; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x759 = alloca i64
  store i64 %x, i64* %_x759
  %_acc760 = alloca i64
  store i64 1, i64* %_acc760
  br label %_start763
_start763:
  %_id762 = load i64, i64* %_x759
  %_bop761 = icmp sgt i64 %_id762, 0
  br i1 %_bop761, label %_body764, label %_end765
_body764:
  %_id768 = load i64, i64* %_acc760
  %_id769 = load i64, i64* %_x759
  %_bop767 = mul i64 %_id768, %_id769
  store i64 %_bop767, i64* %_acc760
  %_id772 = load i64, i64* %_x759
  %_bop771 = sub i64 %_id772, 1
  store i64 %_bop771, i64* %_x759
  br label %_start763
_end765:
  %_id773 = load i64, i64* %_acc760
  ret i64 %_id773
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc753 = alloca i64
  store i64 %argc, i64* %_argc753
  %_argv754 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv754
  %_Call_retval756 = call i8* @string_of_int(i64 %_Call_retval755)
  %_Call_retval755 = call i64 @fact(i64 5)
  call void @print_string(i8* %_Call_retval756)
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
