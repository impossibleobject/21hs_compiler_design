; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_287 = global i64 1
@_288 = global i64 2
@_289 = global i64 3
@y = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_284 = global i64 4
@_285 = global i64 5
@_286 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x290 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x290
  %_y291 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y291
  %_b292 = alloca i1
  store i1 %b, i1* %_b292
  %_id293 = load i1*, i1** %_b292
  br i1 %_id293, label %_then294, label %_else295
_then294:
  %_id297 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_x290
  ret { i64, [0 x i64] }* %_id297
_else295:
  %_id298 = load { i64, [0 x i64] }**, { i64, [0 x i64] }*** %_y291
  ret { i64, [0 x i64] }* %_id298
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc275 = alloca i64
  store i64 %argc, i64* %_argc275
  %_argv276 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv276
  %_id277 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_id278 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_Call_retval279 = call { i64, [0 x i64] }* @f({ i64, [3 x i64] }* %_id277, { i64, [3 x i64] }* %_id278, i1 1)
  %_index_ptr280 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_Call_retval279, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr280
  %_id281 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_index_ptr282 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_id281, i32 0, i32 1, i32 0
  %_idx_tmp283 = load i64, i64* %_index_ptr282
  ret i64 %_idx_tmp283
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
