; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_partial6331, i64 %_len6328, i64 %_insertee6325) {
  %_partial6332 = alloca { i64, [0 x i64] }*
  %_len6329 = alloca i64
  %_insertee6326 = alloca i64
  %_i6340 = alloca i64
  %_inserted6359 = alloca { i64, [0 x i64] }*
  %_i6361 = alloca i64
  %_not_yet_inserted6380 = alloca i1
  %_i6399 = alloca i64
  store { i64, [0 x i64] }* %_partial6331, { i64, [0 x i64] }** %_partial6332
  store i64 %_len6328, i64* %_len6329
  store i64 %_insertee6325, i64* %_insertee6326
  %_len6336 = load i64, i64* %_len6329
  %_bop6337 = add i64 %_len6336, 1
  %_raw_array6338 = call i64* @oat_alloc_array(i64 %_bop6337)
  %_array6339 = bitcast i64* %_raw_array6338 to { i64, [0 x i64] }*
  %_bnd_6335 = alloca i64
  store i64 %_bop6337, i64* %_bnd_6335
  %_ptr_6334 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6339, { i64, [0 x i64] }** %_ptr_6334
  store i64 0, i64* %_i6340
  br label %_cond6347
_body6346:
  %__ptr_63346348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ptr_6334
  %_i6349 = load i64, i64* %_i6340
  %_tmp6351 = bitcast { i64, [0 x i64] }* %__ptr_63346348 to i64*
  call void @oat_assert_array_length(i64* %_tmp6351, i64 %_i6349)
  %_index_ptr6352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %__ptr_63346348, i32 0, i32 1, i64 %_i6349
  store i64 0, i64* %_index_ptr6352
  %_i6354 = load i64, i64* %_i6340
  %_bop6355 = add i64 %_i6354, 1
  store i64 %_bop6355, i64* %_i6340
  br label %_cond6347
_body6368:
  %_inserted6370 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6359
  %_i6371 = load i64, i64* %_i6361
  %_tmp6373 = bitcast { i64, [0 x i64] }* %_inserted6370 to i64*
  call void @oat_assert_array_length(i64* %_tmp6373, i64 %_i6371)
  %_index_ptr6374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6370, i32 0, i32 1, i64 %_i6371
  store i64 -1, i64* %_index_ptr6374
  %_i6377 = load i64, i64* %_i6361
  %_bop6378 = add i64 %_i6377, 1
  store i64 %_bop6378, i64* %_i6361
  br label %_cond6369
_body6405:
  %_not_yet_inserted6407 = load i1, i1* %_not_yet_inserted6380
  br i1 %_not_yet_inserted6407, label %_then6467, label %_else6466
_cond6347:
  %_i6342 = load i64, i64* %_i6340
  %__bnd_63356343 = load i64, i64* %_bnd_6335
  %_bop6344 = icmp slt i64 %_i6342, %__bnd_63356343
  br i1 %_bop6344, label %_body6346, label %_post6345
_cond6369:
  %_i6363 = load i64, i64* %_i6361
  %_len6364 = load i64, i64* %_len6329
  %_bop6365 = add i64 %_len6364, 1
  %_bop6366 = icmp slt i64 %_i6363, %_bop6365
  br i1 %_bop6366, label %_body6368, label %_post6367
_cond6406:
  %_i6401 = load i64, i64* %_i6399
  %_len6402 = load i64, i64* %_len6329
  %_bop6403 = icmp slt i64 %_i6401, %_len6402
  br i1 %_bop6403, label %_body6405, label %_post6404
_else6397:
  br label %_merge6396
_else6450:
  %_inserted6437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6359
  %_i6438 = load i64, i64* %_i6399
  %_tmp6440 = bitcast { i64, [0 x i64] }* %_inserted6437 to i64*
  call void @oat_assert_array_length(i64* %_tmp6440, i64 %_i6438)
  %_index_ptr6441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6437, i32 0, i32 1, i64 %_i6438
  %_partial6442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6332
  %_i6443 = load i64, i64* %_i6399
  %_tmp6445 = bitcast { i64, [0 x i64] }* %_partial6442 to i64*
  call void @oat_assert_array_length(i64* %_tmp6445, i64 %_i6443)
  %_index_ptr6446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6442, i32 0, i32 1, i64 %_i6443
  %_index6447 = load i64, i64* %_index_ptr6446
  store i64 %_index6447, i64* %_index_ptr6441
  br label %_merge6449
_else6466:
  %_inserted6452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6359
  %_i6453 = load i64, i64* %_i6399
  %_bop6454 = add i64 %_i6453, 1
  %_tmp6456 = bitcast { i64, [0 x i64] }* %_inserted6452 to i64*
  call void @oat_assert_array_length(i64* %_tmp6456, i64 %_bop6454)
  %_index_ptr6457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6452, i32 0, i32 1, i64 %_bop6454
  %_partial6458 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6332
  %_i6459 = load i64, i64* %_i6399
  %_tmp6461 = bitcast { i64, [0 x i64] }* %_partial6458 to i64*
  call void @oat_assert_array_length(i64* %_tmp6461, i64 %_i6459)
  %_index_ptr6462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6458, i32 0, i32 1, i64 %_i6459
  %_index6463 = load i64, i64* %_index_ptr6462
  store i64 %_index6463, i64* %_index_ptr6457
  br label %_merge6465
_merge6396:
  store i64 0, i64* %_i6399
  br label %_cond6406
_merge6449:
  br label %_merge6465
_merge6465:
  %_i6468 = load i64, i64* %_i6399
  %_bop6469 = add i64 %_i6468, 1
  store i64 %_bop6469, i64* %_i6399
  br label %_cond6406
_post6345:
  store { i64, [0 x i64] }* %_array6339, { i64, [0 x i64] }** %_inserted6359
  store i64 0, i64* %_i6361
  br label %_cond6369
_post6367:
  store i1 1, i1* %_not_yet_inserted6380
  %_insertee6382 = load i64, i64* %_insertee6326
  %_partial6383 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6332
  %_tmp6385 = bitcast { i64, [0 x i64] }* %_partial6383 to i64*
  call void @oat_assert_array_length(i64* %_tmp6385, i64 0)
  %_index_ptr6386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6383, i32 0, i32 1, i32 0
  %_index6387 = load i64, i64* %_index_ptr6386
  %_bop6388 = icmp slt i64 %_insertee6382, %_index6387
  br i1 %_bop6388, label %_then6398, label %_else6397
_post6404:
  %_inserted6471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6359
  ret { i64, [0 x i64] }* %_inserted6471
_then6398:
  store i1 0, i1* %_not_yet_inserted6380
  %_inserted6390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6359
  %_tmp6392 = bitcast { i64, [0 x i64] }* %_inserted6390 to i64*
  call void @oat_assert_array_length(i64* %_tmp6392, i64 0)
  %_index_ptr6393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6390, i32 0, i32 1, i32 0
  %_insertee6394 = load i64, i64* %_insertee6326
  store i64 %_insertee6394, i64* %_index_ptr6393
  br label %_merge6396
_then6451:
  store i1 0, i1* %_not_yet_inserted6380
  %_inserted6417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6359
  %_i6418 = load i64, i64* %_i6399
  %_bop6419 = add i64 %_i6418, 1
  %_tmp6421 = bitcast { i64, [0 x i64] }* %_inserted6417 to i64*
  call void @oat_assert_array_length(i64* %_tmp6421, i64 %_bop6419)
  %_index_ptr6422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6417, i32 0, i32 1, i64 %_bop6419
  %_insertee6423 = load i64, i64* %_insertee6326
  store i64 %_insertee6423, i64* %_index_ptr6422
  %_inserted6425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted6359
  %_i6426 = load i64, i64* %_i6399
  %_tmp6428 = bitcast { i64, [0 x i64] }* %_inserted6425 to i64*
  call void @oat_assert_array_length(i64* %_tmp6428, i64 %_i6426)
  %_index_ptr6429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6425, i32 0, i32 1, i64 %_i6426
  %_partial6430 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6332
  %_i6431 = load i64, i64* %_i6399
  %_tmp6433 = bitcast { i64, [0 x i64] }* %_partial6430 to i64*
  call void @oat_assert_array_length(i64* %_tmp6433, i64 %_i6431)
  %_index_ptr6434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6430, i32 0, i32 1, i64 %_i6431
  %_index6435 = load i64, i64* %_index_ptr6434
  store i64 %_index6435, i64* %_index_ptr6429
  br label %_merge6449
_then6467:
  %_insertee6408 = load i64, i64* %_insertee6326
  %_partial6409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial6332
  %_i6410 = load i64, i64* %_i6399
  %_tmp6412 = bitcast { i64, [0 x i64] }* %_partial6409 to i64*
  call void @oat_assert_array_length(i64* %_tmp6412, i64 %_i6410)
  %_index_ptr6413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6409, i32 0, i32 1, i64 %_i6410
  %_index6414 = load i64, i64* %_index_ptr6413
  %_bop6415 = icmp sgt i64 %_insertee6408, %_index6414
  br i1 %_bop6415, label %_then6451, label %_else6450
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_unsorted6284, i64 %_len6281) {
  %_unsorted6285 = alloca { i64, [0 x i64] }*
  %_len6282 = alloca i64
  %_out6291 = alloca { i64, [0 x i64] }*
  %_i6303 = alloca i64
  store { i64, [0 x i64] }* %_unsorted6284, { i64, [0 x i64] }** %_unsorted6285
  store i64 %_len6281, i64* %_len6282
  %_raw_array6287 = call i64* @oat_alloc_array(i64 1)
  %_array6288 = bitcast i64* %_raw_array6287 to { i64, [0 x i64] }*
  %_ind6289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6288, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind6289
  store { i64, [0 x i64] }* %_array6288, { i64, [0 x i64] }** %_out6291
  %_out6293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6291
  %_tmp6295 = bitcast { i64, [0 x i64] }* %_out6293 to i64*
  call void @oat_assert_array_length(i64* %_tmp6295, i64 0)
  %_index_ptr6296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out6293, i32 0, i32 1, i32 0
  %_unsorted6297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6285
  %_tmp6299 = bitcast { i64, [0 x i64] }* %_unsorted6297 to i64*
  call void @oat_assert_array_length(i64* %_tmp6299, i64 0)
  %_index_ptr6300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6297, i32 0, i32 1, i32 0
  %_index6301 = load i64, i64* %_index_ptr6300
  store i64 %_index6301, i64* %_index_ptr6296
  store i64 1, i64* %_i6303
  br label %_cond6310
_body6309:
  %_unsorted6311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted6285
  %_i6312 = load i64, i64* %_i6303
  %_tmp6314 = bitcast { i64, [0 x i64] }* %_unsorted6311 to i64*
  call void @oat_assert_array_length(i64* %_tmp6314, i64 %_i6312)
  %_index_ptr6315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted6311, i32 0, i32 1, i64 %_i6312
  %_index6316 = load i64, i64* %_index_ptr6315
  %_i6317 = load i64, i64* %_i6303
  %_out6318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6291
  %_result6319 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out6318, i64 %_i6317, i64 %_index6316)
  store { i64, [0 x i64] }* %_result6319, { i64, [0 x i64] }** %_out6291
  %_i6321 = load i64, i64* %_i6303
  %_bop6322 = add i64 %_i6321, 1
  store i64 %_bop6322, i64* %_i6303
  br label %_cond6310
_cond6310:
  %_i6305 = load i64, i64* %_i6303
  %_len6306 = load i64, i64* %_len6282
  %_bop6307 = icmp slt i64 %_i6305, %_len6306
  br i1 %_bop6307, label %_body6309, label %_post6308
_post6308:
  %_out6324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out6291
  ret { i64, [0 x i64] }* %_out6324
}

define i64 @program(i64 %_argc6253, { i64, [0 x i8*] }* %_argv6250) {
  %_array6270 = alloca { i64, [0 x i64] }*
  %_result6274 = alloca { i64, [0 x i64] }*
  %_raw_array6256 = call i64* @oat_alloc_array(i64 6)
  %_array6257 = bitcast i64* %_raw_array6256 to { i64, [0 x i64] }*
  %_ind6258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6257, i32 0, i32 1, i32 0
  store i64 13, i64* %_ind6258
  %_ind6260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6257, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind6260
  %_ind6262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6257, i32 0, i32 1, i32 2
  store i64 32, i64* %_ind6262
  %_ind6264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6257, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind6264
  %_ind6266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6257, i32 0, i32 1, i32 4
  store i64 2, i64* %_ind6266
  %_ind6268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6257, i32 0, i32 1, i32 5
  store i64 6, i64* %_ind6268
  store { i64, [0 x i64] }* %_array6257, { i64, [0 x i64] }** %_array6270
  %_array6272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6270
  %_result6273 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array6272, i64 6)
  store { i64, [0 x i64] }* %_result6273, { i64, [0 x i64] }** %_result6274
  %_result6276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result6274
  %_tmp6278 = bitcast { i64, [0 x i64] }* %_result6276 to i64*
  call void @oat_assert_array_length(i64* %_tmp6278, i64 5)
  %_index_ptr6279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result6276, i32 0, i32 1, i32 5
  %_index6280 = load i64, i64* %_index_ptr6279
  ret i64 %_index6280
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
