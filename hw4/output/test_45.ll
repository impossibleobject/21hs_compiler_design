; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2121 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2117 = alloca i64
  store i64 %argc, i64* %_argc2117
  %_argv2118 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2118
  %_str2119 = alloca i8*
  %_arr2122 = alloca { i64, [0 x i64] }*
  %_s2125 = alloca i64
  %_i2126 = alloca i64
  store i8* %_cstr_loc2120, i8** %_str2119
  %_cstr_loc2120 = getelementptr [6 x i8], [6 x i8]* @_cstr_glb2121, i32 0, i32 0
  store { i64, [0 x i64] }* %_Call_retval2124, { i64, [0 x i64] }** %_arr2122
  %_id2123 = load i8*, i8** %_str2119
  %_Call_retval2124 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2123)
  store i64 0, i64* %_s2125
  store i64 0, i64* %_i2126
  br label %_start2129
_start2129:
  %_id2128 = load i64, i64* %_i2126
  %_bop2127 = icmp slt i64 %_id2128, 5
  br i1 %_bop2127, label %_body2130, label %_end2131
_body2130:
  %_id2134 = load i64, i64* %_s2125
  %_id2135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2122
  %_id2136 = load i64, i64* %_i2126
  %_index_ptr2137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2135, i32 0, i32 1, i64 %_id2136
  %_2138 = load i64, i64* %_index_ptr2137
  %_bop2133 = add i64 %_id2134, %_2138
  store i64 %_bop2133, i64* %_s2125
  %_id2141 = load i64, i64* %_i2126
  %_bop2140 = add i64 %_id2141, 1
  store i64 %_bop2140, i64* %_i2126
  br label %_start2129
_end2131:
  %_id2142 = load i64, i64* %_s2125
  ret i64 %_id2142
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
