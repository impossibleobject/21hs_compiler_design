; generated from: oatprograms/path3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_garr220 to { i64, [0 x i64] }*)
@_garr220 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc215 = alloca i64
  store i64 %argc, i64* %_argc215
  %_args216 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args216
  %_id217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id217, i32 0, i32 1, i32 2
  %_idx_tmp219 = load i64, i64* %_index_ptr218
  ret i64 %_idx_tmp219
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
