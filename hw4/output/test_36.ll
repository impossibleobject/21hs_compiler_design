; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2658 = alloca i64
  store i64 %argc, i64* %_argc2658
  %_argv2659 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2659
  %_a2660 = alloca { i64, [0 x i64] }*
  %_str2670 = alloca i8*
  store { i64, [0 x i64] }* %_array2663, { i64, [0 x i64] }** %_a2660
  %_raw_array2662 = call i64* @oat_alloc_array(i64 3)
  %_array2663 = bitcast i64* %_raw_array2662 to { i64, [0 x i64] }*
  %_2669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 2
  store i64 110, i64* %_2669
  %_2668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 1
  store i64 110, i64* %_2668
  %_2667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2663, i32 0, i32 1, i32 0
  store i64 110, i64* %_2667
  store i8* %_retval2674, i8** %_str2670
  %_2673 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2660
  %_retval2674 = call i8* @string_of_array({ i64, [0 x i64] }* %_2673)
  %_2677 = load i8*, i8** %_str2670
  call void @print_string(i8* %_2677)
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
