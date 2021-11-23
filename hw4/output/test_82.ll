; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2198 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr2196 = alloca { i64, [0 x i64] }*
  %_sum2200 = alloca i64
  %_i2201 = alloca i64
  %_i2213 = alloca i64
  %_argc2194 = alloca i64
  store i64 %argc, i64* %_argc2194
  %_argv2195 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2195
  %_cstr_loc2197 = getelementptr [11 x i8], [11 x i8]* @_cstr_glb2198, i32 0, i32 0
  %_Call_retval2199 = call { i64, [0 x i64] }* @array_of_string(i8* %_cstr_loc2197)
  store { i64, [0 x i64] }* %_Call_retval2199, { i64, [0 x i64] }** %_arr2196
  store i64 0, i64* %_sum2200
  store i64 0, i64* %_i2201
  br label %_start2204
_start2204:
  %_id2203 = load i64, i64* %_i2201
  %_bop2202 = icmp slt i64 %_id2203, 10
  br i1 %_bop2202, label %_body2205, label %_end2206
_body2205:
  %_id2207 = load i64, i64* %_i2201
  %_id2208 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2196
  %_id2209 = load i64, i64* %_i2201
  %_index_ptr2210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2208, i32 0, i32 1, i64 %_id2209
  store i64 %_id2207, i64* %_index_ptr2210
  %_id2212 = load i64, i64* %_i2201
  %_bop2211 = add i64 %_id2212, 1
  store i64 %_bop2211, i64* %_i2201
  br label %_start2204
_end2206:
  store i64 0, i64* %_i2213
  br label %_start2216
_start2216:
  %_id2215 = load i64, i64* %_i2213
  %_bop2214 = icmp slt i64 %_id2215, 10
  br i1 %_bop2214, label %_body2217, label %_end2218
_body2217:
  %_id2220 = load i64, i64* %_sum2200
  %_id2221 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2196
  %_id2222 = load i64, i64* %_i2213
  %_index_ptr2223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2221, i32 0, i32 1, i64 %_id2222
  %_idx_tmp2224 = load i64, i64* %_index_ptr2223
  %_bop2219 = add i64 %_id2220, %_idx_tmp2224
  store i64 %_bop2219, i64* %_sum2200
  %_id2226 = load i64, i64* %_i2213
  %_bop2225 = add i64 %_id2226, 1
  store i64 %_bop2225, i64* %_i2213
  br label %_start2216
_end2218:
  %_id2227 = load i64, i64* %_sum2200
  ret i64 %_id2227
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
