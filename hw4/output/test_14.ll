; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc394 = alloca i64
  store i64 %argc, i64* %_argc394
  %_argv395 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv395
  %_x396 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array400, { i64, [0 x i64] }** %_x396
  %_raw_array399 = call i64* @oat_alloc_array(i64 3)
  %_array400 = bitcast i64* %_raw_array399 to { i64, [0 x i64] }*
  %_id404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x396
  store { i64, [0 x i64] }** %_id404, { i64, [0 x i64] }*** @arr
  %_id407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x396
  %_index_ptr409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id407, i32 0, i32 1, i32 2
  store i64 3, i64* %_index_ptr409
  %_id413 = load { i64, [0 x i64] }, { i64, [0 x i64] }* %_id404
  %_index_ptr415 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id413, i32 0, i32 1, i32 2
  %_416 = load i64, i64* %_index_ptr415
  ret i64 %_416
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
