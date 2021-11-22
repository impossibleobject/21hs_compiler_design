; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %b = alloca { i64, [0 x i1] }*
  %i = alloca i64
  %_argc379 = alloca i64
  store i64 %argc, i64* %_argc379
  %_argv380 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv380
  %_raw_array381 = call i64* @oat_alloc_array(i64 2)
  %_array382 = bitcast i64* %_raw_array381 to { i64, [0 x i1] }*
  %_CArr_elem_1384 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array382, i32 0, i32 1, i32 1
  store i1 0, i1* %_CArr_elem_1384
  %_CArr_elem_0383 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array382, i32 0, i32 1, i32 0
  store i1 1, i1* %_CArr_elem_0383
  store { i64, [0 x i1] }* %_array382, { i64, [0 x i1] }** %b
  store i64 0, i64* %i
  %_id385 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %b
  %_index_ptr386 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id385, i32 0, i32 1, i32 0
  %_idx_tmp387 = load i1, i1* %_index_ptr386
  br i1 %_idx_tmp387, label %_then388, label %_else389
_then388:
  store i64 1, i64* %i
  br label %_end390
_else389:
  br label %_end390
_end390:
  %_id391 = load i64, i64* %i
  ret i64 %_id391
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
