; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_324 = global i64 1
@_325 = global i64 2
@_326 = global i64 3
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_321 = global i64 4
@_322 = global i64 5
@_323 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x327 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x327
  %_y328 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y328
  %_b329 = alloca i1
  store i1 %b, i1* %_b329
  %_id330 = load i1, i1* %_b329
  br i1 %_id330, label %_then331, label %_else332
_then331:
  %_id334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x327
  ret { i64, [0 x i64] }* %_id334
_else332:
  %_id336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y328
  ret { i64, [0 x i64] }* %_id336
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc312 = alloca i64
  store i64 %argc, i64* %_argc312
  %_argv313 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv313
  %_id314 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_id315 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @y
  %_Call_retval316 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }** %_id314, { i64, [3 x i64] }** %_id315, i1 1)
  %_index_ptr317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval316, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr317
  %_id318 = load { i64, [3 x i64] }, { i64, [3 x i64] }* @x
  %_index_ptr319 = getelementptr { i64, [3 x i64] }*, { i64, [3 x i64] }** %_id318, i32 0, i32 1, i32 0
  %_320 = load i64, i64* %_index_ptr319
  ret i64 %_320
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
