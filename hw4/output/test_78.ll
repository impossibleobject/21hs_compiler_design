; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %arr1 = alloca { i64, [0 x i64] }*
  %str = alloca i8*
  %arr2 = alloca { i64, [0 x i64] }*
  %s = alloca i64
  %i = alloca i64
  %_argc2001 = alloca i64
  store i64 %argc, i64* %_argc2001
  %_argv2002 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2002
  %_raw_array2003 = call i64* @oat_alloc_array(i64 5)
  %_array2004 = bitcast i64* %_raw_array2003 to { i64, [0 x i64] }*
  %_CArr_elem_42009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 4
  store i64 115, i64* %_CArr_elem_42009
  %_CArr_elem_32008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 3
  store i64 114, i64* %_CArr_elem_32008
  %_CArr_elem_22007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 2
  store i64 113, i64* %_CArr_elem_22007
  %_CArr_elem_12006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 1
  store i64 112, i64* %_CArr_elem_12006
  %_CArr_elem_02005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2004, i32 0, i32 1, i32 0
  store i64 111, i64* %_CArr_elem_02005
  store { i64, [0 x i64] }* %_array2004, { i64, [0 x i64] }** %arr1
  %_id2010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr1
  %_Call_retval2011 = call i8* @string_of_array({ i64, [0 x i64] }* %_id2010)
  store i8* %_Call_retval2011, i8** %str
  %_id2012 = load i8*, i8** %str
  %_Call_retval2013 = call { i64, [0 x i64] }* @array_of_string(i8* %_id2012)
  store { i64, [0 x i64] }* %_Call_retval2013, { i64, [0 x i64] }** %arr2
  store i64 0, i64* %s
  store i64 0, i64* %i
  br label %_start2016
_start2016:
  %_id2015 = load i64, i64* %i
  %_bop2014 = icmp slt i64 %_id2015, 5
  br i1 %_bop2014, label %_body2017, label %_end2018
_body2017:
  %_id2020 = load i64, i64* %s
  %_id2021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %arr2
  %_id2022 = load i64, i64* %i
  %_index_ptr2023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id2021, i32 0, i32 1, i64 %_id2022
  %_idx_tmp2024 = load i64, i64* %_index_ptr2023
  %_bop2019 = add i64 %_id2020, %_idx_tmp2024
  store i64 %_bop2019, i64* %s
  %_id2026 = load i64, i64* %i
  %_bop2025 = add i64 %_id2026, 1
  store i64 %_bop2025, i64* %i
  br label %_start2016
_end2018:
  %_id2027 = load i64, i64* %s
  call void @print_int(i64 %_id2027)
  %_id2029 = load i64, i64* %s
  ret i64 %_id2029
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
