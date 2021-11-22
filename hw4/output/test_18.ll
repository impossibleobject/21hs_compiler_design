; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x266 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x266
  %_y267 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y267
  %_b268 = alloca i1
  store i1 %b, i1* %_b268
  %_id269 = load i1*, i1** %_b268
  br i1 %_id269, label %_then270, label %_else271
_then270:
  %_id273 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_x266
  ret { i64, [0 x i64] }* %_id273
_else271:
  %_id274 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_y267
  ret { i64, [0 x i64] }* %_id274
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc226 = alloca i64
  store i64 %argc, i64* %_argc226
  %_argv227 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv227
  %_x228 = alloca { i64, [0 x i64] }*
  %_i231 = alloca i64
  %_y243 = alloca { i64, [0 x i64] }*
  %_i246 = alloca i64
  %_raw_array229 = call i64* @oat_alloc_array(i64 3)
  %_array230 = bitcast i64* %_raw_array229 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array230, { i64, [0 x i64] }** %_x228
  store i64 0, i64* %_i231
  br label %_start234
_start234:
  %_id233 = load i64, i64* %_i231
  %_bop232 = icmp slt i64 %_id233, 3
  br i1 %_bop232, label %_body235, label %_end236
_body235:
  %_id237 = load i64, i64* %_i231
  %_id238 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x228
  %_id239 = load i64, i64* %_i231
  %_index_ptr240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id238, i32 0, i32 1, i64 %_id239
  store i64 %_id237, i64* %_index_ptr240
  %_id242 = load i64, i64* %_i231
  %_bop241 = add i64 %_id242, 1
  store i64 %_bop241, i64* %_i231
  br label %_start234
_end236:
  %_raw_array244 = call i64* @oat_alloc_array(i64 3)
  %_array245 = bitcast i64* %_raw_array244 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array245, { i64, [0 x i64] }** %_y243
  store i64 0, i64* %_i246
  br label %_start249
_start249:
  %_id248 = load i64, i64* %_i246
  %_bop247 = icmp slt i64 %_id248, 3
  br i1 %_bop247, label %_body250, label %_end251
_body250:
  %_id253 = load i64, i64* %_i246
  %_bop252 = add i64 %_id253, 3
  %_id254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y243
  %_id255 = load i64, i64* %_i246
  %_index_ptr256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id254, i32 0, i32 1, i64 %_id255
  store i64 %_bop252, i64* %_index_ptr256
  %_id258 = load i64, i64* %_i246
  %_bop257 = add i64 %_id258, 1
  store i64 %_bop257, i64* %_i246
  br label %_start249
_end251:
  %_id259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x228
  %_id260 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y243
  %_Call_retval261 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id259, { i64, [0 x i64] }* %_id260, i1 1)
  %_index_ptr262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval261, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr262
  %_id263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x228
  %_index_ptr264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id263, i32 0, i32 1, i32 0
  %_idx_tmp265 = load i64, i64* %_index_ptr264
  ret i64 %_idx_tmp265
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
