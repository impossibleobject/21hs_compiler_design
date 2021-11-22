; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %i = alloca { i64, [0 x i64] }*
  %_argc327 = alloca i64
  store i64 %argc, i64* %_argc327
  %_argv328 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv328
  %_raw_array329 = call i64* @oat_alloc_array(i64 2)
  %_array330 = bitcast i64* %_raw_array329 to { i64, [0 x i64] }*
  %_CArr_elem_1332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array330, i32 0, i32 1, i32 1
  store i64 0, i64* %_CArr_elem_1332
  %_CArr_elem_0331 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array330, i32 0, i32 1, i32 0
  store i64 99, i64* %_CArr_elem_0331
  store { i64, [0 x i64] }* %_array330, { i64, [0 x i64] }** %i
  %_id333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %i
  %_index_ptr334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id333, i32 0, i32 1, i32 0
  %_idx_tmp335 = load i64, i64* %_index_ptr334
  ret i64 %_idx_tmp335
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
