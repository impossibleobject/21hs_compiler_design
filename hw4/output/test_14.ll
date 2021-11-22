; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc195 = alloca i64
  store i64 %argc, i64* %_argc195
  %_argv196 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv196
  %_x197 = alloca { i64, [0 x i64] }*
  %_raw_array198 = call i64* @oat_alloc_array(i64 3)
  %_array199 = bitcast i64* %_raw_array198 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array199, { i64, [0 x i64] }** %_x197
  %_id200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x197
  store { i64, [0 x i64] }* %_id200, { i64, [0 x i64] }** @arr
  %_id201 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x197
  %_index_ptr202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id201, i32 0, i32 1, i32 2
  store i64 3, i64* %_index_ptr202
  %_id203 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id203, i32 0, i32 1, i32 2
  %_idx_tmp205 = load i64, i64* %_index_ptr204
  ret i64 %_idx_tmp205
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
