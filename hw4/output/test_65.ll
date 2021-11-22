; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_cstr_glb1335 = global [4 x i8] c"def\00"
@_cstr_glb1333 = global [4 x i8] c"abc\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %strs = alloca { i64, [0 x i8*] }*
  %_argc1328 = alloca i64
  store i64 %argc, i64* %_argc1328
  %_argv1329 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1329
  %_raw_array1330 = call i64* @oat_alloc_array(i64 2)
  %_array1331 = bitcast i64* %_raw_array1330 to { i64, [0 x i8*] }*
  %_cstr_loc1334 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1335, i32 0, i32 0
  %_CArr_elem_11337 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1331, i32 0, i32 1, i32 1
  store i8* %_cstr_loc1334, i8** %_CArr_elem_11337
  %_cstr_loc1332 = getelementptr [4 x i8], [4 x i8]* @_cstr_glb1333, i32 0, i32 0
  %_CArr_elem_01336 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1331, i32 0, i32 1, i32 0
  store i8* %_cstr_loc1332, i8** %_CArr_elem_01336
  store { i64, [0 x i8*] }* %_array1331, { i64, [0 x i8*] }** %strs
  %_idx_tmp1340 = load i8*, i8** %_index_ptr1339
  %_index_ptr1339 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id1338, i32 0, i32 1, i32 0
  %_id1338 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %strs
  call void @print_string(i8* %_idx_tmp1340)
  ret i64 0
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
