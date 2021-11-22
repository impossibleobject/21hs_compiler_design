; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr260 to { i64, [0 x i64] }*)
@_garr260 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_garr259 to { i64, [0 x i64] }*)
@_garr259 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

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
  %_argc250 = alloca i64
  store i64 %argc, i64* %_argc250
  %_argv251 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv251
  %_id252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id253 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_Call_retval254 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id252, { i64, [0 x i64] }* %_id253, i1 1)
  %_index_ptr255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval254, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr255
  %_id256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_index_ptr257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id256, i32 0, i32 1, i32 0
  %_idx_tmp258 = load i64, i64* %_index_ptr257
  ret i64 %_idx_tmp258
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
