; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr281 to { i64, [0 x i64] }*)
@_garr281 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr280 to { i64, [0 x i64] }*)
@_garr280 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x282 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x282
  %_y283 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y283
  %_b284 = alloca i1
  store i1 %b, i1* %_b284
  %_id285 = load i1, i1* %_b284
  br i1 %_id285, label %_then286, label %_else287
_then286:
  %_id289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x282
  ret { i64, [0 x i64] }* %_id289
_else287:
  %_id290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y283
  ret { i64, [0 x i64] }* %_id290
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc271 = alloca i64
  store i64 %argc, i64* %_argc271
  %_argv272 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv272
  %_id274 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_id273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_Call_retval275 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id273, { i64, [0 x i64] }* %_id274, i1 1)
  %_index_ptr276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval275, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr276
  %_id277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_index_ptr278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id277, i32 0, i32 1, i32 0
  %_idx_tmp279 = load i64, i64* %_index_ptr278
  ret i64 %_idx_tmp279
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
