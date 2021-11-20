; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc403 = alloca i64
  store i64 %argc, i64* %_argc403
  %_argv404 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv404
  %_x405 = alloca { i64, [0 x i64] }*
  store i64 3, i64* %_408
  %_raw_array409 = call i64* @oat_alloc_array(i64 %_408)
  %_array410 = bitcast i64* %_raw_array409 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array410, { i64, [0 x i64] }** %_x405
  %_414 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x405
  store { i64, [0 x i64] }* %_414, { i64, [0 x i64] }** @arr
  %_417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x405
  store i64 2, i64* %_419
  %_index_ptr420 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_417, i32 0, i32 1, i64 %_419
  store i64 3, i64* %_422
  store i64 %_422, i64* %_index_ptr420
  %_425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_414
  store i64 2, i64* %_427
  %_index_ptr428 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_425, i32 0, i32 1, i64 %_427
  %_429 = load i64, i64* %_index_ptr428
  ret i64 %_429
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
