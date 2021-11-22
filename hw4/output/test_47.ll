; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2174 = alloca i64
  store i64 %argc, i64* %_argc2174
  %_argv2175 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2175
  %_i2176 = alloca i64
  store i64 1, i64* %_i2176
  br label %_start2180
_start2180:
  %_id2178 = load i64, i64* %_i2176
  %_id2179 = load i64*, i64** %_argc2174
  %_bop2177 = icmp slt i64 %_id2178, %_id2179
  br i1 %_bop2177, label %_body2181, label %_end2182
_body2181:
  %_idx_tmp2186 = load i8*, i8** %_index_ptr2185
  %_index_ptr2185 = getelementptr { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_id2183, i32 0, i32 0, i32 1, i64 %_id2184
  %_id2184 = load i64, i64* %_i2176
  %_id2183 = load { i64, [0 x i8*] }**, { i64, [0 x i8*] }*** %_argv2175
  call void @print_string(i8* %_idx_tmp2186)
  %_id2189 = load i64, i64* %_i2176
  %_bop2188 = add i64 %_id2189, 1
  store i64 %_bop2188, i64* %_i2176
  br label %_start2180
_end2182:
  %_id2190 = load i64*, i64** %_argc2174
  ret i64 %_id2190
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
