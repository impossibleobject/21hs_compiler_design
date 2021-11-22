; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2208 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2204 = alloca i64
  store i64 %argc, i64* %_argc2204
  %_argv2205 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2205
  %_arr2206 = alloca { i64, [0 x i64] }*
  %_sum2210 = alloca i64
  %_i2211 = alloca i64
  %_i2223 = alloca i64
  %_cstr_loc2207 = getelementptr [11 x i8], [11 x i8]* @_cstr_glb2208, i32 0, i32 0
  %_Call_retval2209 = call { i64, [0 x i64] }* @array_of_string(i8* %_cstr_loc2207)
  store { i64, [0 x i64] }* %_Call_retval2209, { i64, [0 x i64] }** %_arr2206
  store i64 0, i64* %_sum2210
  store i64 0, i64* %_i2211
  br label %_start2214
_start2214:
  %_id2213 = load i64, i64* %_i2211
  %_bop2212 = icmp slt i64 %_id2213, 10
  br i1 %_bop2212, label %_body2215, label %_end2216
_body2215:
  %_id2217 = load i64, i64* %_i2211
  %_id2218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2206
  %_id2219 = load i64, i64* %_i2211
  %_index_ptr2220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2218, i32 0, i32 1, i64 %_id2219
  store i64 %_id2217, i64* %_index_ptr2220
  %_id2222 = load i64, i64* %_i2211
  %_bop2221 = add i64 %_id2222, 1
  store i64 %_bop2221, i64* %_i2211
  br label %_start2214
_end2216:
  store i64 0, i64* %_i2223
  br label %_start2226
_start2226:
  %_id2225 = load i64, i64* %_i2223
  %_bop2224 = icmp slt i64 %_id2225, 10
  br i1 %_bop2224, label %_body2227, label %_end2228
_body2227:
  %_id2230 = load i64, i64* %_sum2210
  %_id2231 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2206
  %_id2232 = load i64, i64* %_i2223
  %_index_ptr2233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2231, i32 0, i32 1, i64 %_id2232
  %_idx_tmp2234 = load i64, i64* %_index_ptr2233
  %_bop2229 = add i64 %_id2230, %_idx_tmp2234
  store i64 %_bop2229, i64* %_sum2210
  %_id2236 = load i64, i64* %_i2223
  %_bop2235 = add i64 %_id2236, 1
  store i64 %_bop2235, i64* %_i2223
  br label %_start2226
_end2228:
  %_id2237 = load i64, i64* %_sum2210
  ret i64 %_id2237
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
