; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_id1925 = load i64, i64* @a
  %_bop1924 = add i64 %_id1925, 1
  store i64 %_bop1924, i64* @a
  %_id1926 = load i64, i64* @a
  ret i64 %_id1926
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %b = alloca { i64, [0 x i64] }*
  %_argc1906 = alloca i64
  store i64 %argc, i64* %_argc1906
  %_argv1907 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1907
  %_Call_retval1908 = call i64 @f()
  %_raw_array1909 = call i64* @oat_alloc_array(i64 %_Call_retval1908)
  %_array1910 = bitcast i64* %_raw_array1909 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1910, { i64, [0 x i64] }** %b
  %_id1911 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_index_ptr1912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1911, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr1912
  %_id1913 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_index_ptr1914 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1913, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr1914
  %_id1917 = load i64, i64* @a
  %_id1918 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_index_ptr1919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1918, i32 0, i32 1, i32 0
  %_idx_tmp1920 = load i64, i64* %_index_ptr1919
  %_bop1916 = add i64 %_id1917, %_idx_tmp1920
  %_id1921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %b
  %_index_ptr1922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id1921, i32 0, i32 1, i32 1
  %_idx_tmp1923 = load i64, i64* %_index_ptr1922
  %_bop1915 = add i64 %_bop1916, %_idx_tmp1923
  ret i64 %_bop1915
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
