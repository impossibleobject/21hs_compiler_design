; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2195 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2191 = alloca i64
  store i64 %argc, i64* %_argc2191
  %_argv2192 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2192
  %_arr2193 = alloca { i64, [0 x i64] }*
  %_sum2197 = alloca i64
  %_i2198 = alloca i64
  %_i2210 = alloca i64
  %_cstr_loc2194 = getelementptr [11 x i8], [11 x i8]* @_cstr_glb2195, i32 0, i32 0
  %_Call_retval2196 = call { i64, [0 x i64] }* @array_of_string(i8* %_cstr_loc2194)
  store { i64, [0 x i64] }* %_Call_retval2196, { i64, [0 x i64] }** %_arr2193
  store i64 0, i64* %_sum2197
  store i64 0, i64* %_i2198
  br label %_start2201
_start2201:
  %_id2200 = load i64, i64* %_i2198
  %_bop2199 = icmp slt i64 %_id2200, 10
  br i1 %_bop2199, label %_body2202, label %_end2203
_body2202:
  %_id2204 = load i64, i64* %_i2198
  %_id2205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2193
  %_id2206 = load i64, i64* %_i2198
  %_index_ptr2207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2205, i32 0, i32 1, i64 %_id2206
  store i64 %_id2204, i64* %_index_ptr2207
  %_id2209 = load i64, i64* %_i2198
  %_bop2208 = add i64 %_id2209, 1
  store i64 %_bop2208, i64* %_i2198
  br label %_start2201
_end2203:
  store i64 0, i64* %_i2210
  br label %_start2213
_start2213:
  %_id2212 = load i64, i64* %_i2210
  %_bop2211 = icmp slt i64 %_id2212, 10
  br i1 %_bop2211, label %_body2214, label %_end2215
_body2214:
  %_id2217 = load i64, i64* %_sum2197
  %_id2218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2193
  %_id2219 = load i64, i64* %_i2210
  %_index_ptr2220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2218, i32 0, i32 1, i64 %_id2219
  %_idx_tmp2221 = load i64, i64* %_index_ptr2220
  %_bop2216 = add i64 %_id2217, %_idx_tmp2221
  store i64 %_bop2216, i64* %_sum2197
  %_id2223 = load i64, i64* %_i2210
  %_bop2222 = add i64 %_id2223, 1
  store i64 %_bop2222, i64* %_i2210
  br label %_start2213
_end2215:
  %_id2224 = load i64, i64* %_sum2197
  ret i64 %_id2224
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
