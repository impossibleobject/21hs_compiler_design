; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x276 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x276
  %_y277 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y277
  %_b278 = alloca i1
  store i1 %b, i1* %_b278
  %_id279 = load i1, i1* %_b278
  br i1 %_id279, label %_then280, label %_else281
_then280:
  %_id283 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x276
  ret { i64, [0 x i64] }* %_id283
_else281:
  %_id285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y277
  ret { i64, [0 x i64] }* %_id285
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc234 = alloca i64
  store i64 %argc, i64* %_argc234
  %_argv235 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv235
  %_x236 = alloca { i64, [0 x i64] }*
  %_i239 = alloca i64
  %_y252 = alloca { i64, [0 x i64] }*
  %_i255 = alloca i64
  %_raw_array237 = call i64* @oat_alloc_array(i64 3)
  %_array238 = bitcast i64* %_raw_array237 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array238, { i64, [0 x i64] }** %_x236
  store i64 0, i64* %_i239
  br label %_start242
_start242:
  %_id241 = load i64, i64* %_i239
  %_bop240 = icmp slt i64 %_id241, 3
  br i1 %_bop240, label %_body243, label %_end244
_body243:
  %_id245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x236
  %_id246 = load i64, i64* %_i239
  %_index_ptr247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id245, i32 0, i32 1, i64 %_id246
  %_id248 = load i64, i64* %_i239
  store i64 %_id248, i64* %_index_ptr247
  %_id251 = load i64, i64* %_i239
  %_bop250 = add i64 %_id251, 1
  store i64 %_bop250, i64* %_i239
  br label %_start242
_end244:
  %_raw_array253 = call i64* @oat_alloc_array(i64 3)
  %_array254 = bitcast i64* %_raw_array253 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array254, { i64, [0 x i64] }** %_y252
  store i64 0, i64* %_i255
  br label %_start258
_start258:
  %_id257 = load i64, i64* %_i255
  %_bop256 = icmp slt i64 %_id257, 3
  br i1 %_bop256, label %_body259, label %_end260
_body259:
  %_id261 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y252
  %_id262 = load i64, i64* %_i255
  %_index_ptr263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id261, i32 0, i32 1, i64 %_id262
  %_id265 = load i64, i64* %_i255
  %_bop264 = add i64 %_id265, 3
  store i64 %_bop264, i64* %_index_ptr263
  %_id268 = load i64, i64* %_i255
  %_bop267 = add i64 %_id268, 1
  store i64 %_bop267, i64* %_i255
  br label %_start258
_end260:
  %_id269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x236
  %_id270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y252
  %_Call_retval271 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id269, { i64, [0 x i64] }* %_id270, i1 1)
  %_index_ptr272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval271, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr272
  %_id273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x236
  %_index_ptr274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id273, i32 0, i32 1, i32 0
  %_275 = load i64, i64* %_index_ptr274
  ret i64 %_275
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
