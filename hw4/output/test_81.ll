; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i2179 = alloca i64
  %_argc2177 = alloca i64
  store i64 %argc, i64* %_argc2177
  %_argv2178 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2178
  store i64 1, i64* %_i2179
  br label %_start2183
_start2183:
  %_id2181 = load i64, i64* %_i2179
  %_id2182 = load i64, i64* %_argc2177
  %_bop2180 = icmp slt i64 %_id2181, %_id2182
  br i1 %_bop2180, label %_body2184, label %_end2185
_body2184:
  %_id2186 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2178
  %_id2187 = load i64, i64* %_i2179
  %_index_ptr2188 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id2186, i32 0, i32 1, i64 %_id2187
  %_idx_tmp2189 = load i8*, i8** %_index_ptr2188
  call void @print_string(i8* %_idx_tmp2189)
  %_id2192 = load i64, i64* %_i2179
  %_bop2191 = add i64 %_id2192, 1
  store i64 %_bop2191, i64* %_i2179
  br label %_start2183
_end2185:
  %_id2193 = load i64, i64* %_argc2177
  ret i64 %_id2193
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
