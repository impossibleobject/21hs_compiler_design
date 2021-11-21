; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2306 = alloca i8*
  store i8* %str, i8** %_str2306
  %_start2307 = alloca i64
  store i64 %start, i64* %_start2307
  %_len2308 = alloca i64
  store i64 %len, i64* %_len2308
  %_arr2309 = alloca { i64, [0 x i64] }*
  %_r2312 = alloca { i64, [0 x i64] }*
  %_i2316 = alloca i64
  store { i64, [0 x i64] }* %_Call_retval2311, { i64, [0 x i64] }** %_arr2309
  %_id2310 = load i8*, i8** %_str2306
  %_Call_retval2311 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2310)
  store { i64, [0 x i64] }* %_array2315, { i64, [0 x i64] }** %_r2312
  %_id2313 = load i64, i64* %_len2308
  %_raw_array2314 = call i64* @oat_alloc_array(i64 %_id2313)
  %_array2315 = bitcast i64* %_raw_array2314 to { i64, [0 x i64] }*
  store i64 0, i64* %_i2316
  br label %_start2320
_start2320:
  %_id2318 = load i64, i64* %_i2316
  %_id2319 = load i64, i64* %_len2308
  %_bop2317 = icmp slt i64 %_id2318, %_id2319
  br i1 %_bop2317, label %_body2321, label %_end2322
_body2321:
  %_id2323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2312
  %_id2324 = load i64, i64* %_i2316
  %_index_ptr2325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2323, i32 0, i32 1, i64 %_id2324
  %_id2326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2309
  %_id2328 = load i64, i64* %_i2316
  %_id2329 = load i64, i64* %_start2307
  %_bop2327 = add i64 %_id2328, %_id2329
  %_index_ptr2330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2326, i32 0, i32 1, i64 %_bop2327
  store i64* %_index_ptr2330, i64** %_index_ptr2325
  %_id2333 = load i64, i64* %_i2316
  %_bop2332 = add i64 %_id2333, 1
  store i64 %_bop2332, i64* %_i2316
  br label %_start2320
_end2322:
  %_id2334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2312
  %_Call_retval2335 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2334)
  %_2336 = load i8, i8* %_Call_retval2335
  ret i8* %_2336
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2299 = alloca i64
  store i64 %argc, i64* %_argc2299
  %_argv2300 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2300
  %_Call_retval2303 = call i8* @sub(i8** %_index_ptr2302, i64 3, i64 5)
  %_id2301 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2300
  %_index_ptr2302 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id2301, i32 0, i32 1, i32 1
  call void @print_string(i8* %_Call_retval2303)
  ret i64 0
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
