; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b413 = alloca { i64, [0 x i1] }*
  %_i418 = alloca i64
  %_argc411 = alloca i64
  store i64 %argc, i64* %_argc411
  %_argv412 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv412
  %_raw_array414 = call i64* @oat_alloc_array(i64 2)
  %_array415 = bitcast i64* %_raw_array414 to { i64, [0 x i1] }*
  %_CArr_elem_1417 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array415, i32 0, i32 1, i32 1
  store i1 0, i1* %_CArr_elem_1417
  %_CArr_elem_0416 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array415, i32 0, i32 1, i32 0
  store i1 1, i1* %_CArr_elem_0416
  store { i64, [0 x i1] }* %_array415, { i64, [0 x i1] }** %_b413
  store i64 0, i64* %_i418
  %_id419 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b413
  %_index_ptr420 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_id419, i32 0, i32 1, i32 0
  %_idx_tmp421 = load i1, i1* %_index_ptr420
  br i1 %_idx_tmp421, label %_then422, label %_else423
_then422:
  store i64 1, i64* %_i418
  br label %_end424
_else423:
  br label %_end424
_end424:
  %_id425 = load i64, i64* %_i418
  ret i64 %_id425
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
