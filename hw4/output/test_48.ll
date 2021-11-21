; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb2246 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2242 = alloca i64
  store i64 %argc, i64* %_argc2242
  %_argv2243 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2243
  %_arr2244 = alloca { i64, [0 x i64] }*
  %_sum2248 = alloca i64
  %_i2249 = alloca i64
  %_i2262 = alloca i64
  store { i64, [0 x i64] }* %_Call_retval2247, { i64, [0 x i64] }** %_arr2244
  %_cstr_loc2245 = getelementptr [11 x i8], [11 x i8]* @_cstr_glb2246, i32 0, i32 0
  %_Call_retval2247 = call { i64, [0 x i64] }* @array_of_string(i8* %_cstr_loc2245)
  store i64 0, i64* %_sum2248
  store i64 0, i64* %_i2249
  br label %_start2252
_start2252:
  %_id2251 = load i64, i64* %_i2249
  %_bop2250 = icmp slt i64 %_id2251, 10
  br i1 %_bop2250, label %_body2253, label %_end2254
_body2253:
  %_id2255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2244
  %_id2256 = load i64, i64* %_i2249
  %_index_ptr2257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2255, i32 0, i32 1, i64 %_id2256
  %_id2258 = load i64, i64* %_i2249
  store i64 %_id2258, i64* %_index_ptr2257
  %_id2261 = load i64, i64* %_i2249
  %_bop2260 = add i64 %_id2261, 1
  store i64 %_bop2260, i64* %_i2249
  br label %_start2252
_end2254:
  store i64 0, i64* %_i2262
  br label %_start2265
_start2265:
  %_id2264 = load i64, i64* %_i2262
  %_bop2263 = icmp slt i64 %_id2264, 10
  br i1 %_bop2263, label %_body2266, label %_end2267
_body2266:
  %_id2270 = load i64, i64* %_sum2248
  %_id2271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2244
  %_id2272 = load i64, i64* %_i2262
  %_index_ptr2273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2271, i32 0, i32 1, i64 %_id2272
  %_2274 = load i64, i64* %_index_ptr2273
  %_bop2269 = add i64 %_id2270, %_2274
  store i64 %_bop2269, i64* %_sum2248
  %_id2277 = load i64, i64* %_i2262
  %_bop2276 = add i64 %_id2277, 1
  store i64 %_bop2276, i64* %_i2262
  br label %_start2265
_end2267:
  %_id2278 = load i64, i64* %_sum2248
  ret i64 %_id2278
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
