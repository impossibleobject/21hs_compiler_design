; generated from: hw5programs/compile_struct_fptr.oat
target triple = "x86_64-unknown-linux"
%S = type { i64, i64, i64 (i64, i64)* }

define i64 @add(i64 %_x6891, i64 %_y6888) {
  %_x6892 = alloca i64
  %_y6889 = alloca i64
  store i64 %_x6891, i64* %_x6892
  store i64 %_y6888, i64* %_y6889
  %_x6894 = load i64, i64* %_x6892
  %_y6895 = load i64, i64* %_y6889
  %_bop6896 = add i64 %_x6894, %_y6895
  ret i64 %_bop6896
}

define i64 @program(i64 %_argc6865, { i64, [0 x i8*] }* %_argv6862) {
  %_x6876 = alloca %S*
  %_raw_struct6868 = call i64* @oat_malloc(i64 24)
  %_struct6869 = bitcast i64* %_raw_struct6868 to %S*
  %_ind6870 = getelementptr %S, %S* %_struct6869, i32 0, i32 0
  store i64 3, i64* %_ind6870
  %_ind6872 = getelementptr %S, %S* %_struct6869, i32 0, i32 1
  store i64 4, i64* %_ind6872
  %_ind6874 = getelementptr %S, %S* %_struct6869, i32 0, i32 2
  store i64 (i64, i64)* @add, i64 (i64, i64)** %_ind6874
  store %S* %_struct6869, %S** %_x6876
  %_x6878 = load %S*, %S** %_x6876
  %_index6879 = getelementptr %S, %S* %_x6878, i32 0, i32 2
  %_proj6880 = load i64 (i64, i64)*, i64 (i64, i64)** %_index6879
  %_x6881 = load %S*, %S** %_x6876
  %_index6882 = getelementptr %S, %S* %_x6881, i32 0, i32 1
  %_proj6883 = load i64, i64* %_index6882
  %_x6884 = load %S*, %S** %_x6876
  %_index6885 = getelementptr %S, %S* %_x6884, i32 0, i32 0
  %_proj6886 = load i64, i64* %_index6885
  %_result6887 = call i64 %_proj6880(i64 %_proj6886, i64 %_proj6883)
  ret i64 %_result6887
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
