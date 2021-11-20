; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc497 = alloca i64
  store i64 %argc, i64* %_argc497
  %_argv498 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv498
  %_x499 = alloca { i64, [0 x i64] }*
  %_503 = alloca i64
  store i64 3, i64* %_503
  %_NewArr501 = load i64, i64* %_503
  %_raw_array504 = call i64* @oat_alloc_array(i64 %_NewArr501)
  %_array505 = bitcast i64* %_raw_array504 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_decl506, { i64, [0 x i64] }** %_x499
  %_assn511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x499
  store { i64, [0 x i64] }* %_assn511, { i64, [0 x i64] }** @arr
  %_516 = alloca i64
  store i64 2, i64* %_516
  %_index_ptr517 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x499, i32 0, i32 1, i64 %_516
  %_519 = alloca i64
  store i64 3, i64* %_519
  store i64 %_519, i64* %_index_ptr517
  %_524 = alloca i64
  store i64 2, i64* %_524
  %_index_ptr525 = getelementptr { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x499, i32 0, i32 1, i64 %_524
  %_ret526 = load i64, i64* %_index_ptr525
  ret i64 %_ret526
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
