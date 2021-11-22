; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x746 = alloca i64
  store i64 %x, i64* %_x746
  %_acc747 = alloca i64
  store i64 1, i64* %_acc747
  br label %_start750
_start750:
  %_id749 = load i64*, i64** %_x746
  %_bop748 = icmp sgt i64 %_id749, 0
  br i1 %_bop748, label %_body751, label %_end752
_body751:
  %_id754 = load i64, i64* %_acc747
  %_id755 = load i64*, i64** %_x746
  %_bop753 = mul i64 %_id754, %_id755
  store i64 %_bop753, i64* %_acc747
  %_id757 = load i64*, i64** %_x746
  %_bop756 = sub i64 %_id757, 1
  store i64 %_bop756, i64* %_x746
  br label %_start750
_end752:
  %_id758 = load i64, i64* %_acc747
  ret i64 %_id758
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc741 = alloca i64
  store i64 %argc, i64* %_argc741
  %_argv742 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv742
  %_Call_retval744 = call i8* @string_of_int(i64 %_Call_retval743)
  %_Call_retval743 = call i64 @fact(i64 5)
  call void @print_string(i8* %_Call_retval744)
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
