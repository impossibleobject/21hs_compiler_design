; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a901 = alloca i64
  store i64 %a, i64* %_a901
  %_b902 = alloca i64
  store i64 %b, i64* %_b902
  %_t910 = alloca i64
  store i64 %_b902, i64* %_t910
  br label %_start907
_start907:
  %_903 = icmp ne i64 %_b902, 0
  br i1 %_903, label %_body908, label %_end909
_body908:
  %_917 = load i64 (i64, i64), i64 (i64, i64)* @mod
  % = call i64 (i64, i64) %_917(i64 %_a901, i64 %_b902)
  store i64 %_917, i64* %_b902
  %_925 = load i64, i64* %_t910
  store i64 %_925, i64* %_a901
  br label %_start907
_end909:
  ret i64 %_a901
}

define i64 @mod(i64 %a, i64 %b) {
  %_a877 = alloca i64
  store i64 %a, i64* %_a877
  %_b878 = alloca i64
  store i64 %b, i64* %_b878
  %_t879 = alloca i64
  store i64 %_a877, i64* %_t879
  br label %_start889
_start889:
  %_885 = load i64, i64* %_t879
  %_883 = sub i64 %_885, %_b878
  %_882 = icmp sge i64 %_883, 0
  br i1 %_882, label %_body890, label %_end891
_body890:
  %_896 = load i64, i64* %_t879
  %_894 = sub i64 %_896, %_b878
  store i64 %_894, i64* %_t879
  br label %_start889
_end891:
  %_900 = load i64, i64* %_t879
  ret i64 %_900
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc864 = alloca i64
  store i64 %argc, i64* %_argc864
  %_argv865 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv865
  %_a866 = alloca i64
  store i64 64, i64* %_a866
  %_b868 = alloca i64
  store i64 48, i64* %_b868
  %_872 = load i64 (i64, i64), i64 (i64, i64)* @gcd
  %_874 = load i64, i64* %_a866
  %_876 = load i64, i64* %_b868
  % = call i64 (i64, i64) %_872(i64 %_874, i64 %_876)
  ret i64 %_872
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
