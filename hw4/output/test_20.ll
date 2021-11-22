; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x262 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x262
  %_y263 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y263
  %_b264 = alloca i1
  store i1 %b, i1* %_b264
  %_id265 = load i1, i1* %_b264
  br i1 %_id265, label %_then266, label %_else267
_then266:
  %_id269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x262
  ret { i64, [0 x i64] }* %_id269
_else267:
  %_id270 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y263
  ret { i64, [0 x i64] }* %_id270
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x224 = alloca { i64, [0 x i64] }*
  %_i227 = alloca i64
  %_y239 = alloca { i64, [0 x i64] }*
  %_i242 = alloca i64
  %_argc222 = alloca i64
  store i64 %argc, i64* %_argc222
  %_argv223 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv223
  %_raw_array225 = call i64* @oat_alloc_array(i64 3)
  %_array226 = bitcast i64* %_raw_array225 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array226, { i64, [0 x i64] }** %_x224
  store i64 0, i64* %_i227
  br label %_start230
_start230:
  %_id229 = load i64, i64* %_i227
  %_bop228 = icmp slt i64 %_id229, 3
  br i1 %_bop228, label %_body231, label %_end232
_body231:
  %_id233 = load i64, i64* %_i227
  %_id234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x224
  %_id235 = load i64, i64* %_i227
  %_index_ptr236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id234, i32 0, i32 1, i64 %_id235
  store i64 %_id233, i64* %_index_ptr236
  %_id238 = load i64, i64* %_i227
  %_bop237 = add i64 %_id238, 1
  store i64 %_bop237, i64* %_i227
  br label %_start230
_end232:
  %_raw_array240 = call i64* @oat_alloc_array(i64 3)
  %_array241 = bitcast i64* %_raw_array240 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array241, { i64, [0 x i64] }** %_y239
  store i64 0, i64* %_i242
  br label %_start245
_start245:
  %_id244 = load i64, i64* %_i242
  %_bop243 = icmp slt i64 %_id244, 3
  br i1 %_bop243, label %_body246, label %_end247
_body246:
  %_id249 = load i64, i64* %_i242
  %_bop248 = add i64 %_id249, 3
  %_id250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y239
  %_id251 = load i64, i64* %_i242
  %_index_ptr252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id250, i32 0, i32 1, i64 %_id251
  store i64 %_bop248, i64* %_index_ptr252
  %_id254 = load i64, i64* %_i242
  %_bop253 = add i64 %_id254, 1
  store i64 %_bop253, i64* %_i242
  br label %_start245
_end247:
  %_id256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y239
  %_id255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x224
  %_Call_retval257 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id255, { i64, [0 x i64] }* %_id256, i1 1)
  %_index_ptr258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval257, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr258
  %_id259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x224
  %_index_ptr260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id259, i32 0, i32 1, i32 0
  %_idx_tmp261 = load i64, i64* %_index_ptr260
  ret i64 %_idx_tmp261
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
