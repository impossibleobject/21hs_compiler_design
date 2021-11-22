; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x827 = alloca i64
  store i64 %x, i64* %_x827
  %_y828 = alloca i64
  store i64 %y, i64* %_y828
  %_r829 = alloca i64
  store i64 0, i64* %_r829
  %_id831 = load i64*, i64** %_x827
  %_bop830 = icmp sge i64 %_id831, 1
  br i1 %_bop830, label %_then832, label %_else833
_then832:
  %_bop836 = sub i64 %_id837, 1
  %_id837 = load i64*, i64** %_x827
  %_id838 = load i64*, i64** %_y828
  %_Call_retval839 = call i64 @f(i64 %_bop836, i64* %_id838)
  %_bop835 = add i64 1, %_Call_retval839
  store i64 %_bop835, i64* %_r829
  br label %_end834
_else833:
  %_id841 = load i64*, i64** %_x827
  %_id842 = load i64*, i64** %_y828
  %_bop840 = add i64 %_id841, %_id842
  store i64 %_bop840, i64* %_r829
  br label %_end834
_end834:
  %_id843 = load i64, i64* %_r829
  ret i64 %_id843
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc818 = alloca i64
  store i64 %argc, i64* %_argc818
  %_argv819 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv819
  %_x820 = alloca i64
  %_y821 = alloca i64
  store i64 3, i64* %_x820
  store i64 3, i64* %_y821
  %_id823 = load i64, i64* %_x820
  %_id824 = load i64, i64* %_y821
  %_Call_retval825 = call i64 @f(i64 %_id823, i64 %_id824)
  %_id826 = load i64, i64* 0
  %_bop822 = add i64 %_Call_retval825, %_id826
  ret i64 %_bop822
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
