; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc727 = alloca i64
  store i64 %argc, i64* %_argc727
  %_argv728 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv728
  %_i729 = alloca i64
  %_j731 = alloca i64
  store i64 9, i64* %_i729
  store i64 %_bop733, i64* %_j731
  %_id735 = load i64, i64* %_i729
  %_id737 = load i64, i64* %_i729
  %_bop733 = add i64 %_id735, %_id737
  %_id749 = load i64, i64* %_i729
  %_id753 = load i64, i64* %_i729
  %_id755 = load i64, i64* %_i729
  %_bop751 = mul i64 %_id753, %_id755
  %_bop747 = add i64 %_id749, %_bop751
  %_id757 = load i64, i64* %_j731
  %_bop745 = sub i64 %_bop747, %_id757
  %_bop743 = lshr i64 %_bop745, 2
  %_bop741 = shl i64 %_bop743, 2
  %_bop739 = ashr i64 %_bop741, 2
  ret i64 %_bop739
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
