; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr12106 = alloca { i64, [0 x i64] }*
  %_str2114 = alloca i8*
  %_arr22117 = alloca { i64, [0 x i64] }*
  %_s2120 = alloca i64
  %_i2121 = alloca i64
  %_argc2104 = alloca i64
  store i64 %argc, i64* %_argc2104
  %_argv2105 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2105
  %_raw_array2107 = call i64* @oat_alloc_array(i64 5)
  %_array2108 = bitcast i64* %_raw_array2107 to { i64, [0 x i64] }*
  %_CArr_elem_42113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2108, i32 0, i32 1, i32 4
  store i64 115, i64* %_CArr_elem_42113
  %_CArr_elem_32112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2108, i32 0, i32 1, i32 3
  store i64 114, i64* %_CArr_elem_32112
  %_CArr_elem_22111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2108, i32 0, i32 1, i32 2
  store i64 113, i64* %_CArr_elem_22111
  %_CArr_elem_12110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2108, i32 0, i32 1, i32 1
  store i64 112, i64* %_CArr_elem_12110
  %_CArr_elem_02109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2108, i32 0, i32 1, i32 0
  store i64 111, i64* %_CArr_elem_02109
  store { i64, [0 x i64] }* %_array2108, { i64, [0 x i64] }** %_arr12106
  %_id2115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12106
  %_Call_retval2116 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2115)
  store i8* %_Call_retval2116, i8** %_str2114
  %_id2118 = load i8*, i8** %_str2114
  %_Call_retval2119 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2118)
  store { i64, [0 x i64] }* %_Call_retval2119, { i64, [0 x i64] }** %_arr22117
  store i64 0, i64* %_s2120
  store i64 0, i64* %_i2121
  br label %_start2124
_start2124:
  %_id2123 = load i64, i64* %_i2121
  %_bop2122 = icmp slt i64 %_id2123, 5
  br i1 %_bop2122, label %_body2125, label %_end2126
_body2125:
  %_id2128 = load i64, i64* %_s2120
  %_id2129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22117
  %_id2130 = load i64, i64* %_i2121
  %_index_ptr2131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2129, i32 0, i32 1, i64 %_id2130
  %_idx_tmp2132 = load i64, i64* %_index_ptr2131
  %_bop2127 = add i64 %_id2128, %_idx_tmp2132
  store i64 %_bop2127, i64* %_s2120
  %_id2134 = load i64, i64* %_i2121
  %_bop2133 = add i64 %_id2134, 1
  store i64 %_bop2133, i64* %_i2121
  br label %_start2124
_end2126:
  %_id2135 = load i64, i64* %_s2120
  call void @print_int(i64 %_id2135)
  %_id2137 = load i64, i64* %_s2120
  ret i64 %_id2137
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
