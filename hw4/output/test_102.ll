; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %t = alloca i64
  %_a3939 = alloca i64
  store i64 %a, i64* %_a3939
  %_b3940 = alloca i64
  store i64 %b, i64* %_b3940
  br label %_start3943
_start3943:
  %_id3942 = load i64, i64* %_b3940
  %_bop3941 = icmp ne i64 %_id3942, 0
  br i1 %_bop3941, label %_body3944, label %_end3945
_body3944:
  %_id3946 = load i64, i64* %_b3940
  store i64 %_id3946, i64* %t
  %_id3947 = load i64, i64* %_a3939
  %_id3948 = load i64, i64* %_b3940
  %_Call_retval3949 = call i64 @mod(i64 %_id3947, i64 %_id3948)
  store i64 %_Call_retval3949, i64* %_b3940
  %_id3950 = load i64, i64* %t
  store i64 %_id3950, i64* %_a3939
  br label %_start3943
_end3945:
  %_id3951 = load i64, i64* %_a3939
  ret i64 %_id3951
}

define i64 @mod(i64 %a, i64 %b) {
  %t = alloca i64
  %_a3925 = alloca i64
  store i64 %a, i64* %_a3925
  %_b3926 = alloca i64
  store i64 %b, i64* %_b3926
  %_id3927 = load i64, i64* %_a3925
  store i64 %_id3927, i64* %t
  br label %_start3932
_start3932:
  %_id3930 = load i64, i64* %t
  %_id3931 = load i64, i64* %_b3926
  %_bop3929 = sub i64 %_id3930, %_id3931
  %_bop3928 = icmp sge i64 %_bop3929, 0
  br i1 %_bop3928, label %_body3933, label %_end3934
_body3933:
  %_id3936 = load i64, i64* %t
  %_id3937 = load i64, i64* %_b3926
  %_bop3935 = sub i64 %_id3936, %_id3937
  store i64 %_bop3935, i64* %t
  br label %_start3932
_end3934:
  %_id3938 = load i64, i64* %t
  ret i64 %_id3938
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %a = alloca i64
  %b = alloca i64
  %_argc3920 = alloca i64
  store i64 %argc, i64* %_argc3920
  %_argv3921 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3921
  store i64 64, i64* %a
  store i64 48, i64* %b
  %_id3922 = load i64, i64* %a
  %_id3923 = load i64, i64* %b
  %_Call_retval3924 = call i64 @gcd(i64 %_id3922, i64 %_id3923)
  ret i64 %_Call_retval3924
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
