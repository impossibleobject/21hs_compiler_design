; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x261 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x261
  %_y262 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y262
  %_b263 = alloca i1
  store i1 %b, i1* %_b263
  %_id264 = load i1, i1* %_b263
  br i1 %_id264, label %_then265, label %_else266
_then265:
  %_id268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x261
  ret { i64, [0 x i64] }* %_id268
_else266:
  %_id269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y262
  ret { i64, [0 x i64] }* %_id269
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x223 = alloca { i64, [0 x i64] }*
  %_i226 = alloca i64
  %_y238 = alloca { i64, [0 x i64] }*
  %_i241 = alloca i64
  %_argc221 = alloca i64
  store i64 %argc, i64* %_argc221
  %_argv222 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv222
  %_raw_array224 = call i64* @oat_alloc_array(i64 3)
  %_array225 = bitcast i64* %_raw_array224 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array225, { i64, [0 x i64] }** %_x223
  store i64 0, i64* %_i226
  br label %_start229
_start229:
  %_id228 = load i64, i64* %_i226
  %_bop227 = icmp slt i64 %_id228, 3
  br i1 %_bop227, label %_body230, label %_end231
_body230:
  %_id232 = load i64, i64* %_i226
  %_id233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x223
  %_id234 = load i64, i64* %_i226
  %_index_ptr235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id233, i32 0, i32 1, i64 %_id234
  store i64 %_id232, i64* %_index_ptr235
  %_id237 = load i64, i64* %_i226
  %_bop236 = add i64 %_id237, 1
  store i64 %_bop236, i64* %_i226
  br label %_start229
_end231:
  %_raw_array239 = call i64* @oat_alloc_array(i64 3)
  %_array240 = bitcast i64* %_raw_array239 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array240, { i64, [0 x i64] }** %_y238
  store i64 0, i64* %_i241
  br label %_start244
_start244:
  %_id243 = load i64, i64* %_i241
  %_bop242 = icmp slt i64 %_id243, 3
  br i1 %_bop242, label %_body245, label %_end246
_body245:
  %_id248 = load i64, i64* %_i241
  %_bop247 = add i64 %_id248, 3
  %_id249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y238
  %_id250 = load i64, i64* %_i241
  %_index_ptr251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id249, i32 0, i32 1, i64 %_id250
  store i64 %_bop247, i64* %_index_ptr251
  %_id253 = load i64, i64* %_i241
  %_bop252 = add i64 %_id253, 1
  store i64 %_bop252, i64* %_i241
  br label %_start244
_end246:
  %_id254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x223
  %_id255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y238
  %_Call_retval256 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id254, { i64, [0 x i64] }* %_id255, i1 1)
  %_index_ptr257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval256, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr257
  %_id258 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x223
  %_index_ptr259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id258, i32 0, i32 1, i32 0
  %_idx_tmp260 = load i64, i64* %_index_ptr259
  ret i64 %_idx_tmp260
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
