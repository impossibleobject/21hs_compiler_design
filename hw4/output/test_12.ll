; generated from: oatprograms/path3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_461 = global i64 1
@_462 = global i64 2
@_463 = global i64 3
@_464 = global i64 4

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc452 = alloca i64
  store i64 %argc, i64* %_argc452
  %_args453 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args453
  %_456 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr
  store i64 2, i64* %_458
  %_index_ptr459 = getelementptr { i64, [4 x i64] }*, { i64, [4 x i64] }** %_456, i32 0, i32 1, i64 %_458
  %_460 = load i64, i64* %_index_ptr459
  ret i64 %_460
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
