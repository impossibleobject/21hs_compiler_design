; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_garr203 to { i64, [0 x i64] }*)
@_garr203 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x194 = alloca { i64, [0 x i64] }*
  %_argc192 = alloca i64
  store i64 %argc, i64* %_argc192
  %_argv193 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv193
  %_raw_array195 = call i64* @oat_alloc_array(i64 3)
  %_array196 = bitcast i64* %_raw_array195 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array196, { i64, [0 x i64] }** %_x194
  %_id197 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x194
  store { i64, [0 x i64] }* %_id197, { i64, [0 x i64] }** @arr
  %_id198 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x194
  %_index_ptr199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id198, i32 0, i32 1, i32 2
  store i64 3, i64* %_index_ptr199
  %_id200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id200, i32 0, i32 1, i32 2
  %_idx_tmp202 = load i64, i64* %_index_ptr201
  ret i64 %_idx_tmp202
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
