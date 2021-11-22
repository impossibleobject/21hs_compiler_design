; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_garr190 to { i64, [0 x i64] }*)
@_garr190 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %x = alloca { i64, [0 x i64] }*
  %_argc180 = alloca i64
  store i64 %argc, i64* %_argc180
  %_argv181 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv181
  %_raw_array182 = call i64* @oat_alloc_array(i64 3)
  %_array183 = bitcast i64* %_raw_array182 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array183, { i64, [0 x i64] }** %x
  %_id184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  store { i64, [0 x i64] }* %_id184, { i64, [0 x i64] }** @arr
  %_id185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %x
  %_index_ptr186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id185, i32 0, i32 1, i32 2
  store i64 3, i64* %_index_ptr186
  %_id187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id187, i32 0, i32 1, i32 2
  %_idx_tmp189 = load i64, i64* %_index_ptr188
  ret i64 %_idx_tmp189
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
