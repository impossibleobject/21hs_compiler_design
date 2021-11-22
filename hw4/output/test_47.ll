; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2187 = alloca i64
  store i64 %argc, i64* %_argc2187
  %_argv2188 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2188
  %_i2189 = alloca i64
  store i64 1, i64* %_i2189
  br label %_start2193
_start2193:
  %_id2191 = load i64, i64* %_i2189
  %_id2192 = load i64*, i64** %_argc2187
  %_bop2190 = icmp slt i64 %_id2191, %_id2192
  br i1 %_bop2190, label %_body2194, label %_end2195
_body2194:
  %_idx_tmp2199 = load i8*, i8** %_index_ptr2198
  %_index_ptr2198 = getelementptr { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_id2196, i32 0, i32 0, i32 1, i64 %_id2197
  %_id2197 = load i64, i64* %_i2189
  %_id2196 = load { i64, [0 x i8*] }**, { i64, [0 x i8*] }*** %_argv2188
  call void @print_string(i8* %_idx_tmp2199)
  %_id2202 = load i64, i64* %_i2189
  %_bop2201 = add i64 %_id2202, 1
  store i64 %_bop2201, i64* %_i2189
  br label %_start2193
_end2195:
  %_id2203 = load i64*, i64** %_argc2187
  ret i64 %_id2203
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
