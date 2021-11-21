; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2091 = alloca i64
  store i64 %argc, i64* %_argc2091
  %_argv2092 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2092
  %_arr2093 = alloca { i64, [0 x i64] }*
  %_s2096 = alloca i64
  %_i2097 = alloca i64
  store { i64, [0 x i64] }* %_Call_retval2095, { i64, [0 x i64] }** %_arr2093
  %_id2094 = getelementptr [6 x i8], [6 x i8]* @str, i32 0, i32 0
  %_Call_retval2095 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2094)
  store i64 0, i64* %_s2096
  store i64 0, i64* %_i2097
  br label %_start2100
_start2100:
  %_id2099 = load i64, i64* %_i2097
  %_bop2098 = icmp slt i64 %_id2099, 5
  br i1 %_bop2098, label %_body2101, label %_end2102
_body2101:
  %_id2105 = load i64, i64* %_s2096
  %_id2106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2093
  %_id2107 = load i64, i64* %_i2097
  %_index_ptr2108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2106, i32 0, i32 1, i64 %_id2107
  %_2109 = load i64, i64* %_index_ptr2108
  %_bop2104 = add i64 %_id2105, %_2109
  store i64 %_bop2104, i64* %_s2096
  %_id2112 = load i64, i64* %_i2097
  %_bop2111 = add i64 %_id2112, 1
  store i64 %_bop2111, i64* %_i2097
  br label %_start2100
_end2102:
  %_id2113 = load i64, i64* %_s2096
  call void @print_int(i64 %_id2113)
  %_id2115 = load i64, i64* %_s2096
  ret i64 %_id2115
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
