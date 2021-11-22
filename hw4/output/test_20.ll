; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x241 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x241
  %_y242 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y242
  %_b243 = alloca i1
  store i1 %b, i1* %_b243
  %_id244 = load i1, i1* %_b243
  br i1 %_id244, label %_then245, label %_else246
_then245:
  %_id248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x241
  ret { i64, [0 x i64] }* %_id248
_else246:
  %_id249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y242
  ret { i64, [0 x i64] }* %_id249
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %y = alloca { i64, [0 x i64] }*
  %i = alloca i64
  %_argc205 = alloca i64
  store i64 %argc, i64* %_argc205
  %_argv206 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv206
  %_raw_array207 = call i64* @oat_alloc_array(i64 3)
  %_array208 = bitcast i64* %_raw_array207 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array208, { i64, [0 x i64] }** %x
  store i64 0, i64* %i
  br label %_start211
_start211:
  %_id210 = load i64, i64* %i
  %_bop209 = icmp slt i64 %_id210, 3
  br i1 %_bop209, label %_body212, label %_end213
_body212:
  %_id214 = load i64, i64* %i
  %_id215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_id216 = load i64, i64* %i
  %_index_ptr217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id215, i32 0, i32 1, i64 %_id216
  store i64 %_id214, i64* %_index_ptr217
  %_id219 = load i64, i64* %i
  %_bop218 = add i64 %_id219, 1
  store i64 %_bop218, i64* %i
  br label %_start211
_end213:
  %_raw_array220 = call i64* @oat_alloc_array(i64 3)
  %_array221 = bitcast i64* %_raw_array220 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array221, { i64, [0 x i64] }** %y
  store i64 0, i64* %i
  br label %_start224
_start224:
  %_id223 = load i64, i64* %i
  %_bop222 = icmp slt i64 %_id223, 3
  br i1 %_bop222, label %_body225, label %_end226
_body225:
  %_id228 = load i64, i64* %i
  %_bop227 = add i64 %_id228, 3
  %_id229 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %y
  %_id230 = load i64, i64* %i
  %_index_ptr231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id229, i32 0, i32 1, i64 %_id230
  store i64 %_bop227, i64* %_index_ptr231
  %_id233 = load i64, i64* %i
  %_bop232 = add i64 %_id233, 1
  store i64 %_bop232, i64* %i
  br label %_start224
_end226:
  %_id234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_id235 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %y
  %_Call_retval236 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id234, { i64, [0 x i64] }* %_id235, i1 1)
  %_index_ptr237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval236, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr237
  %_id238 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_index_ptr239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id238, i32 0, i32 1, i32 0
  %_idx_tmp240 = load i64, i64* %_index_ptr239
  ret i64 %_idx_tmp240
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
